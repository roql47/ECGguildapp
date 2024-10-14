import 'package:flutter/material.dart';
import 'dart:math'; // Random 클래스 사용

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // 샘플 퀴즈 질문 데이터
  final List<Map<String, dynamic>> quizQuestions = [
    {
      'image': 'assets/image1.png',
      'Answer': 'Rhythm A',
      'heartRate': 80,
      'prInterval': 160,
      'qrsDuration': 100,
      'axis': 0,
      'qtcb': 400,
      'qtcf': 420,
    },
    {
      'image': 'assets/image2.png',
      'Answer': 'Rhythm B',
      'heartRate': 100,
      'prInterval': 150,
      'qrsDuration': 110,
      'axis': -30,
      'qtcb': 390,
      'qtcf': 410,
    },
    // 추가 질문을 여기에 추가하세요
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Quiz App',
      theme: ThemeData(
        primarySwatch: Colors.teal,
      ),
      home: QuizDetailPage(quizQuestions: quizQuestions),
    );
  }
}

// 전체화면 이미지 뷰어 클래스 정의
class FullScreenImage extends StatefulWidget {
  final String imageAssetPath;

  FullScreenImage({required this.imageAssetPath});

  @override
  _FullScreenImageState createState() => _FullScreenImageState();
}

class _FullScreenImageState extends State<FullScreenImage> {
  final double rotationAngle = 90; // 초기 회전 각도 (90도)

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white, // 전체 화면 배경을 검은색으로 설정
      body: GestureDetector(
        onTap: () {
          Navigator.pop(context); // 이미지 클릭 시 이전 화면으로 돌아감
        },
        child: InteractiveViewer(
          panEnabled: true, // 드래그 가능
          scaleEnabled: true, // 확대/축소 가능
          minScale: 1.0, // 최소 배율
          maxScale: 4.0, // 최대 배율
          child: Center(
            child: Hero(
              tag: widget.imageAssetPath, // Hero 애니메이션을 위한 태그
              child: Transform.rotate(
                angle: rotationAngle * (pi / 180), // 90도로 회전
                child: Image.asset(
                  widget.imageAssetPath,
                  fit: BoxFit.contain, // 이미지가 화면에 맞게 조정됨
                  errorBuilder: (context, error, stackTrace) {
                    return Container(
                      color: Colors.grey,
                      child: Center(
                        child: Text(
                          'Image not found',
                          style: TextStyle(fontSize: 18, color: Colors.white),
                        ),
                      ),
                    );
                  },
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}

// 퀴즈 상세 페이지 클래스 정의
class QuizDetailPage extends StatefulWidget {
  final List<Map<String, dynamic>> quizQuestions;

  QuizDetailPage({required this.quizQuestions});

  @override
  _QuizDetailPageState createState() => _QuizDetailPageState();
}

class _QuizDetailPageState extends State<QuizDetailPage> {
  late Map<String, dynamic> selectedQuestion;
  late List<String> choices;
  late String correctAnswer;
  bool isLoading = true;

  @override
  void initState() {
    super.initState();
    generateRandomQuestion();
  }

  // 랜덤한 퀴즈 질문을 선택하는 함수
  void generateRandomQuestion() {
    Random random = Random();
    setState(() {
      selectedQuestion = widget.quizQuestions[random.nextInt(widget.quizQuestions.length)];
      correctAnswer = selectedQuestion['Answer'];

      // 정답 외의 오답을 추가하여 선택지 생성
      choices = [correctAnswer];
      for (var question in widget.quizQuestions) {
        if (question['Answer'] != correctAnswer &&
            !choices.contains(question['Answer']) &&
            choices.length < 4) {
          choices.add(question['Answer']);
        }
      }
      choices.shuffle(); // 선택지 섞기
      isLoading = false;
    });
  }

  // 사용자의 답변을 확인하는 함수
  void checkAnswer(String selectedAnswer) {
    if (selectedAnswer == correctAnswer) {
      showDialog(
        context: context,
        builder: (context) => AlertDialog(
          title: Text('🎉 정답입니다!', style: TextStyle(color: Colors.green)),
          content: Text('You selected the correct answer.', style: TextStyle(fontSize: 16)),
          actions: [
            TextButton(
              onPressed: () {
                Navigator.of(context).pop();
                setState(() {
                  isLoading = true;
                  generateRandomQuestion();
                });
              },
              child: Text('다음 문제', style: TextStyle(fontSize: 18, color: Colors.blue)),
            ),
          ],
        ),
      );
    } else {
      showDialog(
        context: context,
        builder: (context) => AlertDialog(
          title: Text('❌ 오답입니다!', style: TextStyle(color: Colors.red)),
          content: Text('The correct answer was $correctAnswer.', style: TextStyle(fontSize: 16)),
          actions: [
            TextButton(
              onPressed: () {
                Navigator.of(context).pop();
                setState(() {
                  isLoading = true;
                  generateRandomQuestion();
                });
              },
              child: Text('다음 문제', style: TextStyle(fontSize: 18, color: Colors.blue)),
            ),
          ],
        ),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Quiz Details', style: TextStyle(fontWeight: FontWeight.bold)),
        backgroundColor: Colors.teal,
      ),
      body: isLoading
          ? Center(child: CircularProgressIndicator())
          : SingleChildScrollView(
        child: Column(
          children: [
            // 이미지 섹션
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10.0),
              child: GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => FullScreenImage(
                        imageAssetPath: selectedQuestion['image'],
                      ),
                    ),
                  );
                },
                child: Hero(
                  tag: selectedQuestion['image'], // Hero 애니메이션을 위해 태그 추가
                  child: Image.asset(
                    selectedQuestion['image'],
                    height: 230, // 이미지 높이를 살짝 줄임
                    fit: BoxFit.contain,
                    errorBuilder: (context, error, stackTrace) {
                      return Container(
                        height: 230,
                        color: Colors.grey,
                        child: Center(
                          child: Text(
                            'Image not found',
                            style: TextStyle(fontSize: 18, color: Colors.white),
                          ),
                        ),
                      );
                    },
                  ),
                ),
              ),
            ),
            SizedBox(height: 5), // 간격을 5으로 설정

            // 문제의 세부 정보 (2줄 3열 배열)
            Padding(
              padding: const EdgeInsets.all(12.0), // 패딩을 약간 줄임
              child: Card(
                elevation: 5,
                shadowColor: Colors.teal.withOpacity(0.4),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(12.0), // 내부 패딩을 줄임
                  child: Column(
                    children: [
                      // 첫 번째 행
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          _buildInfoTile('Heart Rate', '${selectedQuestion['heartRate']} bpm'),
                          _buildInfoTile('PR Interval', '${selectedQuestion['prInterval']} ms'),
                        ],
                      ),
                      SizedBox(height: 10), // 간격을 10으로 설정
                      Divider(),
                      // 두 번째 행
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          _buildInfoTile('QRS Duration', '${selectedQuestion['qrsDuration']} ms'),
                          _buildInfoTile('Axis', '${selectedQuestion['axis']}°'),
                        ],
                      ),
                      SizedBox(height: 10),
                      Divider(),
                      // 세 번째 행
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          _buildInfoTile('QTcB Time', '${selectedQuestion['qtcb']} ms'),
                          _buildInfoTile('QTcF Time', '${selectedQuestion['qtcf']} ms'),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),
            SizedBox(height: 5), // 간격을 5으로 설정

            // 객관식 보기 섹션
            Padding(
              padding: const EdgeInsets.all(7.0), // 패딩을 약간 줄임
              child: Column(
                children: [
                  Text(
                    'Select the correct rhythm:',
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold), // 폰트 크기 줄임
                  ),
                  SizedBox(height: 5), // 간격을 5으로 설정
                  for (String choice in choices)
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 6.0), // 세로 간격을 줄임
                      child: GestureDetector(
                        onTap: () => checkAnswer(choice),
                        child: Card(
                          elevation: 8,
                          shadowColor: Colors.teal.withOpacity(0.5),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(15),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(14.0), // 내부 패딩을 줄임
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  choice,
                                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
                                ),
                                Icon(Icons.chevron_right, size: 22, color: Colors.grey),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  // 정보 타일을 생성하는 함수
  Widget _buildInfoTile(String title, String value) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
          style: TextStyle(fontSize: 13, fontWeight: FontWeight.w500, color: Colors.grey), // 폰트 크기를 줄임
        ),
        SizedBox(height: 3), // 간격을 줄임
        Text(
          value,
          style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold), // 폰트 크기를 줄임
        ),
      ],
    );
  }
}
