// lib/pages/gpt_page.dart

import 'package:flutter/material.dart';
import 'package:your_project_name/gpt_service.dart'; // 실제 프로젝트 이름으로 변경
import 'dart:async'; // Timer를 사용하기 위해 추가

class GPTPage extends StatefulWidget {
  @override
  _GPTPageState createState() => _GPTPageState();
}

class _GPTPageState extends State<GPTPage> {
  final TextEditingController _controller = TextEditingController();
  late GPTService _gptService;
  List<Message> _messages = []; // 메시지를 저장할 리스트
  bool _isLoading = false;
  bool _isRequestInProgress = false; // 동시 요청 제한을 위한 플래그
  Timer? _debounce; // Debounce를 위한 Timer

  final String _botName = "광산고양이"; // 챗봇 이름

  @override
  void initState() {
    super.initState();
    _gptService = GPTService(botName: _botName);
  }

  @override
  void dispose() {
    _debounce?.cancel();
    _controller.dispose();
    super.dispose();
  }

  void _sendPrompt() async {
    if (_isRequestInProgress) {
      print("이미 요청 중입니다."); // 중복 요청 시 로그
      return; // 이미 요청 중이면 무시
    }
    _isRequestInProgress = true;

    final prompt = _controller.text.trim();
    if (prompt.isEmpty) {
      _isRequestInProgress = false;
      print("입력된 질문이 없습니다."); // 빈 질문 시 로그
      return;
    }

    // 사용자의 메시지를 리스트에 추가
    _addMessage(prompt, true);
    _controller.clear(); // 입력창 비우기

    setState(() {
      _isLoading = true;
    });

    print("질문을 전송합니다: $prompt"); // 질문 전송 로그

    try {
      final result = await _gptService.generateText(prompt);
      // GPT의 응답 메시지를 리스트에 추가
      _addMessage(result, false);
    } catch (e) {
      if (e.toString().contains('요청 한도 초과')) {
        _addMessage('요청 한도 초과: 잠시 후 다시 시도해주세요.', false);
      } else if (e.toString().contains('인증 오류')) {
        _addMessage('인증 오류: API 키를 확인해주세요.', false);
      } else {
        _addMessage('에러 발생: $e', false);
      }

      // 에러를 콘솔에 출력
      print("에러 발생: $e");
    } finally {
      setState(() {
        _isLoading = false;
      });
      _isRequestInProgress = false;
    }
  }

  void _addMessage(String text, bool isUserMessage) {
    setState(() {
      _messages.add(Message(text: text, isUserMessage: isUserMessage));
    });

    // 메시지가 추가될 때마다 자동 스크롤
    Future.microtask(() {
      if (_scrollController.hasClients) {
        _scrollController.animateTo(
          _scrollController.position.maxScrollExtent,
          duration: Duration(milliseconds: 300),
          curve: Curves.easeOut,
        );
      }
    });
  }

  final ScrollController _scrollController = ScrollController();

  void _onTextChanged(String text) {
    if (_debounce?.isActive ?? false) _debounce!.cancel();
    _debounce = Timer(const Duration(milliseconds: 3000), () { // Debounce 시간을 1000ms로 증가
      if (text.isNotEmpty) {
        _sendPrompt();
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('챗봇 - $_botName'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            Expanded(
              child: _messages.isEmpty
                  ? Center(child: Text('챗봇과 대화를 시작하세요!'))
                  : ListView.builder(
                controller: _scrollController,
                itemCount: _messages.length,
                itemBuilder: (context, index) {
                  return _buildMessageBubble(_messages[index]);
                },
              ),
            ),
            if (_isLoading)
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 10.0),
                child: CircularProgressIndicator(),
              )
            else
              Row(
                children: [
                  Expanded(
                    child: TextField(
                      controller: _controller,
                      decoration: InputDecoration(
                        labelText: '질문을 입력하세요',
                        border: OutlineInputBorder(),
                      ),
                      minLines: 1,
                      maxLines: 3,
                      onChanged: _onTextChanged, // Debounce 적용
                      onSubmitted: (_) => _sendPrompt(),
                    ),
                  ),
                  SizedBox(width: 10),
                  ElevatedButton(
                    onPressed: _sendPrompt,
                    child: Text('전송'),
                  ),
                ],
              ),
          ],
        ),
      ),
    );
  }

  Widget _buildMessageBubble(Message message) {
    return Align(
      alignment:
      message.isUserMessage ? Alignment.centerRight : Alignment.centerLeft,
      child: Container(
        margin: const EdgeInsets.symmetric(vertical: 5.0),
        padding: const EdgeInsets.all(10.0),
        constraints:
        BoxConstraints(maxWidth: MediaQuery.of(context).size.width * 0.7),
        decoration: BoxDecoration(
          color: message.isUserMessage ? Colors.blue[200] : Colors.grey[300],
          borderRadius: BorderRadius.circular(10.0),
        ),
        child: Text(
          message.text,
          style: TextStyle(fontSize: 16),
        ),
      ),
    );
  }
}

// 메시지 데이터 모델
class Message {
  final String text;
  final bool isUserMessage;

  Message({required this.text, required this.isUserMessage});
}
