import 'package:flutter/material.dart';
import 'guide_detail_page.dart';

class ECGGuidePage extends StatefulWidget {
  @override
  _ECGGuidePageState createState() => _ECGGuidePageState();
}

class _ECGGuidePageState extends State<ECGGuidePage> {
  bool isTranslated = false;

  final List<String> guideTopics = [
    'ECG Reading Steps',
    'LEAD Positioning',
    'Cardiac Axis',
    'ECG Wave',
    'ECG Intervals & Segments',
    'Diagnosis of STEMI in ECG',
    'Evolution of ECG in Acute MI',
    'Classification of ACS',
    'ST segment depression patterns'
  ];

  final List<String> translatedGuideTopics = [
    'ECG 읽기 단계',
    'LEAD 위치 결정',
    '심장 축 알아보기',
    'ECG 파형 알아보기',
    'ECG 간격 및 분절 알아보기',
    'ECG에서 STEMI 진단',
    '급성 MI에서 ECG의 변화',
    '급성관상동맥 증후군의 분류',
    'ST분절 하강의 형태'
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('ECG 가이드'),
        actions: [
          Row(
            children: [
              Text(isTranslated ? '한글명' : '영문명'),
              Transform.scale(
                scale: 0.6,  // 스위치 크기를 절반으로 조정
                child: Switch(
                  value: isTranslated,
                  onChanged: (value) {
                    setState(() {
                      isTranslated = value;
                    });
                  },
                ),
              ),
            ],
          ),
        ],
      ),
      body: ListView.builder(
        itemCount: guideTopics.length,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
            child: GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => GuideDetailPage(topic: isTranslated ? translatedGuideTopics[index] : guideTopics[index]),
                  ),
                );
              },
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(15),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.2),
                      spreadRadius: 2,
                      blurRadius: 5,
                      offset: Offset(0, 3), // changes position of shadow
                    ),
                  ],
                ),
                padding: EdgeInsets.all(16),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      isTranslated ? translatedGuideTopics[index] : guideTopics[index],
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Icon(Icons.chevron_right, size: 24, color: Colors.grey),
                  ],
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
