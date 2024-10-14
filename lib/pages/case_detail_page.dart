import 'package:flutter/material.dart';

class CaseDetailPage extends StatelessWidget {
  final int caseNumber;

  // 생성자
  CaseDetailPage({required this.caseNumber});

  // 케이스 정보 MAP
  final Map<int, Map<String, String>> caseDetails = {
    1: {
      'image': 'assets/images/cases/Inferior_STEMI_with_LBBB.png',
      'description': 'STEMI with LBBB: LBBB가 동반된 환자에게서 하벽심근경색증이 발생하면 심근경색의 특징을 확인하기 어려워집니다. \n'
                     '이는 LBBB 자체가 ST 분절과 QRS 복합체에 변화를 초래하기 때문입니다. 이 때 ST분절이 QRS 복합체의 방향과 같은 전극으로 1mm이상 상승하는 경우 심근경색의 강한 증거로 볼 수 있습니다.(Sgarbossa criteria)',
    },
    2: {
      'image': 'assets/images/cases/RCA_STEMI3.png',
      'description':  'Inferior ST elavation: II, III, avF의 inferior lead상승은 inferior wall의 infaction을 시사합니다.\n'
                      'aVL lead에서 reciprocal ST depression이 관찰되고 AV nodal artery로 가는 혈류가 폐색되면 서맥이 나타날 수 있습니다.\n'
                      '또한 근위부에서 경색이 발생할 경우 RVMI를 동반할 수 있고 우심실의 기능장애가 발생하여 저혈압이 나타날 수 있습니다.\n'
                      '이때는 RVMI와 감별하기 위해서 V3R~V6R에 전극을 붙히고 ST elavation이 있는지 관찰합니다.\n'
                      'LCx가 dominant한 경우에도 inferior에 ST elavation이 발생할 수 있는데, II >= III STE, I lead의 STD, Lateral lead V5와 V6의 STE가 있으면 LCx occulusion을 시사할 가능성이 높습니다',
    },
    3: {
      'image': 'assets/images/cases/RBBB_with_LAFB.png',
      'description': 'This is the description for Case 3: RBBB with LAFB.',
    },
    4: {
      'image': 'assets/images/cases/Juctional_with_VPC_bigeminy.png',
      'description': 'This is the description for Case 4: Juctional with VPC bigeminy.',
    },
    5: {
      'image': 'assets/images/cases/flutter_tachydependentBBBz.png',
      'description': 'This is the description for Case 5: flutter tachycardia dependent Bundle Branch Block.',
    },
    6: {
      'image': 'assets/images/cases/RBBB_flutter.png',
      'description': 'This is the description for Case 6: RBBB with flutter.',
    },
    7: {
      'image': 'assets/images/cases/RCA_CTO_pmLAD_curplit_with_afib.png',
      'description': 'This is the description for Case 7: RCA CTO & pLAD curplit lesion with a.fib.',
    },
    8: {
      'image': 'assets/images/cases/Junction_with_hyperkalemia.png',
      'description': 'This is the description for Case 8: Junctional rhythm with hyperkalemia (K+ level 6.1).',
    },
    9: {
      'image': 'assets/images/quiz/pLAD_STEMI(32).png',
      'description': 'This is the description for Case 9: Anterior STEMI pLAD curplit lesion./n more than higher level ST elavation (avR < V1)',
    },
    10: {
      'image': 'assets/images/cases/DCMP(35).png',
      'description': 'This is the description for Case 10: DCMP. LVH가 있는 대부분의 환자들은 Conduction delay 또는 실제적 심방 확장으로 인하여 Left atrial depolarization이 생깁니다. Left atrial abnormalities의 2가지 주된 markers는 limb leads에서 증가된 P waves (>=120 ms)와 V1에서 저명한 negative (terminal)[biphasic P waves] 부분이 있는 biphasic P waves입니다.',
    },
    11: {
      'image': 'assets/images/cases/RCA_CTO(39).png',
      'description': 'This is the description for Case 11: RCA CTO. Right coronary artery의 만성 폐색이 되면 해당 Territory가 되는 Inferior wall의 infaction이 진행되고 II, III, aVF lead에 pathologic Q wave가 생기는것을 볼 수 있습니다.',
    },
  };

  @override
  Widget build(BuildContext context) {
    // 케이스 번호에 맞는 정보를 가져옵니다.
    final caseDetail = caseDetails[caseNumber];

    if (caseDetail == null) {
      // 유효하지 않은 케이스 번호일 경우의 처리
      return Scaffold(
        appBar: AppBar(
          title: Text('Invalid Case Number'),
        ),
        body: Center(
          child: Text('No details available for this case.'),
        ),
      );
    }

    return Scaffold(
      appBar: AppBar(
        title: Text('Case $caseNumber Details'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: ListView(
          children: [
            Image.asset(caseDetail['image']!),  // Map에서 이미지 경로를 가져옴
            SizedBox(height: 16),
            Text(
              'Description',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
            ),
            SizedBox(height: 8),
            Text(
              caseDetail['description']!,  // Map에서 설명을 가져옴
              style: TextStyle(fontSize: 16),
            ),
          ],
        ),
      ),
    );
  }
}
