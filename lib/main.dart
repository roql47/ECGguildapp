// lib/main.dart

import 'package:flutter/material.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart'; // flutter_dotenv 패키지 임포트
import 'pages/ecg_classification_page.dart';
import 'pages/ecg_guide_page.dart';
import 'pages/cases_page.dart';
import 'pages/quiz_page.dart'; // Quiz 페이지 추가
import 'pages/drug_page.dart'; // Drug 페이지 추가
import 'pages/gpt_page.dart'; // GPT 페이지 추가
import 'pages/splash_screen.dart'; // 스플래시 화면 추가
import 'widgets/terms_and_conditions.dart'; // 약관 팝업 기능을 불러오기

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized(); // Flutter 바인딩 초기화
  try {
    await dotenv.load(fileName: "config.env"); // config.env 파일 비동기 로드
    // 보안상 API 키 출력 제거 권장
    // print("API Key: ${dotenv.env['OPENAI_API_KEY']}"); // 임시 출력 (디버깅용)
  } catch (e) {
    print("Failed to load config.env: $e"); // 오류 발생 시 출력
  }
  runApp(ECGApp());
}

class ECGApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'ECG App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: SplashScreen(), // 앱 시작 시 스플래시 화면으로 시작
    );
  }
}

class ECGHomePage extends StatefulWidget {
  @override
  _ECGHomePageState createState() => _ECGHomePageState();
}

class _ECGHomePageState extends State<ECGHomePage> {
  int _selectedIndex = 0;

  static List<Widget> _widgetOptions = <Widget>[
    ECGClassificationPage(),
    ECGGuidePage(),
    CasesPage(),
    QuizPage(), // Quiz 페이지 추가
    DrugsPage(), // Drug 페이지 추가
    GPTPage(), // GPT 페이지 추가
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('ECG App'),
        backgroundColor: Colors.lightBlueAccent,
        actions: [
          IconButton(
            icon: Icon(Icons.info_outline),
            onPressed: () {
              showTermsAndConditions(context); // 약관 팝업 호출
            },
          ),
        ],
      ),
      body: Center(
        child: _widgetOptions.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.list),
            label: 'Class',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.book),
            label: 'ECG Guide',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.cases_rounded),
            label: 'Cases',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.quiz),
            label: 'Quiz',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.medical_services_rounded),
            label: 'Drugs',
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.blue,
        unselectedItemColor: Colors.grey,
        type: BottomNavigationBarType.fixed,
        onTap: _onItemTapped,
      ),
    );
  }
}
