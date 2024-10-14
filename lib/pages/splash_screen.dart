import 'package:flutter/material.dart';
import 'package:your_project_name/main.dart'; // main.dart 경로

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    _navigateToHome();
  }

  _navigateToHome() async {
    await Future.delayed(Duration(seconds: 3), () {});
    Navigator.pushReplacement(
      context,
      MaterialPageRoute(builder: (context) => ECGHomePage()),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center, // 세로 중앙 배치
          crossAxisAlignment: CrossAxisAlignment.center, // 가로 중앙 정렬
          children: [
            SizedBox(height: 320), // 로딩 인디케이터 위에 더 많은 여백 추가
            CircularProgressIndicator(
              strokeWidth: 6.0,
              valueColor: AlwaysStoppedAnimation<Color>(Colors.blue),
            ),
            SizedBox(height: 20),
            Text(
              'Loading...',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
                color: Colors.blue,
              ),
            ),
            SizedBox(height: 20),
            _buildProjectByText(), // "제이제이" 텍스트
            SizedBox(height: 140), // 로고를 하단에 더 가깝게 위치시키기 위해 여유 공간 추가
            _buildImage(), // 로고 이미지
          ],
        ),
      ),
    );
  }

  Widget _buildProjectByText() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          'Project By',
          style: TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.w600,
            color: Colors.black54,
          ),
        ),
        SizedBox(width: 8),
        Text(
          '제이제이',
          style: TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.bold,
            color: Colors.black,
          ),
        ),
      ],
    );
  }

  // 이미지를 표시하는 위젯
  Widget _buildImage() {
    return Image.asset(
      'assets/images/logo.png',
      height: 200, // 이미지 높이 설정
      width: 250,  // 이미지 너비 설정
      fit: BoxFit.contain, // 이미지 비율 유지
      errorBuilder: (context, error, stackTrace) {
        return Text(
          'Image not found',
          style: TextStyle(
            color: Colors.red,
            fontSize: 16,
          ),
        );
      },
    );
  }
}
