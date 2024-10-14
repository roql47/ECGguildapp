import 'package:flutter/material.dart';
import 'detail_page.dart';

class ECGClassificationPage extends StatefulWidget {
  @override
  _ECGClassificationPageState createState() => _ECGClassificationPageState();
}

class _ECGClassificationPageState extends State<ECGClassificationPage> {
  bool isTranslated = false;
  String searchQuery = '';
  String sortOrder = '기본순';

  final List<String> itemNames = [
    'Sinus Rhythm', 'Sinus Bradycardia', 'Sinus Tachycardia', 'Atrial Premature Contraction',
    'Ventricular Premature Contraction', 'First Degree Block', 'Second Degree Block (Mobitz Type I)',
    'Second Degree Block (Mobitz Type II)', 'Complete Degree Block', 'Atrial Flutter',
    'Atrial Fibrillation', 'Ventricular Tachycardia', 'Non-sustain VT', 'Sustain VT',
    'Ventricular Fibrillation', 'AVNRT', 'AVRT', 'Junctional Escape Rhythm',
    'Accelerated Idioventricular Rhythm', 'Left Bundle Branch Block', 'Right Bundle Branch Block',
    'Anterior Fascicular Block', 'Posterior Fascicular Block', 'Trifasicular Block',
    'Hyperkalemia', 'Left Ventricle Hypertrophy', 'Early repolarization syndrome',
    'Torsades de Pointes', 'Myocarditis ECG', 'Pulmonary Embolism ECG', 'V Pacemaker Rhythm',
    'A Pacemaker Rhythm', 'Digoxin Effect', 'Brugada Syndrome', 'Long QT Syndrome', 'Asystole',
    'Pulseless Electronic Asystole', 'Wellens Syndrome', 'Aortic Dissection', 'WPW syndrome',
    'Septic shock', 'Stress Induced CMP', 'Inferior Infarction (RCA)', 'Anterior Infarction (LAD)',
    'Lateral Infarction (LCx)', 'Main Coronary Infarction', 'Old MI'
  ];

  final List<String> translatedItemNames = [
    '동성 리듬', '동성 서맥', '동성 빈맥', '심방 조기수축', '심실 조기수축', '1도 방실차단', '2도 방실차단 (Mobitz Type I)',
    '2도 방실차단 (Mobitz Type II)', '완전 방실차단', '심방 조동', '심방 세동', '심실 빈맥', '비지속성 심실 빈맥',
    '지속성 심실 빈맥', '심실 세동', '방실결절 회귀성 빈맥 (AVNRT)', '방실 회귀성 빈맥 (AVRT)', '결절 이탈 리듬',
    '가속 심실 고유리듬', '좌각 차단', '우각 차단', '전방 섬유 속 차단', '후방 섬유 속 차단', '삼섬유 속 차단', '고칼륨혈증',
    '좌심실 비대', '조기 재분극 증후군', '꼬리 물기 빈맥 (Torsades de Pointes)', '심근염 심전도', '폐색전증 심전도',
    '심실 심박조율기 리듬', '심방 심박조율기 리듬', '디곡신 효과', '브루가다 증후군', 'QT 연장 증후군', '무수축',
    '무맥성 전기 활동 (PEA)', '웰렌 증후군', '대동맥 박리', 'WPW 증후군', '패혈성 쇼크', '스트레스 유발 심근병증',
    '하벽 심근경색 (RCA)', '전벽 심근경색 (LAD)', '측벽 심근경색 (LCx)', '주관상동맥 심근경색', '오래된 심근경색'
  ];

  @override
  Widget build(BuildContext context) {
    List<String> originalItemNames = List.from(itemNames);
    List<String> originalTranslatedItemNames = List.from(translatedItemNames);

    List<String> filteredItemNames = isTranslated
        ? translatedItemNames
        .where((name) => name.toLowerCase().contains(searchQuery.toLowerCase()))
        .toList()
        : itemNames
        .where((name) => name.toLowerCase().contains(searchQuery.toLowerCase()))
        .toList();

    if (sortOrder == '가나다순') {
      filteredItemNames.sort((a, b) => a.compareTo(b));
    }

    return Scaffold(
      appBar: AppBar(
        title: Text('심전도 분류'),
        actions: [
          Row(
            children: [
              Text(isTranslated ? '한글명' : '영문명'),
              Transform.scale(
                scale: 0.6,
                child: Switch(
                  value: isTranslated,
                  onChanged: (value) {
                    setState(() {
                      isTranslated = value;
                      if (sortOrder == '기본순') {
                        itemNames.clear();
                        itemNames.addAll(originalItemNames);
                        translatedItemNames.clear();
                        translatedItemNames.addAll(originalTranslatedItemNames);
                      }
                    });
                  },
                ),
              ),
              SizedBox(width: 10),
              DropdownButton<String>(
                value: sortOrder,
                items: <String>['기본순', '가나다순'].map((String value) {
                  return DropdownMenuItem<String>(
                    value: value,
                    child: Text(
                      value,
                      style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.bold,
                        color: Colors.black87,
                      ),
                    ),
                  );
                }).toList(),
                onChanged: (String? newValue) {
                  setState(() {
                    sortOrder = newValue!;
                    if (sortOrder == '기본순') {
                      itemNames.clear();
                      itemNames.addAll(originalItemNames);
                      translatedItemNames.clear();
                      translatedItemNames.addAll(originalTranslatedItemNames);
                    }
                  });
                },
                icon: Icon(Icons.arrow_drop_down, color: Colors.blueAccent),
                style: TextStyle(
                  color: Colors.black, // 텍스트 색상
                ),
                dropdownColor: Colors.grey[100], // 드롭다운 배경색
                elevation: 10, // 드롭다운 그림자 높이
              ),
              SizedBox(width: 10),
            ],
          ),
        ],
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: TextField(
              onChanged: (value) {
                setState(() {
                  searchQuery = value;
                });
              },
              decoration: InputDecoration(
                filled: true,
                fillColor: Colors.grey[200],
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(30.0),
                  borderSide: BorderSide.none,
                ),
                hintText: '검색...',
                prefixIcon: Icon(Icons.search),
                suffixIcon: IconButton(
                  icon: Icon(Icons.send, color: Colors.lightBlue),
                  onPressed: () {
                    print('입력 확인: $searchQuery');
                  },
                ),
              ),
            ),
          ),
          Expanded(
            child: ListView.builder(
              itemCount: filteredItemNames.length,
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
                  child: GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => DetailPage(
                            name: filteredItemNames[index],
                          ),
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
                            offset: Offset(0, 3),
                          ),
                        ],
                      ),
                      padding: EdgeInsets.all(16),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            filteredItemNames[index],
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Icon(Icons.chevron_right, size: 24),
                        ],
                      ),
                    ),
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
