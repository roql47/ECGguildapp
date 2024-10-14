import 'package:flutter/material.dart';

class GuideDetailPage extends StatelessWidget {
  final String topic;

  GuideDetailPage({required this.topic});

  @override
  Widget build(BuildContext context) {
    List<Widget> contentWidgets = [];

    if (topic == 'ECG Reading Steps' || topic == 'ECG 읽기 단계') {
      contentWidgets.add(Image.asset('assets/images/ecgreadingsteps.png'));
      contentWidgets.add(Text(
        '''
1. ECG의 기본 확인
- Patient Identification: ECG가 올바른 환자에게 수행되었는지 확인합니다.
- Date and Time: ECG가 언제 수행되었는지 확인합니다.
- Calibration: 표준화된 1mV 신호가 10mm로 기록되는지 확인합니다.

2. 심박수 (Heart Rate) 확인
- 방법: 일반적으로 6초 리듬 스트립에서 QRS 복합파의 수를 세고 이를 10으로 곱합니다. 또는 300을 R-R 간격의 큰 상자 수로 나누어 계산할 수 있습니다.
- 정상 범위: 정상적인 심박수는 60~100bpm 사이입니다.

3. 심박동 리듬 (Heart Rhythm) 평가
- 규칙적 vs. 불규칙적: 심박동이 규칙적으로 발생하는지, 불규칙적으로 발생하는지 확인합니다.
- P파와의 관계: P파와 QRS 복합파 사이의 관계를 평가하여 동성 리듬인지 확인합니다.

4. P파 분석
- 형태: P파가 존재하고, 모든 P파가 동일한 형태를 가지며, 각 QRS 복합파 전에 발생하는지 확인합니다.
- 간격: P-P 간격이 일정한지 확인하여 심방 리듬이 규칙적인지 평가합니다.

5. PR 간격 평가
- 정상 범위: PR 간격은 일반적으로 0.12~0.20초(3~5 작은 상자) 사이입니다.
- 변동: PR 간격이 일정한지 또는 점점 길어지는지 확인합니다. 이는 심차단의 유형을 평가하는 데 중요합니다.

6. QRS 복합파 분석
- 폭: QRS 복합파의 폭은 0.06~0.10초(1.5~2.5 작은 상자)이어야 합니다.
- 형태: QRS 복합파가 넓거나 비정상적인 형태를 보이는지 확인합니다. 이는 심실내 전도 장애를 나타낼 수 있습니다.

7. 축 (Axis) 확인
- 정상 축: 정상적인 심장 축은 -30도에서 +90도 사이입니다.
- 축 편위: 축이 왼쪽(LAD), 오른쪽(RAD), 또는 극단적 축 편위(ERAD)를 나타내는지 확인합니다.

8. ST 분절 평가
- Elevation/Depression: ST 분절의 상승이나 하강이 있는지 확인합니다. 이는 급성 심근경색(STEMI) 또는 허혈을 나타낼 수 있습니다.
- 형태: ST 분절이 수평, 아래로 기울어지거나, 오목한지를 평가합니다.

9. T파 분석
- 형태: T파가 정상적으로 상승해 있는지, 역전되었는지, 또는 평평한지 확인합니다.
- 대칭성: T파는 대칭적으로 나타나야 하며, 비대칭성은 허혈이나 기타 이상을 시사할 수 있습니다.

10. QT 간격 평가
- 정상 범위: QT 간격은 성별과 심박수에 따라 다르지만, 일반적으로 0.36~0.44초 사이입니다.
- QTc: QT 간격을 심박수에 따라 수정(QTc)하여 평가합니다. QTc 간격이 연장되면 Torsades de Pointes와 같은 위험한 부정맥의 위험이 증가할 수 있습니다.

11. U파 평가
- 존재 여부: U파가 나타나는지 확인하며, 이는 저칼륨혈증 등의 전해질 이상을 시사할 수 있습니다.

12. 최종 인상 (Overall Impression)
- 종합 평가: ECG에서 나타나는 모든 이상 소견을 종합하여 최종 인상을 기록합니다. 이 단계에서는 모든 소견을 통합하여 진단적인 결론을 내립니다.

13. 비교 (Comparison)
- 이전 ECG와 비교: 가능한 경우 이전의 ECG와 비교하여 변화가 있는지 확인합니다.
        ''',
        style: TextStyle(fontSize: 16),
      ));

    } else if (topic == 'LEAD Positioning' || topic == 'LEAD 위치 결정') {
      contentWidgets.add(Image.asset('assets/images/ecgleadposition.png'));
      contentWidgets.add(Text(
        '''
1. 리드(LEAD) 배치의 중요성
- ECG 리드 배치는 심장의 전기적 활동을 다양한 각도에서 측정하기 위해 필수적입니다. 정확한 리드 배치가 있어야 정확한 ECG 해석이 가능합니다.

2. 표준 리드(12-Lead ECG) 배치
- I, II, III 리드: 양팔과 왼쪽 다리에 전극이 위치하며, 심장의 표면 전압을 측정합니다.
- aVR, aVL, aVF 리드: 전위의 평균을 계산하여 심장을 더 다양한 각도에서 평가합니다.
- V1-V6 리드: 흉부에 배치되며, 각각 특정 위치에서 심장의 전기적 활동을 측정합니다.

3. 리드 위치 설명
- V1: 오른쪽 제4늑간, 흉골 옆에 위치.
- V2: 왼쪽 제4늑간, 흉골 옆에 위치.
- V3: V2와 V4의 중간 위치.
- V4: 왼쪽 제5늑간, 좌측 쇄골 중앙선에서 2cm 아래.
- V5: V4와 동일한 높이, 왼쪽 전액와선(anterior axillary line)에 위치.
- V6: V4와 동일한 높이, 왼쪽 중액와선(midaxillary line)에 위치.

4. Limb Leads (사지 리드)
- RA (Right Arm): 오른쪽 팔에 부착.
- LA (Left Arm): 왼쪽 팔에 부착.
- RL (Right Leg): 오른쪽 다리에 부착.
- LL (Left Leg): 왼쪽 다리에 부착.

5. 리드 배치의 오류 방지
- 전극의 위치가 정확하지 않으면 ECG 해석에 오류가 발생할 수 있습니다. 리드 배치를 정확하게 하는 것이 중요합니다.
        ''',
        style: TextStyle(fontSize: 16),
      ));
    } else if (topic == 'Cardiac Axis' || topic == '심장 축 알아보기') {
      contentWidgets.add(Image.asset('assets/images/ecgcardiacaxis.png'));
      contentWidgets.add(Text(
        '''
1. 심장 축(Cardiac Axis)의 정의
- 심장 축은 심장의 전기적 활동이 어떻게 분포되어 있는지를 나타냅니다. 이는 심장의 위치, 크기, 그리고 전기적 이상을 평가하는 데 중요합니다.

2. 정상 축 범위
- 정상 심장 축은 -30도에서 +90도 사이입니다. 이 범위 내에서는 심장의 전기적 활동이 정상적으로 분포되어 있음을 의미합니다.

3. 축 편위(Axis Deviation)
- 좌측 축 편위 (LAD): 심장 축이 -30도에서 -90도 사이에 있을 때 발생합니다. 이는 좌심실 비대, 심근 경색 또는 좌심방 비대와 관련될 수 있습니다.
- 우측 축 편위 (RAD): 심장 축이 +90도에서 +180도 사이에 있을 때 발생합니다. 이는 우심실 비대, 폐성 심장병 또는 폐색전증과 관련될 수 있습니다.
- 극단적 축 편위 (Extreme Axis Deviation, ERAD): 심장 축이 +180도에서 -90도 사이에 있을 때 발생하며, 이는 매우 심각한 심장 질환의 징후일 수 있습니다.
        ''',
        style: TextStyle(fontSize: 16),
      ));

      contentWidgets.add(Image.asset('assets/images/axis.png')); // 추가 이미지
      contentWidgets.add(Text(
        '''
4. ECG를 통한 축 계산 방법
- Lead I과 aVF의 QRS 복합파를 통해 심장 축을 계산합니다.
- Lead I에서 양성이면 축이 왼쪽으로, 음성이면 오른쪽으로 편위됩니다.
- aVF에서 양성이면 축이 아래쪽으로, 음성이면 위쪽으로 편위됩니다.

5. 축 편위의 임상적 중요성
- 축 편위는 심장의 전기적 이상이나 심실의 비대를 나타낼 수 있으며, 심근경색의 위치를 파악하는 데 도움을 줄 수 있습니다.
        ''',
        style: TextStyle(fontSize: 16),
      ));
    } else if (topic == 'ECG Wave' || topic == 'ECG 파형 알아보기') {
      contentWidgets.add(Image.asset('assets/images/ecgwaveform.png'));
      contentWidgets.add(Text(
        '''
1. P파 (P Wave)
- P파는 심방의 탈분극(심방의 전기적 활성화)을 나타냅니다. 일반적으로 둥글고 매끄러운 형태를 가지며, 지속 시간은 약 0.08~0.10초입니다.

2. QRS 복합파 (QRS Complex)
- QRS 복합파는 심실의 탈분극(심실의 전기적 활성화)을 나타냅니다. 정상적인 QRS 복합파의 폭은 0.06~0.10초입니다. 비정상적으로 넓은 QRS 복합파는 심실내 전도 장애를 나타낼 수 있습니다.

3. T파 (T Wave)
- T파는 심실의 재분극(심실이 전기적으로 회복되는 과정)을 나타냅니다. T파는 QRS 복합파와 같은 방향으로 양성을 띠며, T파의 역전이나 비정상적인 모양은 심장 허혈 또는 기타 병리학적 상태를 시사할 수 있습니다.

4. U파 (U Wave)
- U파는 심실 재분극 후의 완전한 회복을 나타낼 수 있습니다. 일반적으로 P파와 T파에 비해 작고 드물게 나타납니다. U파는 저칼륨혈증과 관련이 있을 수 있습니다.

5. R파의 증폭 (R Wave Progression)
- V1에서 V6로 갈수록 R파의 높이가 점진적으로 증가하는 것이 정상입니다. 이는 좌심실의 전기적 활동이 주도권을 가지게 되는 과정과 관련이 있습니다.

6. 병리적 파형
- 비정상적인 파형은 심근경색, 심실 비대, 또는 전도 장애와 같은 심장 질환을 시사할 수 있습니다. 예를 들어, Q파의 존재는 이전 심근경색의 흔적일 수 있습니다.
        ''',
        style: TextStyle(fontSize: 16),
      ));
    } else if (topic == 'ECG Intervals & Segments' || topic == 'ECG 간격 및 분절 알아보기') {
      contentWidgets.add(Text(
        '''
1. PR 간격 (PR Interval)
- PR 간격은 P파의 시작부터 QRS 복합파의 시작까지의 시간으로, 일반적으로 0.12~0.20초입니다. PR 간격이 길어지면 심차단(특히 1도 심차단)을 나타낼 수 있습니다.

2. QRS 간격 (QRS Duration)
- QRS 간격은 심실 탈분극에 소요되는 시간으로, 일반적으로 0.06~0.10초입니다. QRS 간격이 길어지면 심실 전도 장애(예: 좌우각 차단)를 나타낼 수 있습니다.

3. QT 간격 (QT Interval)
- QT 간격은 심실 탈분극과 재분극의 총 시간을 나타내며, 성별과 심박수에 따라 다릅니다. 일반적으로 0.36~0.44초입니다. QT 간격이 길어지면 Torsades de Pointes와 같은 위험한 부정맥의 위험이 증가할 수 있습니다.

4. ST 분절 (ST Segment)
- ST 분절은 심실이 탈분극을 완료하고 재분극을 시작하기 전의 짧은 휴지기입니다. 정상적으로는 등전선과 일치합니다. ST 분절의 상승은 급성 심근경색(STEMI)을, 하강은 허혈을 시사할 수 있습니다.

5. RR 간격 (RR Interval)
- RR 간격은 두 연속적인 QRS 복합파 사이의 시간 간격으로, 심박수의 규칙성을 평가하는 데 사용됩니다. RR 간격이 일정하지 않으면 불규칙한 심박동을 의미합니다.

6. PP 간격 (PP Interval)
- PP 간격은 두 연속적인 P파 사이의 시간 간격으로, 심방 리듬의 규칙성을 평가하는 데 사용됩니다. PP 간격이 일정하지 않으면 심방 리듬의 불규칙성을 나타낼 수 있습니다.

7. 병리적 간격
- 병리적인 간격 변화는 심장 전도 장애, 심근 허혈, 전해질 이상 등 다양한 심장 문제를 시사할 수 있습니다.
        ''',
        style: TextStyle(fontSize: 16),
      ));
    } else if (topic == 'Diagnosis of STEMI in ECG' || topic == 'ECG에서 STEMI 진단') {
      contentWidgets.add(Image.asset('assets/images/stemi_territory.png'));
      contentWidgets.add(Text(
        '''
1. ST 분절 상승
- STEMI의 주요 특징은 ST 분절 상승입니다. 대부분의 리드에서 0.1mV 이상의 상승이 확인되면 STEMI를 의심할 수 있으며, V2와 V3에서는 남성은 0.2mV, 여성은 0.15mV 이상의 ST 분절 상승이 진단 기준이 됩니다.

2. 해당 리드에 따른 병변 위치
- 전벽 STEMI: V1~V6에서 ST 분절 상승 (왼쪽 전방 하강 관상동맥 폐색).
- 하벽 STEMI: II, III, aVF에서 ST 분절 상승 (우관상동맥 또는 좌측 회선 관상동맥 폐색).
- 측벽 STEMI: I, aVL, V5, V6에서 ST 분절 상승 (좌측 회선 관상동맥 폐색).

3. Q파의 형성
- 병적 Q파는 심근 괴사가 진행된 이후에 나타날 수 있으며, QRS의 첫 부분에서 0.04초 이상 지속되는 깊고 넓은 Q파가 특징입니다.

4. T파 변화
- STEMI 초기에는 T파의 고전압 또는 역전이 발생할 수 있으며, 시간이 지남에 따라 T파가 커지거나 음성으로 변화할 수 있습니다.

5. 거울 이미지(ST 분절 저하)
- 특정 리드에서 ST 분절이 저하되는 거울 이미지는 반대쪽에서 STEMI가 발생했음을 시사할 수 있습니다.

6. 임상적 증상
- STEMI는 흉통, 호흡 곤란, 과도한 발한 등의 증상을 동반할 수 있으며, 쥐어짜는 듯한 흉통이 안정 시에도 30분 이상 지속되면 STEMI를 의심해야 합니다.

7. 트로포닌 검사
- STEMI가 의심되지만 심전도 소견이 불명확할 경우, 혈액 검사에서 트로포닌 수치의 상승을 통해 STEMI를 진단할 수 있습니다.
        ''',
        style: TextStyle(fontSize: 16),
      ));
    } else if (topic == 'Evolution of ECG in Acute MI' || topic == '급성 MI에서 ECG의 변화') {
      contentWidgets.add(Image.asset('assets/images/evolution_ami.png'));
      contentWidgets.add(Text(
        '''
1. 급성기 (Acute Phase)
- AMI가 발생한 직후, 심전도에서는 ST 분절의 급격한 상승이 나타납니다. 이는 심근의 급성 허혈로 인해 나타나는 전형적인 소견입니다. 환자는 극심한 흉통을 호소하며, 이 시점에서의 빠른 치료가 매우 중요합니다.

2. 아급성기 (Subacute Phase)
- AMI 발생 후 1~3일 후의 단계로, 심전도에서는 T파의 역전과 함께 ST 분절의 상승이 점차 줄어듭니다. 또한 병적 Q파가 나타날 수 있습니다. 이 시기는 심근 괴사가 진행되며 심전도 변화가 두드러지는 시기입니다.

3. 회복기 (Healing Phase)
- AMI 발생 후 약 1~2주 정도 지나면, 심전도에서 ST 분절은 정상으로 회복되기 시작합니다. 하지만 병적 Q파는 여전히 남아 있고, T파의 역전이 지속될 수 있습니다. 심근 손상은 여전히 진행 중이지만, 심장의 일부는 회복되어 가는 단계입니다.

4. 만성기 (Chronic Phase)
- AMI 발생 후 몇 주에서 몇 달이 지나면, 심전도에서 병적 Q파는 영구적으로 남아 심근 손상의 흔적으로 기록됩니다. T파는 정상으로 돌아오거나 영구적으로 음성으로 남을 수 있습니다. 이 시기는 심근의 섬유화가 완료되는 단계로, 심전도 상에서 AMI의 흔적이 영구적으로 남게 됩니다.

5. 병적 Q파
- 심전도의 병적 Q파는 심근 괴사의 결과로 나타나는 특징적인 소견입니다. QRS의 첫 부분에서 0.04초 이상 지속되며, 깊고 넓은 Q파가 나타납니다. 이는 시간이 지나도 없어지지 않으며, 심근경색이 발생한 부위를 나타냅니다.

6. ST 분절 변화
- 심근경색의 급성기에는 ST 분절의 급격한 상승이 주요 소견입니다. 시간이 지나면서 아급성기에는 ST 분절이 점차 하강하고, 회복기에는 ST 분절이 정상화됩니다.

7. T파 변화
- 급성기에는 T파가 높아지거나 비정상적으로 양성일 수 있으며, 시간이 지나면서 T파가 음성으로 바뀌고, 회복기나 만성기에는 원래 상태로 회복되거나 음성으로 남을 수 있습니다.
        ''',
        style: TextStyle(fontSize: 16),
      ));
    } else if (topic == 'Classification of ACS' || topic == '급성관상동맥 증후군의 분류') {
      contentWidgets.add(Image.asset('assets/images/ACS.png'));
      contentWidgets.add(Text.rich(
        TextSpan(
          children: [
            TextSpan(
              text: '\n심장질환은 급성기 질환인 급성관상동맥증후군과 안정형협심증으로 분류합니다.\n',
              style: TextStyle(fontSize: 16),
            ),
            TextSpan(
              text: '심전도 변화를 일으키는 질환은 급성관상동맥증후군이기 때문에 허혈성 심장질환의 심전도는 급성관상동맥증후군의 심전도입니다.\n',
              style: TextStyle(fontSize: 16),
            ),
            TextSpan(
              text: '급성기에는 ST분절의 또는 T파의 변화를 일으켜 ST 분절의 상승이 있는 경우에는 ST elevation MI로 진단을 하고 ST elevation이 없는 경우에는 Non-ST elevation MI로 분류를 합니다.\n',
              style: TextStyle(fontSize: 16),
            ),
            TextSpan(
              text: '그 이후에 심근 괴사의 정도에 따라서 Q wave가 생기는데 Q wave를 보이고 회복되는 경우를 Q파 심근경색증 그 외에는 비Q파 심근경색증으로 분류를 합니다.\n\n',
              style: TextStyle(fontSize: 16),
            ),
            TextSpan(
              text: '1. ',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
            ),
            TextSpan(
              text: 'ST 분절 상승 심근경색증 (ST-Segment Elevation Myocardial Infarction, STEMI)\n',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
            ),
            TextSpan(
              text: '''
    
    정의: 관상동맥이 완전히 막히면서 심장 근육의 일부가 심각하게 손상되는 심각한 형태의 심근경색증입니다.
    
    증상: 갑작스럽고 극심한 흉통, 상체의 여러 부위로 방사되는 통증(왼팔, 목, 턱 등), 땀, 메스꺼움, 호흡곤란 등이 나타납니다.
    
    특징: 심전도(ECG)에서 ST 분절의 상승이 관찰됩니다. 이는 심근의 심각한 손상을 나타내는 소견입니다. 혈액 검사에서도 심장 효소 수치가 크게 상승합니다.
    
    치료: 응급으로 혈전을 제거하거나 관상동맥의 막힌 부위를 확장시키는 시술(예: 관상동맥 중재술(PCI) 또는 스텐트 삽입술)이 필요합니다. 경우에 따라서는 응급으로 심장 우회 수술(CABG)을 시행하기도 합니다.
    
    ''',
              style: TextStyle(fontSize: 16),
            ),
            TextSpan(
              text: '2. ',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
            ),
            TextSpan(
              text: '비ST 분절 상승 심근경색증 (Non-ST Segment Elevation Myocardial Infarction, NSTEMI)\n',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
            ),
            TextSpan(
              text: '''
    
    정의: 관상동맥의 부분적 막힘이나 혈전으로 인해 심장의 일부가 손상되지만, ECG에서 ST 분절의 상승은 나타나지 않는 상태입니다.
    
    증상: 흉통이 지속되거나 심해지며, 숨이 차거나 구토, 발한 등의 증상이 동반될 수 있습니다.
    
    특징: 혈액 검사에서 심장 효소(트로포닌 등)가 상승하여 심근 손상이 있음을 나타냅니다. 그러나 ST 분절 상승이 없다는 점이 주요 특징입니다.
    
    치료: 불안정 협심증과 비슷한 치료를 하며, 추가적으로 관상동맥 조영술을 통해 혈관을 확장시키거나 스텐트 삽입을 할 수 있습니다.
    
    ''',
              style: TextStyle(fontSize: 16),
            ),
            TextSpan(
              text: '3. ',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
            ),
            TextSpan(
              text: '불안정 협심증 (Unstable Angina, UA)\n',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
            ),
            TextSpan(
              text: '''
    
    정의: 관상동맥이 부분적으로 막히거나, 관상동맥 경련으로 인해 발생하며, 안정시에도 흉통이 발생할 수 있습니다.
    
    증상: 흉통이나 흉부 불편감이 휴식 중이나 가벼운 활동 중에 갑자기 나타나며, 이전에 느꼈던 협심증보다 더 심하고 오래 지속될 수 있습니다.
    
    특징: 심근 손상이나 혈액 검사에서 심장 효소가 상승하지 않습니다. 즉, 심근경색은 발생하지 않았습니다.
    
    치료: 약물 치료(혈전 용해제, 항응고제, 항혈소판제 등)로 혈류를 개선하고 관상동맥의 막힘을 줄이는 것이 목표입니다.
    
    ''',
              style: TextStyle(fontSize: 16),
            ),
            TextSpan(
              text: '\n치료의 차이\n',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
            ),
            TextSpan(
              text: '불안정 협심증: 약물 치료로 혈류 개선을 목표로 합니다.\n',
              style: TextStyle(fontSize: 16),
            ),
            TextSpan(
              text: 'NSTEMI: 혈전 용해제나 항응고제와 같은 약물 치료와 함께 필요시 관상동맥 중재술을 시행합니다.\n',
              style: TextStyle(fontSize: 16),
            ),
            TextSpan(
              text: 'STEMI: 관상동맥이 완전히 막혔기 때문에 긴급한 중재술이나 시술이 필요하며, 환자의 생명을 구하기 위한 응급 처치가 중요합니다.\n',
              style: TextStyle(fontSize: 16),
            ),
            TextSpan(
              text: '각 유형의 ACS는 심장의 손상 정도에 따라 예후가 다르며, 빠른 진단과 적절한 치료가 생명에 매우 중요합니다.\n',
              style: TextStyle(fontSize: 16),
            ),
          ],
        ),
        style: TextStyle(fontSize: 16),
      ));
    } else if (topic == 'ST segment depression patterns' || topic == 'ST분절 하강의 형태') {
      contentWidgets.add(Image.asset('assets/images/STD.png')); // 해당 이미지 파일 추가
      contentWidgets.add(Text.rich(
        TextSpan(
          children: [
          TextSpan(
          text: '\nST Segment Depression Patterns\n',
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
        ),
        TextSpan(
          text: '''
ST 분절 하강은 심장의 허혈 상태를 나타내며, 다양한 형태로 나타날 수 있습니다. 주요 패턴은 다음과 같습니다:

1. Horizontal Depression
- ST 분절이 등전선과 수평으로 하강하는 형태입니다.
- 일반적으로 안정형 협심증이나 서맥과 관련이 있을 수 있습니다.

2. Downsloping Depression
- ST 분절이 아래로 기울어지는 형태입니다.
- 운동 허혈의 지표로 자주 사용되며, 심근 허혈의 초기 신호일 수 있습니다.

3. Upsloping Depression
- ST 분절이 위로 기울어지는 형태입니다.
- 덜 특이적이며, 때때로 정상 변동으로 간주될 수 있습니다.
        ''',
          style: TextStyle(fontSize: 16),
        ),
        ],
        ),
      ),
      );
      contentWidgets.add(Image.asset('assets/images/STD1.png'));
      contentWidgets.add(Text(
        '''
        
2차성 ST segment 변화는 심장의 구조적 또는 전기적 이상으로 인해 발생하며, 여러 심장 질환에서 흔히 관찰됩니다. 

1. 우심실비대 (Right Ventricular Hypertrophy, RVH)
우심실비대는 우심실이 두꺼워지는 상태로, 폐동맥 고혈압, 만성 폐질환, 또는 선천성 심질환 등으로 인해 발생할 수 있습니다. 심전도에서의 특징적인 변화는 다음과 같습니다:

V1 유도에서 큰 R파 (R/S 비율이 증가)
우측 유도(V1-V3)에서 ST depression 및 T파의 역전
V5-V6 유도에서 S파의 깊이 증가
우심방 비대가 동반되면 P파의 높이가 증가하는 경우도 있습니다.

2. 좌심실비대 (Left Ventricular Hypertrophy, LVH)
좌심실비대는 고혈압, 대동맥 협착, 또는 다른 원인으로 좌심실이 비대해진 상태입니다. 심전도에서의 좌심실비대는 다음과 같은 특징을 보입니다:
V5-V6 유도에서 큰 R파 (Sokolow-Lyon Index 사용 가능: V1의 S파 깊이 + V5/V6의 R파 높이 ≥ 35mm)
ST depression 및 T파의 역전 (특히 V5-V6 유도에서)
좌심실 비대로 인해 R파가 커지는 동시에, 대각선으로 S파도 커지는 현상이 나타납니다

3. 우각차단 (Right Bundle Branch Block, RBBB)
우각차단은 우각에서 신호가 제대로 전달되지 않아 우심실로의 전기적 전도가 지연되는 상태입니다. 심전도에서의 특징은 다음과 같습니다:

V1-V3 유도에서 rsR' 파형(토끼 귀 모양)
ST depression 및 T파 역전 (V1-V3 유도에서 주로 나타남)
V5-V6 유도에서 깊은 S파
QRS 간격이 넓어져 120ms 이상이 되는 경우가 많습니다

4. 좌각차단 (Left Bundle Branch Block, LBBB)
좌각차단은 좌각에서 신호 전달이 지연되는 상태로, 심전도의 전반적인 모양이 달라집니다. 특징은 다음과 같습니다:

V5-V6 유도에서 넓은 R파 (급격하게 상승)
ST elevation 또는 depression이 나타날 수 있으며, 특히 좌측 유도(V5-V6)에서 T파의 비정상적인 역전이 자주 나타남
V1-V3 유도에서 큰 S파 (깊고 넓게 나타남)
QRS 간격이 넓어져 120ms 이상으로 확장됩니다

5. WPW 증후군 (Wolff-Parkinson-White Syndrome)
WPW 증후군은 심장에 존재하는 비정상적인 전도로 인해 발생하는 부정맥 증후군으로, 이로 인해 조기 흥분이 일어나고 심전도에 독특한 변화가 나타납니다. 특징적인 심전도 소견은:

짧은 PR 간격 (120ms 이하)
델타파(QRS 초반부에 나타나는 경사져 있는 부분)
넓은 QRS 간격
ST segment 변화는 델타파에 의해 왜곡되며, 이로 인해 허위의 ST elevation 또는 depression이 나타날 수 있습니다
        ''',
        style: TextStyle(fontSize: 16),
      ));
    }

    return Scaffold(
      appBar: AppBar(
        title: Text(topic),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start, // 왼쪽 정렬
            children: contentWidgets,
          ),
        ),
      ),
    );
  }
}
