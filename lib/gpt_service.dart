// lib/gpt_service.dart

import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:flutter_dotenv/flutter_dotenv.dart';

class GPTService {
  final String _apiKey = dotenv.env['OPENAI_API_KEY'] ?? '';
  final String _botName;

  GPTService({required String botName}) : _botName = botName {
    print("GPTService initialized with botName: $_botName");
    print("Loaded API Key: ${_apiKey.isNotEmpty}");
  }

  Future<String> generateText(String prompt) async {
    if (_apiKey.isEmpty) {
      throw Exception('API 키가 설정되지 않았습니다.');
    }

    print("generateText called with prompt: $prompt");

    final url = Uri.parse('https://api.openai.com/v1/chat/completions');

    final headers = {
      'Content-Type': 'application/json',
      'Authorization': 'Bearer $_apiKey',
    };

    final body = jsonEncode({
      "model": "gpt-3.5-turbo",
      "messages": [
        {
          "role": "system",
          "content": "당신은 $_botName입니다. 친절하고 유용한 정보를 제공하는 고양이 챗봇입니다."
        },
        {"role": "user", "content": prompt}
      ],
      "max_tokens": 150,
      "temperature": 0.7,
    });

    int retryCount = 0;
    int maxRetries = 3;
    int delaySeconds = 2;

    while (retryCount < maxRetries) {
      try {
        print("Sending request to OpenAI API...");
        final response = await http.post(url, headers: headers, body: body);
        print("Received response: ${response.statusCode}");

        if (response.statusCode == 200) {
          final data = jsonDecode(response.body);
          if (data['choices'] != null && data['choices'].isNotEmpty) {
            String reply = data['choices'][0]['message']['content'].trim();
            print("API 응답: $reply");
            return reply;
          } else {
            throw Exception('응답에 선택지가 없습니다.');
          }
        } else if (response.statusCode == 401) {
          throw Exception('인증 오류: API 키가 잘못되었습니다.');
        } else if (response.statusCode == 429) {
          final errorData = jsonDecode(response.body);
          final errorMessage = errorData['error']['message'];
          throw Exception('요청 한도 초과: $errorMessage');
        } else {
          final errorData = jsonDecode(response.body);
          final errorMessage = errorData['error']['message'];
          throw Exception('텍스트 생성 실패: ${response.statusCode} $errorMessage');
        }
      } catch (e) {
        if (e.toString().contains('요청 한도 초과')) {
          retryCount++;
          print("요청 한도 초과. $delaySeconds 초 후에 다시 시도합니다... (재시도 $retryCount/$maxRetries)");
          await Future.delayed(Duration(seconds: delaySeconds));
          delaySeconds *= 2; // 지수 백오프
        } else {
          throw Exception('API 요청 실패: $e');
        }
      }
    }

    throw Exception('요청 한도 초과: 너무 많은 요청이 있습니다.');
  }
}
