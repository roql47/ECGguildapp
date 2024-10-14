import 'package:flutter/material.dart';
import 'drug_detail_page.dart';

class DrugsPage extends StatefulWidget {
  @override
  _DrugsPageState createState() => _DrugsPageState();
}

class _DrugsPageState extends State<DrugsPage> {
  // 스위치 상태를 관리하는 변수
  bool isTranslated = false;

  // 약물 이름 목록 (영문)
  final List<String> drugNames = [
    'Epinephrine',
    'Norepinephrine',
    'Atropine',
    'Dopamine',
    'Dobutamine',
    'Amiodarone',
    'Lidocaine',
    'Adenosine',
    'Magnesium Sulfate',
    'Calcium Gluconate',
    'Sodium Bicarbonate',
    'Digoxin'
  ];

  // 약물 이름 목록 (한글)
  final List<String> translatedDrugNames = [
    '에피네프린',
    '노르에피네프린',
    '아트로핀',
    '도파민',
    '도부타민',
    '아미오다론',
    '리도카인',
    '아데노신',
    '마그네슘 설페이트',
    '칼슘 글루코네이트',
    '소듐 바이카보네이트',
    '디곡신'
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('약물'),
        actions: [
          Row(
            children: [
              Text(isTranslated ? '한글명' : '영문명'),
              Transform.scale(
                scale: 0.6,  // 스위치 크기를 조정
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
        itemCount: drugNames.length, // 약물 이름 목록의 길이만큼 리스트 생성
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
            child: GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => DrugDetailPage(drugNumber: index + 1),
                  ),
                );
              },
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.2),
                      spreadRadius: 2,
                      blurRadius: 5,
                      offset: Offset(0, 3), // 그림자 위치 조정
                    ),
                  ],
                ),
                padding: EdgeInsets.all(16),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    // 스위치 상태에 따라 한글 또는 영문 약물 이름 표시
                    Text(
                      isTranslated ? translatedDrugNames[index] : drugNames[index],
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
