import 'package:flutter/material.dart';

class ImageViewerPage extends StatelessWidget {
  final String imageUrl;

  // 생성자를 통해 이미지 URL을 전달받음
  ImageViewerPage({required this.imageUrl});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Image Viewer'),
      ),
      body: Center(
        child: GestureDetector(
          onTap: () {
            // 이미지를 클릭하면 전체 화면으로 확장된 이미지를 보여주는 다이얼로그 호출
            showDialog(
              context: context,
              builder: (context) {
                return Dialog(
                  backgroundColor: Colors.transparent,
                  insetPadding: EdgeInsets.all(10),
                  child: GestureDetector(
                    onTap: () {
                      Navigator.of(context).pop(); // 다이얼로그 닫기
                    },
                    child: Hero(
                      tag: 'imageHero',
                      child: Container(
                        width: MediaQuery.of(context).size.width,
                        child: Image.network(
                          imageUrl,
                          fit: BoxFit.contain,
                        ),
                      ),
                    ),
                  ),
                );
              },
            );
          },
          child: Hero(
            tag: 'imageHero',
            child: Image.network(
              imageUrl,
              width: 150, // 작은 크기 이미지
              height: 150,
            ),
          ),
        ),
      ),
    );
  }
}
