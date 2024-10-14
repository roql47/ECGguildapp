import 'package:flutter/material.dart';

class DetailPage extends StatefulWidget {
  final String name;

  DetailPage({required this.name});

  @override
  _DetailPageState createState() => _DetailPageState();
}

class _DetailPageState extends State<DetailPage> {
  bool showDescription = false;
  bool showCauses = false;
  bool showSymptoms = false;
  bool showFeature = false;
  bool showTreatment = false;

  @override
  Widget build(BuildContext context) {
    String description = '';
    String causes = '';
    String symptoms = '';
    String feature = '';
    String treatment = '';
    Widget imageWidget = SizedBox.shrink();

    if (widget.name == 'Sinus Rhythm' || widget.name == '동성 리듬') {
      imageWidget = Image.asset('assets/images/class/sinus_rhythm.png');
      description =
      'Sinus rhythm(동 리듬)은 심장의 정상적인 리듬을 의미합니다. '
          '이 리듬은 심장의 자연적인 심박조율기인 동방결절(Sinus atrial node)에서 발생하는 전기 신호에 의해 조절됩니다. '
          '동방결절은 우심방의 상부에 위치하며, 이곳에서 생성된 전기 신호가 심방과 심실로 전달되면서 심장이 규칙적으로 수축하고 이완하게 됩니다.\n\n'
          '정상적인 동성 리듬은 보통 1분에 60에서 100회 사이의 심박수를 유지합니다.\n\n'
          '어린이/아동에서의 정상 심박동\n'
          '신생아: 110 ~ 150 bpm \n'
          '2년생: 85 ~ 125 bpm \n'
          '4년생: 75 ~ 115 bpm \n'
          '6년생+: 60 ~ 100 bpm \n';

    } else if (widget.name == 'Sinus Bradycardia' || widget.name == '동성 서맥') {
      imageWidget = Image.asset('assets/images/class/sinus_bradycardia.png');
      description =
      'Sinus Bradycardia는 심장의 정상적인 리듬인 동성 리듬(sinus rhythm)이 비정상적으로 느리게 발생하는 상태를 말합니다.'
          '"Bradycardia"는 서맥, 즉 느린 심박동을 의미하며, 일반적으로 심박수가 분당 60회 이하인 경우를 가리킵니다. '
          'Sinus Bradycardia는 심장의 동방결절(SA node)에서 생성된 전기 신호가 정상적으로 전도되지만, 그 빈도가 낮아 심장이 느리게 뛰는 상태입니다.';

      causes =
      'Sinus Bradycardia는 다양한 원인으로 발생할 수 있으며, 그중 일부는 생리적(정상적인) 원인일 수 있습니다.\n\n'
          '운동선수: 규칙적인 운동으로 인해 심장이 효율적으로 작동하게 되면서, 운동선수들은 휴식 중에 서맥을 경험할 수 있습니다. 이는 건강한 상태로 간주됩니다.\n\n'
          '휴식 및 수면: 깊은 휴식 상태나 수면 중에도 심박수가 감소하여 Sinus Bradycardia가 나타날 수 있습니다.\n\n'
          '노화: 나이가 들면서 동방결절의 기능이 약화되어 서맥이 발생할 수 있습니다.\n\n'
          '약물: 베타 차단제, 칼슘 채널 차단제, 디곡신과 같은 약물은 심박수를 낮출 수 있습니다.\n\n'
          '심장 질환: 관상동맥 질환, 심근염, 심근경색 등은 동방결절의 기능에 영향을 미쳐 Sinus Bradycardia를 일으킬 수 있습니다.\n\n'
          '기타 요인: 갑상선 기능 저하증, 전해질 불균형(특히 고칼륨혈증), 자율신경계 이상 등도 Sinus Bradycardia의 원인이 될 수 있습니다.';

      symptoms =
      'Sinus Bradycardia는 종종 무증상일 수 있지만, 심박수가 너무 낮아지면 다음과 같은 증상이 나타날 수 있습니다.\n\n'
          '어지럼증: 느린 심박동으로 인해 뇌로 가는 혈류가 감소하면서 어지럼증이 나타날 수 있습니다.\n\n'
          '실신: 심박동이 지나치게 느려져 뇌로의 혈액 공급이 부족하면 실신이 발생할 수 있습니다.\n\n'
          '피로감: 낮은 심박동으로 인해 신체가 충분한 산소와 영양분을 공급받지 못해 피로를 느낄 수 있습니다.\n\n'
          '호흡곤란: 심박동이 너무 느리면 충분한 산소를 공급받지 못해 호흡이 어려워질 수 있습니다.';

      feature =
      'Sinus Bradycardia는 다음과 같은 ECG 특징을 가집니다:\n\n'
          '심박수 감소: 분당 60회 이하의 심박수를 보입니다.\n\n'
          '정상적인 P파: P파는 정상적으로 보이며, 동방결절에서 기원한 리듬임을 나타냅니다.\n\n'
          '정상적인 PR 간격: PR 간격은 일반적으로 정상 범위(0.12-0.20초)입니다.\n\n'
          '정상적인 QRS 복합파: QRS 복합파도 정상 범위(0.08-0.10초) 내에 있습니다.';

      treatment =
      'Sinus Bradycardia의 치료는 원인에 따라 달라지며, 증상이 경미하거나 없는 경우 치료가 필요하지 않을 수 있습니다. 치료가 필요한 경우 다음과 같은 접근법이 사용됩니다.\n\n'
          '약물 조정: 만약 약물이 원인일 경우, 해당 약물을 중단하거나 용량을 조정할 수 있습니다.\n\n'
          '기저 질환 치료: 갑상선 기능 저하증이나 전해질 불균형 등의 원인이 있는 경우, 이를 교정하는 치료가 필요합니다.\n\n'
          '심박조율기 삽입: 심각한 증상을 동반하는 서맥이 있는 경우, 심박조율기(pacemaker)를 삽입하여 정상적인 심박수를 유지할 수 있습니다.';

    } else if (widget.name == 'Sinus Tachycardia' || widget.name == '동성 빈맥') {
      imageWidget = Image.asset('assets/images/class/sinus_tachycardia.png');
      description =
      'Sinus Tachycardia는 심장의 정상적인 리듬인 동성 리듬(sinus rhythm)이 비정상적으로 빠르게 발생하는 상태를 의미합니다.'
          '"Tachycardia"는 빈맥, 즉 빠른 심박동을 뜻하며, 일반적으로 심박수가 분당 100회 이상인 경우를 가리킵니다.'
          'Sinus Tachycardia는 동방결절(SA node)에서 생성된 전기 신호가 정상적인 경로를 따라 전도되지만, 그 빈도가 높아 심장이 빠르게 뛰는 상태입니다.';

      causes =
      'Sinus Tachycardia는 다양한 원인에 의해 발생할 수 있습니다. 이는 생리적인 반응일 수도 있고, 병리적인 원인에 의해 유발될 수도 있습니다.\n\n'
          '운동: 신체 활동이나 운동 중에는 심장이 더 많은 혈액을 펌프질해야 하므로 심박수가 자연스럽게 증가합니다.\n\n'
          '스트레스와 불안: 정신적 스트레스, 불안, 공황 상태 등은 교감신경계를 자극하여 심박수를 증가시킬 수 있습니다.\n\n'
          '발열: 체온이 상승하면 심박수도 상승하는 경향이 있습니다. 발열이 있을 때는 심박수가 자연스럽게 증가할 수 있습니다.\n\n'
          '탈수: 체내 수분이 부족해지면 심장의 부담이 커져 심박수가 증가할 수 있습니다.\n\n'
          '빈혈: 혈액 내 산소 운반 능력이 감소하면, 심장은 더 빨리 펌프질하여 산소를 공급하려고 하므로 심박수가 증가합니다.\n\n'
          '갑상선 기능 항진증: 갑상선 호르몬의 과다 분비는 신진대사를 촉진하여 심박수를 증가시킬 수 있습니다.\n\n'
          '약물: 카페인, 니코틴, 베타 작용제(기관지 확장제)와 같은 약물이나 자극제는 심박수를 높일 수 있습니다.\n\n'
          '심부전 및 심근경색: 심장 기능이 약해진 경우, 심장은 더 빠르게 박동하여 적절한 혈류를 유지하려고 할 수 있습니다.';

      symptoms =
      'Sinus Tachycardia는 다음과 같은 증상을 나타낼 수 있습니다:\n\n'
          '두근거림: 심장이 비정상적으로 빠르게 뛰기 때문에 가슴이 두근거리는 느낌이 들 수 있습니다.\n\n'
          '어지럼증: 심박수가 너무 빨라 혈압이 떨어지거나 뇌로 가는 혈류가 감소하면 어지럼증이 나타날 수 있습니다.\n\n'
          '피로감: 지속적인 빠른 심박동으로 인해 심장이 효율적으로 펌프질하지 못하면 피로감을 느낄 수 있습니다.\n\n'
          '호흡곤란: 빠른 심박동으로 인해 산소 공급이 부족해지면 호흡이 어려워질 수 있습니다.\n\n'
          '실신: 심박동이 지나치게 빠르면 뇌로의 혈액 공급이 감소하여 실신할 수 있습니다.';

      feature =
      'Sinus Tachycardia의 ECG 특징은 다음과 같습니다:\n\n'
          '빠른 심박수: 분당 100회 이상의 빠른 심박수를 보입니다.\n\n'
          '정상적인 P파: P파는 정상적인 모양을 유지하며, 동방결절에서 기원한 리듬임을 나타냅니다.\n\n'
          '정상적인 PR 간격: PR 간격은 정상 범위 내에 있으며, 이는 동방결절에서 발생한 신호가 정상적으로 전도됨을 의미합니다.\n\n'
          '정상적인 QRS 복합파: QRS 복합파도 정상 범위 내에 있으며, 심실이 정상적으로 탈분극됨을 나타냅니다.\n\n';

      treatment =
      'Sinus Tachycardia의 치료는 원인과 심각도에 따라 달라집니다. 생리적인 반응으로 인해 발생한 경우에는 치료가 필요하지 않을 수 있으며, 원인이 제거되면 심박수가 정상으로 돌아올 수 있습니다. 그러나 병리적 원인으로 인해 발생한 경우에는 다음과 같은 치료가 필요할 수 있습니다.\n\n'
          '스트레스 관리: 스트레스를 줄이고 불안을 완화하기 위한 심리적 상담이나 이완 기법 등이 도움이 될 수 있습니다.\n\n'
          '탈수 교정: 수분 섭취를 늘려 탈수를 방지합니다.\n\n'
          '빈혈 치료: 빈혈이 원인일 경우, 철분 보충제 등을 사용하여 빈혈을 치료할 수 있습니다.\n\n'
          '갑상선 기능 조절: 갑상선 기능 항진증이 원인이라면, 갑상선 기능을 정상화하기 위한 치료가 필요합니다.\n\n'
          '베타 차단제: 심박수를 조절하는 데 사용될 수 있습니다.\n\n'
          '칼슘 채널 차단제: 이 약물도 심박수를 낮추는 데 도움이 될 수 있습니다.\n\n'
          '생활 습관 변화: 카페인, 니코틴, 기타 자극제 섭취를 줄이거나 피하는 것이 도움이 될 수 있습니다.\n\n'
          '규칙적인 운동과 건강한 식습관을 유지하는 것이 중요합니다.';
    } else if (widget.name == 'Atrial Premature Contraction' ||
        widget.name == '심방 조기수축') {
      imageWidget =
          Image.asset('assets/images/class/atrial_premature_contraction.png');
      description =
      '심방 조기수축(Atrial Premature Contraction, APC)은 부정맥의 한 유형으로, '
          '심장의 심방에서 발생하는 조기 전기 신호로 인해 정상 심장 박동보다 일찍 심장이 수축하게 되는 상태를 말합니다. '
          '이는 정상적인 심장 리듬을 방해하며, 종종 \'심장이 한 번 뛰고 멈추는\' 느낌이나 불규칙한 심장 박동으로 나타날 수 있습니다.\n\n'
          'P파: P파는 심방 탈분극(심방이 수축하기 위해 전기적으로 활성화되는 것)을 나타내는데, APC의 경우 정상적인 박동 주기보다 일찍 나타납니다. '
          '이 P파는 정상적인 P파와 모양이 다를 수 있는데, 이는 APC가 정상적인 동방결절(SA node)에서가 아닌 심방의 다른 부위에서 발생하기 때문입니다.\n\n'
          'PR 간격: PR 간격(심방 탈분극의 시작부터 심실 탈분극의 시작까지의 시간)은 정상 박동의 PR 간격과 비교했을 때 약간 길거나 짧을 수 있으며, '
          '정상 박동과 동일할 수도 있습니다. 이는 APC가 발생한 위치에 따라 달라집니다.\n\n'
          'QRS 복합파: QRS 복합파는 심실 탈분극(심실이 수축하기 위해 전기적으로 활성화되는 것)을 나타내며, APC가 있을 때도 대체로 정상적인 모양과 지속 시간을 보입니다. '
          '이는 비록 조기 박동이 발생하더라도 심실이 정상적으로 탈분극되기 때문입니다.\n\n'
          '보상성 휴지기: 조기 박동 이후, 다음 정상 박동 전까지 잠시 휴지기가 나타날 수 있습니다. 이 휴지기는 일반적으로 "비보상성"으로, '
          '이는 조기 박동과 그 다음 정상 박동 사이의 간격이 정상 R-R 간격(두 개의 연속적인 QRS 복합파 간의 거리)의 두 배보다 짧음을 의미합니다.\n\n'
          '불규칙한 리듬: 조기 박동으로 인해 심장의 리듬이 불규칙하게 나타납니다. 이 불규칙성은 조기수축의 발생 시간과 일치합니다.';

      causes =
      '심방 조기수축(Atrial Premature Contraction, APC)의 원인은 매우 다양하며, 때로는 특별한 원인이 없는 경우도 있습니다. '
          '일반적으로 APC는 다음과 같은 원인에 의해 발생할 수 있습니다:\n\n'
          '스트레스 및 피로: 정신적 또는 신체적 스트레스, 극도의 피로, 불안 등은 심장에 부담을 주어 APC를 유발할 수 있습니다.\n\n'
          '카페인, 알코올, 니코틴: 과도한 카페인 섭취(커피, 에너지 음료 등), 알코올 음료, 담배의 니코틴은 심장의 전기적 활동을 자극하여 조기수축을 일으킬 수 있습니다.\n\n'
          '전해질 불균형: 혈중 칼륨, 마그네슘, 칼슘 등의 전해질 수준이 불균형할 경우 심장의 정상적인 전기적 활동이 방해받아 APC를 유발할 수 있습니다.\n\n'
          '기저 심장질환: 고혈압, 심장판막 질환, 심근경색, 심부전 등의 기저 심장질환이 있을 경우 심장의 전기적 시스템에 영향을 미쳐 APC가 발생할 가능성이 높아집니다.\n\n'
          '약물: 일부 약물, 특히 심장에 영향을 미치는 약물(예: 디곡신, 기관지 확장제 등)은 부작용으로 심방 조기수축을 일으킬 수 있습니다.\n\n'
          '자율신경계 이상: 자율신경계의 교감신경과 부교감신경이 심장의 전기적 활동을 조절하는데, 이 균형이 깨질 경우 APC가 발생할 수 있습니다.\n\n'
          '기타 요인: 갑상선 기능 항진증(갑상선 호르몬 과다), 발열, 탈수, 저산소증(산소 부족) 등 다양한 상태가 심장에 영향을 미쳐 APC를 유발할 수 있습니다.';

      symptoms =
      'APC는 때때로 무증상일 수 있으나, 다음과 같은 증상을 유발할 수 있습니다:\n\n'
          '두근거림: 심장이 "한 번 멈추고 다시 뛰는" 느낌이 들 수 있습니다.\n\n'
          '가슴 통증: 드물게 가슴 통증이나 불편감이 동반될 수 있습니다.\n\n'
          '어지럼증: 심장의 조기 박동으로 인해 뇌로 가는 혈류가 일시적으로 감소하면서 어지럼증이 발생할 수 있습니다.';

      feature =
      'APC의 ECG 특징은 다음과 같습니다:\n\n'
          'P파의 변화: APC의 P파는 정상적인 P파와 모양이 다를 수 있습니다. 이는 APC가 심방의 다른 부위에서 발생하기 때문입니다.\n\n'
          'PR 간격의 변화: PR 간격이 약간 길거나 짧을 수 있으며, 정상 박동과 동일할 수도 있습니다.\n\n'
          '정상적인 QRS 복합파: APC가 있을 때도 QRS 복합파는 대체로 정상적인 모양과 지속 시간을 보입니다.\n\n'
          '비보상성 휴지기: APC 이후, 정상 박동 전까지의 간격이 정상 R-R 간격의 두 배보다 짧을 수 있습니다.';

      treatment =
      '대부분의 경우, APC는 일시적이고 무해한 것으로 간주되지만, 빈번하거나 증상이 심한 경우, 심장 전문의의 평가가 필요할 수 있습니다. '
          '특히 기저 질환이 의심되거나 원인을 알 수 없는 경우에는 심층적인 검사를 통해 정확한 원인을 찾는 것이 중요합니다.';
    } else if (widget.name == 'Ventricular Premature Contraction' ||
        widget.name == '심실 조기수축') {
      imageWidget =
          Image.asset('assets/images/class/ventricular_premature_contraction.png');
      description =
      '심실 조기수축(Ventricular Premature Contraction, VPC)은 부정맥의 일종으로, 심장의 하부에 있는 심실에서 발생하는 조기 전기 신호로 인해 정상적인 심장 박동보다 일찍 심장이 수축하게 되는 상태입니다. '
          '이는 정상적인 심장 리듬을 방해하며, 불규칙한 박동을 유발할 수 있습니다.\n\n'
          '**심전도(ECG)**에서 심실 조기수축은 다음과 같은 특징으로 나타납니다:\n\n'
          '넓고 비정상적인 QRS 복합파: VPC의 가장 두드러진 특징은 QRS 복합파가 넓고(보통 120밀리초 이상) 비정상적인 모양으로 나타나는 것입니다. '
          '이는 심실이 정상적인 순서가 아닌 비정상적인 방식으로 활성화되기 때문에 발생하며, 심실의 탈분극이 느리고 불규칙하게 진행됩니다.\n\n'
          'P파의 부재: 정상적인 박동과 달리, VPC에서는 QRS 복합파 앞에 P파가 나타나지 않습니다. 이는 이 전기 신호가 심방이 아닌 심실에서 발생하기 때문입니다. '
          '때때로 P파가 존재할 수 있지만, QRS 복합파와 연관되지 않고 독립적으로 발생합니다(정상적인 동방결절 활동으로 인한 것).\n\n'
          '보상성 휴지기: VPC 이후, 다음 정상 박동 전까지 휴지기가 나타날 수 있습니다. 이 휴지기는 일반적으로 "완전 보상성 휴지기"로, '
          '이는 VPC 전후의 두 박동 사이의 간격이 정상 R-R 간격의 두 배에 해당함을 의미합니다.\n\n'
          '불규칙한 리듬: VPC로 인해 심장의 리듬이 불규칙하게 나타납니다. 이 불규칙성은 VPC가 발생하는 시점과 일치합니다.\n\n'
          '단형성 vs. 다형성: VPC는 단형성일 수 있으며, 이 경우 모든 VPC가 ECG에서 동일하게 나타납니다. 이는 VPC가 심실의 동일한 위치에서 발생함을 의미합니다. '
          '반면, 다형성일 경우 VPC가 서로 다르게 나타나며, 이는 여러 심실 부위에서 발생함을 시사합니다.\n\n'
          '커플릿, 트리플릿, 연속 발생: VPC는 단독으로(단일 VPC), 짝을 지어(커플릿), 세 개씩(트리플릿), 또는 연속적으로 발생할 수 있습니다. '
          '세 개 이상의 VPC가 연속으로 발생하는 경우 비지속성 심실 빈맥(NSVT)으로 간주될 수 있습니다.\n\n'
          'VPC는 일반적으로 건강한 사람에게도 발생할 수 있으며, 대부분의 경우 무해합니다. 그러나 일부 사람들은 가슴 두근거림이나 "두근거림"을 느낄 수 있습니다. '
          '빈번한 VPC 또는 특정 패턴(예: 커플릿, 트리플릿)은 심장 질환의 징후이거나 더 심각한 부정맥(예: 심실 빈맥, 심실 세동)으로 발전할 가능성이 있으므로 추가적인 검사와 관리가 필요할 수 있습니다.';

      causes =
      'VPC는 여러 원인에 의해 발생할 수 있으며, 다음과 같은 요인들이 있습니다.'
          '스트레스와 피로: 정신적 스트레스, 신체적 피로, 불안 등은 심장에 부담을 주어 VPC를 유발할 수 있습니다.\n\n'
          '카페인, 알코올, 니코틴: 과도한 카페인 섭취(예: 커피, 차, 에너지 음료), 알코올 음료, 그리고 흡연은 심장의 전기적 활동을 자극해 VPC를 일으킬 수 있습니다.\n\n'
          '전해질 불균형: 혈액 내 칼륨, 마그네슘, 칼슘 등의 전해질이 불균형할 경우 심장의 정상적인 전기적 활동이 방해받아 VPC가 발생할 수 있습니다.\n\n'
          '심장질환: 심근경색(심장마비), 심부전, 심근증, 심장판막 질환 등 기저 심장질환이 있으면 VPC 발생 위험이 높아집니다.\n\n'
          '약물: 특정 약물(예: 기관지 확장제, 항부정맥제 등)의 부작용으로 인해 VPC가 발생할 수 있습니다.\n\n'
          '자율신경계 이상: 자율신경계의 교감신경과 부교감신경이 심장의 전기적 활동을 조절하는데, 이 균형이 깨질 경우 VPC가 유발될 수 있습니다.\n\n'
          '기타 요인: 갑상선 기능 항진증, 저산소증(산소 부족), 발열, 탈수, 빈혈 등 다양한 요인이 VPC의 원인이 될 수 있습니다.';

      symptoms =
      'VPC는 종종 무증상일 수 있지만, 다음과 같은 증상이 나타날 수 있습니다:\n\n'
          '두근거림: VPC로 인해 "건너뛰는" 또는 "두 번 뛰는" 느낌이 들 수 있습니다.\n\n'
          '어지럼증: 심박동의 변화로 인해 일시적으로 어지럼증이 발생할 수 있습니다.\n\n'
          '불안감: 불규칙한 심박동으로 인해 불안감이 생길 수 있습니다.\n\n'
          '피로감: 심박동이 불규칙하게 느껴질 경우 피로감을 느낄 수 있습니다.';

      feature =
      'VPC의 ECG 특징은 다음과 같습니다:\n\n'
          '넓고 비정상적인 QRS 복합파: VPC의 QRS 복합파는 보통 120밀리초 이상으로 넓고 비정상적인 모양을 가집니다.\n\n'
          'P파의 부재: VPC에서는 일반적으로 P파가 나타나지 않습니다.\n\n'
          '보상성 휴지기: VPC 이후 다음 정상 박동 전까지 완전 보상성 휴지기가 나타납니다.\n\n'
          '불규칙한 리듬: VPC가 발생할 때 심장의 리듬이 불규칙해집니다.';

      treatment =
      '대부분의 경우, VPC는 일시적이고 무해한 것으로 간주되지만, 빈번하거나 증상이 심한 경우, 심장 전문의의 평가가 필요할 수 있습니다. '
          '특히 기저 질환이 의심되거나 원인을 알 수 없는 경우에는 심층적인 검사를 통해 정확한 원인을 찾는 것이 중요합니다.';
    } else
    if (widget.name == 'First Degree Block' || widget.name == '1도 방실차단') {
      imageWidget = Image.asset('assets/images/class/first_degree_block.png');
      description =
      'First Degree AV Block은 심장의 전기 신호가 심방에서 심실로 전달될 때 지연이 발생하는 상태를 말합니다. '
          '이는 심전도(ECG)에서 PR 간격이 정상보다 길어진 것으로 나타납니다. 이 상태는 보통 무증상이며, 심각한 문제를 일으키지 않는 경우가 많습니다.';

      causes =
      'First Degree AV Block의 원인은 다음과 같습니다:\n\n'
          '노화: 나이가 들면서 심장의 전도 시스템이 자연적으로 약화될 수 있습니다.\n\n'
          '심장질환: 심근경색, 심근염, 심장판막 질환 등이 원인이 될 수 있습니다.\n\n'
          '약물: 베타 차단제, 칼슘 채널 차단제, 디곡신 등의 약물이 AV 전도를 지연시킬 수 있습니다.\n\n'
          '전해질 불균형: 혈중 칼륨, 마그네슘 등의 불균형이 전도 시스템에 영향을 미칠 수 있습니다.';

      symptoms =
      'First Degree AV Block은 보통 무증상이나, 드물게 피로감, 어지럼증을 유발할 수 있습니다.';

      feature =
      'First Degree AV Block의 ECG 특징:\n\n'
          '연장된 PR 간격: PR 간격이 0.20초 이상으로 연장됩니다.\n\n'
          '정상적인 QRS 복합파: QRS 복합파는 대체로 정상입니다.\n\n'
          '규칙적인 리듬: 심박동은 규칙적으로 유지됩니다.';

      treatment =
      'First Degree AV Block은 보통 치료가 필요하지 않으며, 원인이 되는 약물을 중단하거나 조정할 수 있습니다. '
          '기저 질환이 있는 경우 해당 질환을 치료하는 것이 중요합니다.';
    } else if (widget.name == 'Second Degree Block (Mobitz Type I)' ||
        widget.name == '2도 방실차단 (Mobitz Type I)') {
      imageWidget = Image.asset('assets/images/class/second_degree_block_(mobitz_type_i).png');
      description =
      'Second Degree AV Block, Mobitz Type 1(또는 Wenckebach Block)은 심장의 전기 신호가 점차적으로 지연되다가 결국 심실로 전달되지 않는 상태를 말합니다. '
          '이는 심전도(ECG)에서 PR 간격이 점차 길어지다가 QRS 복합파가 탈락되는 패턴으로 나타납니다.';

      causes =
      'Second Degree AV Block, Mobitz Type 1의 원인은 다음과 같습니다:\n\n'
          '노화: 심장의 전도 시스템이 나이가 들면서 약해질 수 있습니다.\n\n'
          '심장질환: 관상동맥 질환, 심근염 등이 전도 시스템에 영향을 줄 수 있습니다.\n\n'
          '약물: 디곡신, 베타 차단제 등이 이 블록을 유발할 수 있습니다.';

      symptoms =
      'Mobitz Type 1은 대개 무증상이나, 드물게 피로, 어지럼증, 실신을 유발할 수 있습니다.';

      feature =
      'Mobitz Type 1의 ECG 특징:\n\n'
          '점차 연장되는 PR 간격: PR 간격이 점차 길어지다가 QRS 복합파가 탈락됩니다.\n\n'
          '주기적인 QRS 탈락: QRS 복합파가 주기적으로 탈락됩니다.\n\n'
          '불규칙한 리듬: 리듬이 불규칙하게 나타날 수 있습니다.';

      treatment =
      'Mobitz Type 1은 대개 치료가 필요하지 않으며, 증상이 있는 경우 원인에 따라 치료합니다. '
          '필요한 경우 약물 조정이나 중단을 고려할 수 있습니다.';
    } else if (widget.name == 'Second Degree Block (Mobitz Type II)' || widget.name == '2도 방실차단 (Mobitz Type II)') {
      imageWidget = Image.asset(
          'assets/images/class/second_degree_block_(mobitz_type_ii).png');
      description =
      'Second Degree AV Block, Mobitz Type 2는 심장의 전기 신호가 간헐적으로 심실로 전달되지 않는 상태를 말합니다. '
          '이는 심전도(ECG)에서 PR 간격이 일정하게 유지되면서 QRS 복합파가 갑자기 탈락되는 패턴으로 나타납니다.';

      causes =
      'Second Degree AV Block, Mobitz Type 2의 원인은 다음과 같습니다:\n\n'
          '심장질환: 심근경색, 심근염, 심장판막 질환 등이 주요 원인입니다.\n\n'
          '섬유화: 심장의 전도 시스템이 섬유화되어 전도 장애가 발생할 수 있습니다.\n\n'
          '약물: 항부정맥제 등의 약물이 영향을 미칠 수 있습니다.';

      symptoms =
      'Mobitz Type 2는 어지럼증, 피로감, 심한 경우 실신 등의 증상을 유발할 수 있습니다.n';

      feature =
      'Mobitz Type 2의 ECG 특징:\n\n'
          '일정한 PR 간격: PR 간격은 일정하게 유지됩니다.\n\n'
          '갑작스러운 QRS 탈락: QRS 복합파가 예고 없이 탈락됩니다.\n\n'
          '불규칙한 리듬: 탈락된 QRS로 인해 리듬이 불규칙해질 수 있습니다.';

      treatment =
      'Mobitz Type 2는 진행성 심장 블록의 위험이 있어, 심박조율기 삽입이 권장될 수 있습니다. '
          '원인 질환의 치료도 중요합니다.';
    } else
    if (widget.name == 'Complete Degree Block' || widget.name == '완전 방실차단') {
      imageWidget =
          Image.asset('assets/images/class/complete_degree_block.png');
      description =
      'Complete AV Block(완전 방실차단)은 심방에서 발생한 전기 신호가 전혀 심실로 전달되지 않는 상태를 말합니다. '
          '이로 인해 심방과 심실이 독립적으로 박동하게 됩니다. 이는 심전도(ECG)에서 심방의 P파와 심실의 QRS 복합파가 서로 무관하게 나타나는 것으로 확인할 수 있습니다.';

      causes =
      'Complete AV Block의 원인은 다음과 같습니다:\n\n'
          '심근경색: 심장의 전도 시스템이 손상되어 발생할 수 있습니다.\n\n'
          '심장질환: 심근염, 심근증, 심장판막 질환 등이 원인이 될 수 있습니다.\n\n'
          '약물: 항부정맥제, 베타 차단제, 디곡신 등이 원인이 될 수 있습니다.';

      symptoms =
      'Complete AV Block은 어지럼증, 피로감, 실신 등의 증상을 유발할 수 있으며, 심각한 경우 심정지로 이어질 수 있습니다.';

      feature =
      'Complete AV Block의 ECG 특징:\n\n'
          'P파와 QRS 복합파의 분리: P파와 QRS 복합파가 독립적으로 나타납니다.\n\n'
          '느린 심실 리듬: 심실의 리듬은 매우 느리며(보통 분당 20-40회), 규칙적입니다.\n\n'
          '심방 리듬: 심방의 리듬은 정상적일 수 있으나, 심실과 동기화되지 않습니다.';

      treatment =
      'Complete AV Block은 즉각적인 치료가 필요하며, 심박조율기 삽입이 필수적입니다. '
          '원인 질환의 치료도 병행되어야 합니다.';
    } else if (widget.name == 'Atrial Flutter' || widget.name == '심방 조동') {
      imageWidget = Image.asset('assets/images/class/atrial_flutter.png');
      description =
      'Atrial Flutter(심방 조동)는 심방이 매우 빠르게, 그리고 규칙적으로 박동하는 부정맥의 한 형태입니다. '
          '심방은 분당 250-350회 박동할 수 있으며, 이로 인해 심실은 느리게, 불규칙하게 박동하게 됩니다.';

      causes =
      'Atrial Flutter의 원인은 다음과 같습니다:\n\n'
          '심장질환: 심부전, 관상동맥 질환, 심근경색 등이 원인이 될 수 있습니다.\n\n'
          '고혈압: 고혈압은 심장의 부담을 증가시켜 Atrial Flutter를 유발할 수 있습니다.\n\n'
          '심장 수술: 과거 심장 수술이 심장 전도 시스템에 영향을 줄 수 있습니다.\n\n'
          '갑상선 기능 항진증: 갑상선 호르몬의 과다 분비가 원인이 될 수 있습니다.';

      symptoms =
      'Atrial Flutter는 두근거림, 어지럼증, 피로감, 호흡곤란 등의 증상을 유발할 수 있습니다.';

      feature =
      'Atrial Flutter의 ECG 특징:\n\n'
          '톱니 모양의 P파: ECG에서 톱니 모양의 P파가 특징적으로 나타납니다.\n\n'
          '규칙적인 심실 리듬: 심실 리듬은 규칙적이지만 느리거나 빠를 수 있습니다.\n\n'
          '고속의 심방 리듬: 심방은 매우 빠른 속도로 박동합니다.';

      treatment =
      'Atrial Flutter는 항부정맥제, 전기적 제세동, 심박조율기 삽입 등을 통해 치료될 수 있습니다. '
          '원인 질환의 치료와 생활 습관 변화도 중요합니다.';
    } else if (widget.name == 'Atrial Fibrillation' || widget.name == '심방 세동') {
      imageWidget = Image.asset('assets/images/class/atrial_fibrillation.png');
      description =
      'Atrial Fibrillation(심방 세동)은 심방이 빠르고 불규칙하게 박동하는 부정맥의 한 형태입니다. '
          '심방의 전기 신호가 혼란스러워 심실로의 전도가 불규칙하게 이루어지며, 이는 불규칙하고 종종 빠른 심박동을 유발합니다.';

      causes =
      'Atrial Fibrillation의 원인은 다음과 같습니다:\n\n'
          '고혈압: 고혈압은 심장의 부담을 증가시켜 Atrial Fibrillation을 유발할 수 있습니다.\n\n'
          '심장질환: 심부전, 관상동맥 질환, 심근경색 등이 원인이 될 수 있습니다.\n\n'
          '갑상선 기능 항진증: 갑상선 호르몬 과다가 심박수에 영향을 줄 수 있습니다.\n\n'
          '과도한 음주: 알코올은 심장의 전도 시스템에 영향을 줄 수 있습니다.\n\n'
          '심장 수술: 수술 후 회복 과정에서 Atrial Fibrillation이 발생할 수 있습니다.';

      symptoms =
      'Atrial Fibrillation의 증상은 다음과 같습니다:\n\n'
          '두근거림: 빠르고 불규칙한 심박동으로 인해 가슴이 두근거리는 느낌이 나타납니다.\n\n'
          '어지럼증: 심박동이 불규칙해 혈압이 떨어지면 어지럼증이 발생할 수 있습니다.\n\n'
          '피로감: 지속적인 불규칙한 심박동으로 인해 피로를 느낄 수 있습니다.\n\n'
          '호흡곤란: 빠르고 불규칙한 심박동으로 인해 호흡이 어려워질 수 있습니다.';

      feature =
      'Atrial Fibrillation의 ECG 특징은 다음과 같습니다:\n\n'
          '불규칙한 R-R 간격: 심실 리듬이 불규칙하게 나타납니다.\n\n'
          'P파의 부재: P파가 없으며, 대신 심방의 전기적 혼란을 반영하는 불규칙한 파형이 나타납니다.\n\n'
          '빠른 심박동: 심실이 매우 빠르게 박동할 수 있습니다.';

      treatment =
      'Atrial Fibrillation의 치료는 원인과 증상의 심각도에 따라 다릅니다. '
          '약물 치료로 심박수를 조절하거나, 항부정맥제를 사용하여 리듬을 정상화할 수 있습니다. '
          '전기적 제세동, 심박조율기 삽입, 또는 수술적 치료(예: 카테터 절제술)도 고려될 수 있습니다.';
    } else
    if (widget.name == 'Ventricular Tachycardia' || widget.name == '심실 빈맥') {
      imageWidget =
          Image.asset('assets/images/class/ventricular_tachycardia.png');
      description =
      'Ventricular Tachycardia(심실 빈맥)는 심실에서 기원하는 비정상적으로 빠른 심박동을 의미합니다. '
          '심박수가 분당 100회 이상으로 매우 빠르게 나타나며, 이는 혈액의 효과적인 펌프질을 방해할 수 있습니다.';

      causes =
      'Ventricular Tachycardia의 원인은 다음과 같습니다:\n\n'
          '심근경색: 심근경색으로 인해 심실의 전기적 시스템에 손상이 발생할 수 있습니다.\n\n'
          '심근증: 심장의 근육이 비정상적으로 두꺼워지거나 약해지면서 전도 장애가 발생할 수 있습니다.\n\n'
          '심장 수술 후유증: 수술 후 심장의 전기적 활동이 불안정해질 수 있습니다.\n\n'
          '약물: 일부 항부정맥제, 심장 자극제 등이 원인이 될 수 있습니다.';

      symptoms =
      'Ventricular Tachycardia의 증상은 다음과 같습니다:\n\n'
          '두근거림: 빠르고 강한 심박동이 느껴질 수 있습니다.\n\n'
          '어지럼증: 빠른 심박동으로 인해 혈압이 감소하면서 어지럼증이 발생할 수 있습니다.\n\n'
          '실신: 심박수가 지나치게 빠르면 뇌로의 혈류가 감소하여 실신할 수 있습니다.\n\n'
          '호흡곤란: 심장의 펌프 기능이 저하되어 호흡이 어려워질 수 있습니다.';

      feature =
      'Ventricular Tachycardia의 ECG 특징은 다음과 같습니다:\n\n'
          '넓고 빠른 QRS 복합파: QRS 복합파가 넓고 빠르게 나타납니다.\n\n'
          'P파의 부재: 대부분의 경우 P파가 나타나지 않으며, QRS 복합파와 연관되지 않습니다.\n\n'
          '단조로운 리듬: 리듬이 규칙적이지만 매우 빠르게 나타납니다.';

      treatment =
      'Ventricular Tachycardia는 즉각적인 치료가 필요할 수 있습니다. '
          '약물 치료(예: 항부정맥제), 전기적 제세동, 심박조율기 또는 제세동기(ICD) 삽입이 치료 옵션입니다. '
          '특히 심한 경우, 응급 치료가 필요할 수 있습니다.';
    } else if (widget.name == 'Non-sustain VT' || widget.name == '비지속성 심실 빈맥') {
      imageWidget = Image.asset('assets/images/image.png');
      description =
      'Non-sustained Ventricular Tachycardia(NSVT)는 짧은 시간 동안 발생하는 심실 빈맥으로, '
          '일반적으로 30초 미만 지속되며, 그 후 정상적인 리듬으로 돌아옵니다.';

      causes =
      'Non-sustained VT의 원인은 다음과 같습니다:\n\n'
          '심장질환: 심근경색, 심근증, 심부전 등이 주요 원인입니다.\n\n'
          '전해질 불균형: 혈중 칼륨, 마그네슘 등의 불균형이 심실의 전기적 활동에 영향을 줄 수 있습니다.\n\n'
          '약물: 심장 자극제, 항부정맥제 등이 원인이 될 수 있습니다.';

      symptoms =
      'NSVT의 증상은 다음과 같습니다:\n\n'
          '두근거림: 갑작스러운 빠른 심박동이 느껴질 수 있습니다.\n\n'
          '어지럼증: 일시적인 혈류 저하로 인해 어지럼증이 발생할 수 있습니다.\n\n'
          '피로감: 심박동이 빠르고 불규칙하게 변할 때 피로를 느낄 수 있습니다.';

      feature =
      'NSVT의 ECG 특징은 다음과 같습니다:\n\n'
          '짧고 빠른 QRS 복합파: 짧은 기간 동안 넓고 빠른 QRS 복합파가 나타납니다.\n\n'
          '일시적인 리듬 변화: 정상적인 리듬에서 빠르게 변화한 후, 다시 정상으로 돌아옵니다.\n\n';

      treatment =
      'NSVT는 증상에 따라 치료가 필요할 수 있습니다. '
          '약물 치료(예: 베타 차단제, 항부정맥제)와 원인 질환 치료가 주요 방법입니다. '
          '심각한 경우에는 제세동기(ICD) 삽입이 고려될 수 있습니다.';
    } else if (widget.name == 'Sustain VT' || widget.name == '지속성 심실 빈맥') {
      imageWidget = Image.asset('assets/images/class/sustain_vt.png');
      description =
      'Sustained Ventricular Tachycardia는 30초 이상 지속되는 심실 빈맥으로, 이는 심박동이 매우 빠르고 불규칙하게 나타나며, '
          '심각한 혈역학적 문제를 일으킬 수 있습니다.';

      causes =
      'Sustained VT의 원인은 다음과 같습니다:\n\n'
          '심근경색: 심장 근육의 손상이 심실 빈맥을 유발할 수 있습니다.\n\n'
          '심근증: 심장의 비대 또는 약화로 인해 전기적 시스템에 장애가 발생할 수 있습니다.\n\n'
          '심부전: 약화된 심장 근육이 전기적 이상을 일으킬 수 있습니다.';

      symptoms =
      'Sustained VT의 증상은 다음과 같습니다:\n\n'
          '심한 두근거림: 심박동이 매우 빠르고 강하게 나타납니다.\n\n'
          '실신: 지속적인 빠른 심박동으로 인해 뇌로 가는 혈류가 감소하여 실신할 수 있습니다.\n\n'
          '심한 어지럼증: 혈압이 급격히 떨어지면서 어지럼증이 심하게 발생할 수 있습니다.\n\n'
          '호흡곤란: 심장의 기능이 저하되어 호흡이 어려워질 수 있습니다.';

      feature =
      'Sustained VT의 ECG 특징은 다음과 같습니다:\n\n'
          '지속적인 넓고 빠른 QRS 복합파: QRS 복합파가 넓고 빠르게 지속적으로 나타납니다.\n\n'
          'P파의 부재: 대부분의 경우 P파가 나타나지 않습니다.\n\n'
          '불규칙한 리듬: 심실의 리듬이 불규칙하게 나타납니다.';

      treatment =
      'Sustained VT는 응급 상황으로 간주되며, 즉각적인 치료가 필요합니다. '
          '전기적 제세동이 가장 효과적이며, 이후 항부정맥제, 제세동기(ICD) 삽입 등이 고려될 수 있습니다.\n\n';
    } else
    if (widget.name == 'Ventricular Fibrillation' || widget.name == '심실 세동') {
      imageWidget =
          Image.asset('assets/images/class/ventricular_fibrillation.png');
      description =
      'Ventricular Fibrillation(심실 세동)은 심실의 전기적 혼란으로 인해 심장이 무질서하게 떨리며, '
          '심박동이 거의 또는 전혀 발생하지 않는 치명적인 상태입니다. 즉각적인 치료가 필요합니다.';

      causes =
      'Ventricular Fibrillation의 원인은 다음과 같습니다:\n\n'
          '심근경색: 심장의 주요 혈관이 막혀 심실 세동을 유발할 수 있습니다.\n\n'
          '심근증: 심장의 근육이 비대하거나 약해져 전기적 활동이 혼란스러워질 수 있습니다.\n\n'
          '전기 충격: 외부 전기 충격이 심장의 전기적 활동을 혼란시킬 수 있습니다.\n\n'
          '심각한 전해질 불균형: 특히 칼륨, 칼슘, 마그네슘의 불균형이 심실 세동을 유발할 수 있습니다.';

      symptoms =
      'Ventricular Fibrillation의 증상은 다음과 같습니다:\n\n'
          '의식 소실: 심장이 펌프 기능을 상실하면서 의식을 잃게 됩니다.\n\n'
          '심정지: 심장의 펌프 기능이 멈추어 혈액 순환이 중단됩니다.';

      feature =
      'Ventricular Fibrillation의 ECG 특징은 다음과 같습니다:\n\n'
          '무질서한 전기적 활동: 심실의 전기적 활동이 무질서하게 나타납니다.\n\n'
          'QRS 복합파의 부재: 정상적인 QRS 복합파가 전혀 보이지 않습니다.\n\n'
          '완전한 혼란: ECG는 매우 혼란스럽고 무질서한 패턴을 보입니다.';

      treatment =
      'Ventricular Fibrillation은 즉각적인 응급 치료가 필요합니다. '
          '전기적 제세동이 가장 효과적인 치료법이며, 이후 항부정맥제 투여와 제세동기(ICD) 삽입이 고려될 수 있습니다.';
    } else if (widget.name == 'AVNRT' || widget.name == '방실결절 회귀성 빈맥 (AVNRT)') {
      imageWidget = Image.asset('assets/images/class/avnrt.png');
      description =
      'AVNRT(Atrioventricular Nodal Reentrant Tachycardia)는 심장의 방실결절 내에서 발생하는 회귀성 빈맥입니다. '
          '심장이 매우 빠르게 박동하게 되며, 갑작스럽게 시작되고 종료됩니다.';

      causes =
      'AVNRT의 원인은 다음과 같습니다:\n\n'
          '선천적 이상: 방실결절 내에 비정상적인 전도 경로가 있을 수 있습니다.\n\n'
          '기저 심장질환: 심부전, 심근경색 등이 영향을 미칠 수 있습니다.\n\n'
          '자율신경계 이상: 교감신경의 과도한 자극이 AVNRT를 유발할 수 있습니다.';

      symptoms =
      'AVNRT의 증상은 다음과 같습니다:\n\n'
          '갑작스러운 두근거림: 심장이 매우 빠르게 박동하며, 갑작스럽게 시작되고 끝납니다.\n\n'
          '어지럼증: 빠른 심박동으로 인해 혈압이 떨어지면서 어지럼증이 발생할 수 있습니다.\n\n'
          '호흡곤란: 심박동이 빨라지면서 호흡이 어려워질 수 있습니다.';

      feature =
      'AVNRT의 ECG 특징은 다음과 같습니다:\n\n'
          '빠른 심실 리듬: 심실의 리듬이 매우 빠르게 나타납니다.\n\n'
          'QRS 복합파: 일반적으로 정상적인 모양을 유지하지만, 리듬이 빠릅니다.\n\n'
          'P파의 부재: P파가 QRS 복합파에 묻혀 보이지 않을 수 있습니다.';

      treatment =
      'AVNRT의 치료는 약물 치료(예: 아데노신, 베타 차단제)와 전기적 제세동이 포함될 수 있습니다. '
          '지속적이거나 빈번한 경우에는 카테터 절제술을 고려할 수 있습니다.';
    } else if (widget.name == 'AVRT' || widget.name == '방실 회귀성 빈맥 (AVRT)') {
      imageWidget = Image.asset('assets/images/class/avrt.png');
      description =
      'AVRT(Atrioventricular Reentrant Tachycardia)는 심방과 심실 사이에 존재하는 비정상적인 전도 경로를 통해 발생하는 회귀성 빈맥입니다. '
          '심장이 매우 빠르게 박동하며, 갑작스럽게 시작되고 끝납니다.';

      causes =
      'AVRT의 원인은 다음과 같습니다:\n\n'
          '선천적 이상: 비정상적인 전도 경로가 선천적으로 존재할 수 있습니다.\n\n'
          '심근경색: 심장의 손상으로 인해 비정상적인 전도 경로가 활성화될 수 있습니다.';

      symptoms =
      'AVRT의 증상은 다음과 같습니다:\n\n'
          '갑작스러운 두근거림: 심장이 매우 빠르게 박동하며, 갑작스럽게 시작되고 끝납니다.\n\n'
          '어지럼증: 빠른 심박동으로 인해 혈압이 떨어지면서 어지럼증이 발생할 수 있습니다.\n\n'
          '호흡곤란: 심박동이 빨라지면서 호흡이 어려워질 수 있습니다.';

      feature =
      'AVRT의 ECG 특징은 다음과 같습니다:\n\n'
          '짧은 PR 간격: 비정상적인 전도 경로로 인해 PR 간격이 짧아질 수 있습니다.\n\n'
          'QRS 복합파의 넓어짐: 심한 경우 QRS 복합파가 넓어질 수 있습니다.';

      treatment =
      'AVRT의 치료는 약물 치료(예: 아데노신, 베타 차단제)와 전기적 제세동이 포함될 수 있습니다. '
          '지속적이거나 빈번한 경우, 카테터 절제술을 통해 비정상적인 전도 경로를 제거하는 것이 고려될 수 있습니다.';
    } else if (widget.name == 'Junctional Escape Rhythm' ||
        widget.name == '결절 이탈 리듬') {
      imageWidget = Image.asset('assets/images/class/junctional_escape_rhythm.png');
      description =
      'Junctional Escape Rhythm은 심장의 방실결절(AV node)이나 방실 결절 하부에서 발생하는 리듬으로, '
          '동방결절(SA node)이 기능하지 않거나 느리게 작동할 때 보상 메커니즘으로 나타납니다. 심박수는 일반적으로 분당 40-60회로 나타납니다.';

      causes =
      'Junctional Escape Rhythm의 원인은 다음과 같습니다:\n\n'
          '동방결절 기능 저하: 동방결절의 기능이 저하되거나 차단될 때 나타납니다.\n\n'
          '심근경색: 심근경색으로 인해 SA node가 손상되었을 때 발생할 수 있습니다.\n\n'
          '약물: 베타 차단제, 칼슘 채널 차단제 등의 약물이 원인이 될 수 있습니다.';

      symptoms =
      'Junctional Escape Rhythm의 증상은 다음과 같습니다:\n\n'
          '서맥: 느린 심박수로 인해 피로감이나 어지럼증이 발생할 수 있습니다.\n\n'
          '실신: 심박수가 매우 느려지면 실신할 수 있습니다.';

      feature =
      'Junctional Escape Rhythm의 ECG 특징은 다음과 같습니다:\n\n'
          '정상적인 QRS 복합파: QRS 복합파는 대체로 정상적인 모양을 유지합니다.\n\n'
          'P파의 부재 또는 역행 P파: P파가 없거나 QRS 복합파 직후에 역행하여 나타날 수 있습니다.\n\n'
          '느린 심실 리듬: 심실 리듬은 일반적으로 분당 40-60회로 느리게 나타납니다.';

      treatment =
      'Junctional Escape Rhythm은 치료가 필요하지 않은 경우가 많으며, 원인 질환의 치료가 중요합니다. '
          '증상이 심할 경우, 심박조율기 삽입을 고려할 수 있습니다.';
    } else if (widget.name == 'Accelerated Idioventricular Rhythm' ||
        widget.name == '가속 심실 고유리듬') {
      imageWidget = Image.asset('assets/images/class/accelerated_idioventricular_rhythm.png');
      description =
      'Accelerated Idioventricular Rhythm(AIVR)은 심실에서 발생하는 리듬으로, '
          '심박수가 60-100회 사이로 상대적으로 느리며, 보통 급성 심근경색 후에 나타나는 경향이 있습니다.';

      causes =
      'AIVR의 원인은 다음과 같습니다:\n\n'
          '급성 심근경색: 심실이 자발적으로 리듬을 생성하며, 이는 종종 심근경색 후에 발생합니다.\n\n'
          '약물: 디곡신 중독 또는 항부정맥제 투여 후 발생할 수 있습니다.';

      symptoms =
      'AIVR의 증상은 다음과 같습니다:\n\n'
          '대부분 무증상이거나 경미한 증상을 보입니다.\n\n'
          '간헐적인 두근거림을 느낄 수 있습니다.';

      feature =
      'AIVR의 ECG 특징은 다음과 같습니다:\n\n'
          '넓은 QRS 복합파: QRS 복합파가 넓고 비정상적인 모양을 가질 수 있습니다.\n\n'
          '심박수 60-100회: 심박수가 보통 빈맥 수준에 도달하지 않습니다.';

      treatment =
      'AIVR은 대개 특별한 치료 없이도 사라지며, 원인 질환이 해결되면 개선됩니다. '
          '증상이 심하거나 지속적인 경우, 약물 조정이 필요할 수 있습니다.';
    } else
    if (widget.name == 'Left Bundle Branch Block' || widget.name == '좌각 차단') {
      imageWidget = Image.asset('assets/images/class/left_bundle_branch_block.png');
      description =
      'Left Bundle Branch Block(LBBB)은 심장의 좌심실로 가는 전기 신호가 지연되거나 차단되어 발생하는 전도 장애입니다. '
          '이는 심장의 펌프 기능에 영향을 미칠 수 있습니다.';

      causes =
      'LBBB의 원인은 다음과 같습니다:\n\n'
          '고혈압: 고혈압이 심장에 부담을 주어 전도 시스템에 영향을 줄 수 있습니다.\n\n'
          '심근경색: 좌심실의 손상으로 전기 신호가 차단될 수 있습니다.\n\n'
          '심부전: 심장의 구조적 변화로 인해 발생할 수 있습니다.';

      symptoms =
      'LBBB의 증상은 다음과 같습니다:\n\n'
          '대부분 무증상이나, 심부전이 동반될 경우 호흡곤란과 피로가 나타날 수 있습니다.';

      feature =
      'LBBB의 ECG 특징은 다음과 같습니다:\n\n'
          '넓은 QRS 복합파: QRS 복합파가 120밀리초 이상으로 넓어집니다.\n\n'
          'V1 및 V6에서 양분된 QRS 모양: V1에서 S파가 깊고, V6에서 R파가 넓게 나타납니다.';

      treatment =
      'LBBB는 심부전 등 심장질환이 동반된 경우 치료가 필요합니다. '
          '심박조율기 삽입이 고려될 수 있으며, 기저 질환의 치료가 중요합니다.';
    } else
    if (widget.name == 'Right Bundle Branch Block' || widget.name == '우각 차단') {
      imageWidget = Image.asset('assets/images/class/right_bundle_branch_block.png');
      description =
      'Right Bundle Branch Block(RBBB)은 심장의 우심실로 가는 전기 신호가 지연되거나 차단되어 발생하는 전도 장애입니다. '
          '이로 인해 심장의 전기적 활동이 비정상적으로 나타날 수 있습니다.';

      causes =
      'RBBB의 원인은 다음과 같습니다:\n\n'
          '폐질환: 폐고혈압, 폐색전증 등이 RBBB를 유발할 수 있습니다.\n\n'
          '심장질환: 선천성 심장병, 심근경색 등이 원인이 될 수 있습니다.\n\n'
          '노화: 심장의 전도 시스템이 노화되면서 발생할 수 있습니다.';

      symptoms =
      'RBBB의 증상은 다음과 같습니다:\n\n'
          '대부분 무증상이나, 심각한 경우 호흡곤란이나 피로가 나타날 수 있습니다.';

      feature =
      'RBBB의 ECG 특징은 다음과 같습니다:\n\n'
          '넓은 QRS 복합파: QRS 복합파가 120밀리초 이상으로 넓어집니다.\n\n'
          'V1 및 V2에서 양분된 QRS 모양: V1에서 RSR\' 패턴이 나타납니다.';

      treatment =
      'RBBB는 일반적으로 특별한 치료가 필요하지 않으나, 기저 질환이 있는 경우 치료가 필요할 수 있습니다.';
    } else if (widget.name == 'Anterior Fascicular Block' ||
        widget.name == '전방 섬유 속 차단') {
      imageWidget = Image.asset('assets/images/class/anterior_fascicular_block.png');
      description =
      'Anterior Fascicular Block(AFB)은 심장의 전방 속삭임이 차단되어 좌심실의 전도 속도가 느려지는 상태를 말합니다. '
          '이는 ECG에서 좌축편위로 나타납니다.';

      causes =
      'AFB의 원인은 다음과 같습니다:\n\n'
          '심근경색: 좌심실의 전방부가 손상될 때 발생할 수 있습니다.\n\n'
          '심장질환: 고혈압, 대동맥 협착 등이 원인이 될 수 있습니다.';

      symptoms =
      'AFB의 증상은 대부분 무증상이나, 기저 심장질환이 동반될 경우 증상이 나타날 수 있습니다.';

      feature =
      'AFB의 ECG 특징은 다음과 같습니다:\n\n'
          '좌축편위: ECG에서 QRS 축이 -45도 이하로 좌측으로 편위됩니다.\n\n'
          '정상적인 QRS 복합파: QRS 복합파의 모양은 대체로 정상입니다.';

      treatment =
      'AFB는 보통 치료가 필요하지 않으며, 기저 질환이 있는 경우 해당 질환의 치료가 중요합니다.';
    } else if (widget.name == 'Posterior Fascicular Block' ||
        widget.name == '후방 섬유 속 차단') {
      imageWidget = Image.asset('assets/images/class/posterior_fascicular_block.png');
      description =
      'Posterior Fascicular Block(PFB)은 심장의 후방 속삭임이 차단되어 우심실의 전도 속도가 느려지는 상태를 말합니다. '
          '이는 ECG에서 우축편위로 나타납니다.';

      causes =
      'PFB의 원인은 다음과 같습니다:\n\n'
          '심근경색: 우심실의 후방부가 손상될 때 발생할 수 있습니다.\n\n'
          '심장질환: 대동맥 협착, 고혈압 등이 원인이 될 수 있습니다.';

      symptoms =
      'PFB의 증상은 대부분 무증상이나, 기저 심장질환이 동반될 경우 증상이 나타날 수 있습니다.';

      feature =
      'PFB의 ECG 특징은 다음과 같습니다:\n\n'
          '우축편위: ECG에서 QRS 축이 +90도 이상으로 우측으로 편위됩니다.\n\n'
          '정상적인 QRS 복합파: QRS 복합파의 모양은 대체로 정상입니다.';

      treatment =
      'PFB는 보통 치료가 필요하지 않으며, 기저 질환이 있는 경우 해당 질환의 치료가 중요합니다.';
    } else
    if (widget.name == 'Trifasicular Block' || widget.name == '삼섬유 속 차단') {
      imageWidget = Image.asset('assets/images/class/trifasicular_block.png');
      description =
      'Trifascicular Block은 심장의 세 개의 주요 전도 경로(우각과 좌각의 두 가지 가지)가 모두 차단된 상태를 말하며, '
          '이는 완전한 방실 차단으로 발전할 위험이 있습니다.';

      causes =
      'Trifascicular Block의 원인은 다음과 같습니다:\n\n'
          '심근경색: 심장의 넓은 영역이 손상될 때 발생할 수 있습니다.\n\n'
          '심부전: 심장의 기능이 약해지면서 전도 경로에 영향을 줄 수 있습니다.\n\n'
          '고혈압: 심장에 지속적인 압력이 가해지면 전도 시스템이 손상될 수 있습니다.';

      symptoms =
      'Trifascicular Block의 증상은 다음과 같습니다:\n\n'
          '서맥: 느린 심박수로 인해 피로, 어지럼증이 나타날 수 있습니다.\n\n'
          '실신: 심박수가 매우 느려지면 실신할 수 있습니다.';

      feature =
      'Trifascicular Block의 ECG 특징은 다음과 같습니다:\n\n'
          '넓은 QRS 복합파: QRS 복합파가 넓게 나타납니다.\n\n'
          'P파와 QRS의 관계: P파와 QRS 복합파 사이의 관계가 비정상적으로 나타납니다.';

      treatment =
      'Trifascicular Block은 증상이 심각할 경우 심박조율기 삽입이 필요할 수 있습니다. '
          '기저 질환의 치료도 중요합니다.';
    } else if (widget.name == 'Hyperkalemia' || widget.name == '고칼륨혈증') {
      imageWidget = Image.asset('assets/images/class/hyperkalemia.png');
      description =
      'Hyperkalemia(고칼륨혈증)은 혈중 칼륨 농도가 비정상적으로 높은 상태를 말하며, 이는 심장의 전기적 활동에 큰 영향을 미칠 수 있습니다.';

      causes =
      'Hyperkalemia의 원인은 다음과 같습니다:\n\n'
          '신부전: 신장이 칼륨을 제대로 배출하지 못할 때 발생할 수 있습니다.\n\n'
          '약물: 칼륨 보존 이뇨제, ACE 억제제 등이 원인이 될 수 있습니다.\n\n'
          '과도한 칼륨 섭취: 음식이나 보충제로 칼륨을 과도하게 섭취할 경우 발생할 수 있습니다.';

      symptoms =
      'Hyperkalemia의 증상은 다음과 같습니다:\n\n'
          '근육 약화: 칼륨 수치가 높아지면 근육 약화가 나타날 수 있습니다.\n\n'
          '심한 경우: 심한 고칼륨혈증은 심정지를 초래할 수 있습니다.';

      feature =
      'Hyperkalemia의 ECG 특징은 다음과 같습니다:\n\n'
          '뾰족한 T파: T파가 높고 뾰족하게 나타납니다.\n\n'
          '넓어진 QRS 복합파: QRS 복합파가 넓어지며, 이는 중증의 고칼륨혈증을 시사합니다.\n\n'
          'P파의 소실: P파가 소실될 수 있으며, 이는 심각한 상태를 나타냅니다.';

      treatment =
      'Hyperkalemia는 즉각적인 치료가 필요할 수 있으며, 칼륨 배출을 돕기 위한 약물 치료와 함께 원인 질환의 교정이 필요합니다. '
          '심각한 경우, 응급 치료가 필요할 수 있습니다.';
    } else if (widget.name == 'Left Ventricle Hypertrophy' ||
        widget.name == '좌심실 비대') {
      imageWidget =
          Image.asset('assets/images/class/left_ventricle_hypertrophy.png');
      description =
      'Left Ventricle Hypertrophy(좌심실 비대, LVH)는 좌심실의 근육 벽이 비대해진 상태를 의미하며, '
          '이는 심장의 펌프 기능에 부담을 주고, 심혈관계 질환의 위험을 증가시킬 수 있습니다.';

      causes =
      'LVH의 원인은 다음과 같습니다:\n\n'
          '고혈압: 지속적으로 높은 혈압이 좌심실에 부담을 주어 근육이 비대해질 수 있습니다.\n\n'
          '심장판막 질환: 대동맥 협착증 등의 판막 질환이 심장에 부담을 주어 비대해질 수 있습니다.\n\n'
          '운동: 고강도의 운동을 오랜 기간 지속하면 심장이 적응하여 비대해질 수 있습니다.';

      symptoms =
      'LVH의 증상은 다음과 같습니다:\n\n'
          '흉통: 좌심실 비대로 인해 심장이 충분한 산소를 공급받지 못해 흉통이 발생할 수 있습니다.\n\n'
          '호흡곤란: 좌심실 비대로 인해 심장의 펌프 기능이 저하되면서 호흡이 어려워질 수 있습니다.\n\n'
          '실신: 혈액 공급의 감소로 인해 어지럼증이나 실신이 발생할 수 있습니다.';

      feature =
      'LVH의 ECG 특징은 다음과 같습니다:\n\n'
          '높은 R파: V5, V6 리드에서 R파의 높이가 비정상적으로 높게 나타납니다.\n\n'
          '깊은 S파: V1, V2 리드에서 깊은 S파가 나타납니다.\n\n'
          'ST-T 변화: ST 분절의 하강 및 T파의 역전이 나타날 수 있습니다.';

      treatment =
      'LVH의 치료는 원인 질환의 치료가 중요합니다. '
          '고혈압 조절, 생활 습관 개선, 약물 치료 등이 필요할 수 있으며, '
          '심각한 경우 수술적 치료도 고려될 수 있습니다.';

    } else if (widget.name == 'Early repolarization syndrome' || widget.name == '조기 재분극 증후군') {
      imageWidget = Image.asset('assets/images/class/early_repolarization_syndrome.png');
      description =
      '조기 재분극(Early Repolarization)은 심전도에서 흔히 나타나는 소견으로, '
          '주로 젊고 건강한 사람들에서 관찰됩니다. 이는 심장 전기 활동에서 심실이 정상보다 일찍 재분극되는 것을 의미하며, '
          '흔히 심전도의 ST 분절 상승으로 나타납니다. 일반적으로는 무해하지만, 드물게 치명적인 부정맥과 연관될 수 있습니다.';

      causes =
      '조기 재분극의 원인은 다음과 같습니다:\n\n'
          '유전적 요인: 심장의 전기적 신호에 영향을 미치는 유전적 변이가 있을 수 있습니다.\n\n'
          '자율신경계 영향: 부교감 신경의 영향이 심장에 미치는 결과로 발생할 수 있습니다.\n\n'
          '전해질 불균형: 특히 칼륨, 칼슘, 마그네슘 등 전해질의 농도가 변화할 때 발생할 수 있습니다.\n\n'
          '심장 구조 변화: 간혹 심장의 해부학적 변화로 인해 조기 재분극이 나타날 수 있습니다.';

      symptoms =
      '조기 재분극은 일반적으로 증상이 없으며, 대부분 우연히 발견됩니다. 그러나 드물게 다음과 같은 증상이 있을 수 있습니다:\n\n'
          '두근거림: 드물게, 빠른 심박동이 동반될 수 있습니다.\n\n'
          '실신: 매우 드물지만 치명적인 부정맥으로 인해 실신할 수 있습니다.\n\n'
          '흉통: 매우 드물게, 조기 재분극이 급성 심장질환과 유사한 흉통을 유발할 수 있습니다.';

      feature =
      '조기 재분극의 ECG 특징은 다음과 같습니다:\n\n'
          'ST 분절 상승: 심전도 리드에서 ST 분절이 약간 상승하는 것이 가장 특징적입니다.\n\n'
          'J 파: QRS 복합파 끝에 작은 J 파가 나타날 수 있습니다.\n\n'
          '비대칭적 T파: 조기 재분극과 관련된 T파는 보통 비대칭적이고, T파의 크기가 크지 않은 것이 일반적입니다.\n\n'
          '일반적인 QRS: 조기 재분극의 경우, QRS 복합파는 일반적으로 정상적인 모양을 유지합니다.';

      treatment =
      '대부분의 조기 재분극은 치료가 필요하지 않습니다. 증상이 없거나 심전도에서만 관찰되는 경우, '
          '특별한 치료 없이 정기적인 추적 관찰만 권장됩니다.\n\n'
          '그러나 치명적인 부정맥이 동반되거나 가족력과 같은 위험 요소가 있는 경우, '
          '다음과 같은 치료가 고려될 수 있습니다:\n\n'
          '약물 치료: 항부정맥제나 베타 차단제가 사용될 수 있습니다.\n\n'
          '삽입형 제세동기(ICD): 생명을 위협하는 부정맥이 동반될 경우, 삽입형 제세동기가 필요할 수 있습니다.\n\n'
          '카테터 절제술: 매우 드물지만, 고위험 환자의 경우 비정상적인 전기 신호 경로를 제거하는 절제술을 시행할 수 있습니다.';

  } else if (widget.name == 'Torsades de Pointes' || widget.name == '꼬리 물기 빈맥 (Torsades de Pointes)') {
      imageWidget = Image.asset('assets/images/image.png');
      description =
      'Torsades de Pointes는 특이한 형태의 다형성 심실 빈맥으로, '
          '심박동이 매우 빠르고 불규칙하게 나타나는 생명을 위협하는 부정맥입니다.';

      causes =
      'Torsades de Pointes의 원인은 다음과 같습니다:\n\n'
          '긴 QT 간격: 선천성 또는 후천적으로 QT 간격이 연장된 경우 발생할 수 있습니다.\n\n'
          '전해질 불균형: 칼륨, 마그네슘, 칼슘의 불균형이 Torsades de Pointes를 유발할 수 있습니다.\n\n'
          '약물: 항부정맥제, 항생제, 항우울제 등 일부 약물이 QT 간격을 연장시킬 수 있습니다.';

      symptoms =
      'Torsades de Pointes의 증상은 다음과 같습니다:\n\n'
          '두근거림: 빠르고 불규칙한 심박동으로 인해 심한 두근거림이 느껴집니다.\n\n'
          '실신: 심장의 펌프 기능 저하로 인해 실신이 발생할 수 있습니다.\n\n'
          '심정지: 치료하지 않으면 심정지로 이어질 수 있습니다.';

      feature =
      'Torsades de Pointes의 ECG 특징은 다음과 같습니다:\n\n'
          '다형성 QRS 복합파: QRS 복합파의 크기와 방향이 주기적으로 변하는 패턴을 보입니다.\n\n'
          'QT 간격 연장: QT 간격이 길어져 있는 것이 특징입니다.';

      treatment =
      'Torsades de Pointes는 응급상황으로 즉각적인 치료가 필요합니다. '
          '마그네슘을 정맥으로 투여하거나, 심박조율기 또는 제세동을 사용할 수 있습니다.';
    } else if (widget.name == 'Myocarditis ECG' || widget.name == '심근염 심전도') {
      imageWidget = Image.asset('assets/images/image.png');
      description =
      'Myocarditis는 심장 근육의 염증을 의미하며, 바이러스 감염, 자가면역질환 등 다양한 원인에 의해 발생할 수 있습니다.';

      causes =
      'Myocarditis의 원인은 다음과 같습니다:\n\n'
          '바이러스 감염: 코사키바이러스, 에코바이러스 등이 Myocarditis의 주요 원인입니다.\n\n'
          '자가면역질환: 전신 홍반성 루푸스(SLE)와 같은 자가면역질환이 Myocarditis를 유발할 수 있습니다.\n\n'
          '독소: 알코올, 약물 등의 독성 물질이 Myocarditis를 일으킬 수 있습니다.';

      symptoms =
      'Myocarditis의 증상은 다음과 같습니다:\n\n'
          '흉통: 심장의 염증으로 인해 흉통이 발생할 수 있습니다.\n\n'
          '피로: 심장의 기능 저하로 인해 피로감이 나타날 수 있습니다.\n\n'
          '심부전: 심한 경우 심부전으로 진행될 수 있습니다.';

      feature =
      'Myocarditis의 ECG 특징은 다음과 같습니다:\n\n'
          'ST 분절 상승: 심근경색과 유사하게 ST 분절의 상승이 나타날 수 있습니다.\n\n'
          'T파의 변화: T파의 역전 또는 평탄화가 나타날 수 있습니다.';

      treatment =
      'Myocarditis의 치료는 원인에 따라 다르며, 바이러스 감염의 경우 대증요법이 필요합니다. '
          '심부전 증상이 있는 경우 약물 치료가 필요할 수 있으며, 심한 경우 입원 치료가 요구될 수 있습니다.';
    } else
    if (widget.name == 'Pulmonary Embolism ECG' || widget.name == '폐색전증 심전도') {
      imageWidget = Image.asset('assets/images/image.png');
      description =
      'Pulmonary Embolism(폐색전증)은 폐동맥이 혈전으로 인해 막히는 상태를 의미하며, '
          '이는 심각한 폐 및 심장 문제를 초래할 수 있습니다.';

      causes =
      'Pulmonary Embolism의 원인은 다음과 같습니다:\n\n'
          '심부정맥 혈전증(DVT): 다리나 골반의 정맥에 발생한 혈전이 폐동맥으로 이동하면서 발생합니다.\n\n'
          '비만: 비만은 혈전 생성의 위험을 증가시킬 수 있습니다.\n\n'
          '장기 부동 상태: 오랜 비행이나 수술 후 장시간 움직이지 않으면 혈전이 형성될 수 있습니다.';

      symptoms =
      'Pulmonary Embolism의 증상은 다음과 같습니다:\n\n'
          '갑작스러운 호흡곤란: 폐동맥이 막히면서 산소 교환이 어려워져 호흡곤란이 발생합니다.\n\n'
          '흉통: 폐동맥의 혈전으로 인해 가슴에 통증이 발생할 수 있습니다.\n\n'
          '실신: 폐혈전으로 인해 심박출량이 감소하면서 실신할 수 있습니다.';

      feature =
      'Pulmonary Embolism의 ECG 특징은 다음과 같습니다:\n\n'
          'S1Q3T3 패턴: Lead I에서 깊은 S파, Lead III에서 깊은 Q파와 역전된 T파가 나타날 수 있습니다.\n\n'
          'RBBB(우각차단): 폐색전증에서 일시적인 우각차단이 나타날 수 있습니다.';

      treatment =
      'Pulmonary Embolism의 치료는 응급 상황으로, 항응고제 또는 혈전 용해제를 사용하여 치료합니다. '
          '심각한 경우에는 수술적 치료도 필요할 수 있습니다.';
    } else
    if (widget.name == 'V Pacemaker Rhythm' || widget.name == '심실 심박조율기 리듬') {
      imageWidget = Image.asset('assets/images/class/v_pacemaker_rhythm.png');
      description =
      'Ventricular Pacemaker Rhythm(V심실 심박조율 리듬)은 인공 심박조율기가 심장의 심실 리듬을 조절하는 상태를 의미합니다. '
          '심실 리듬이 비정상적이거나 느릴 때 주로 사용됩니다. 이 리듬은 심실이 규칙적으로 자극되도록 하여 심장의 정상적인 펌프 기능을 유지합니다.';

      causes =
      'Ventricular Pacemaker Rhythm의 원인은 다음과 같습니다:\n\n'
          '1. 심실 서맥: 심장의 심실 리듬이 비정상적으로 느릴 때 심박조율기를 삽입합니다.\n\n'
          '2. 완전 방실 차단: 심방에서 심실로의 전기적 신호가 차단될 때 심박조율기가 필요합니다.\n\n'
          '3. 심부전: 심장의 펌프 기능이 저하되어 심실의 규칙적인 자극이 필요할 때 심박조율기를 사용할 수 있습니다.';

      symptoms =
      'Ventricular Pacemaker Rhythm의 증상은 대부분 없습니다. '
          '그러나 심박조율기가 작동할 때 일부 환자는 두근거림이나 가슴에 가벼운 불편함을 느낄 수 있습니다.';

      feature =
      'Ventricular Pacemaker Rhythm의 ECG 특징은 다음과 같습니다:\n\n'
          '1. Pacing Spike: ECG에서 심박조율기의 전기적 자극에 의한 스파이크가 QRS 복합파 바로 앞에 나타납니다.\n\n'
          '2. 넓은 QRS 복합파: 심실을 직접 자극하기 때문에 QRS 복합파가 넓어질 수 있습니다.\n\n'
          '3. 규칙적인 리듬: 심박조율기가 정상적으로 작동할 경우 심실의 리듬이 규칙적으로 나타납니다.';

      treatment =
      'Ventricular Pacemaker Rhythm의 치료는 심박조율기의 모니터링과 유지 관리가 중요합니다. '
          '정기적으로 배터리 상태를 점검하고, 필요 시 교체가 필요하며 심박조율기의 설정을 적절하게 조정하여 정상적인 리듬을 유지합니다.';
    }

    else
    if (widget.name == 'A Pacemaker Rhythm' || widget.name == '심방 심박조율기 리듬') {
      imageWidget = Image.asset('assets/images/class/a_pacemaker_rhythm.png');
      description =
      'Atrial Pacemaker Rhythm(A심방 심박조율 리듬)은 인공 심박조율기가 심장의 심방 리듬을 조절하는 상태를 의미합니다. '
          '심방 리듬이 비정상적이거나 느릴 때 주로 사용됩니다.';

      causes =
      'Atrial Pacemaker Rhythm의 원인은 다음과 같습니다:\n\n'
          '1. 서맥성 부정맥: 심방의 리듬이 비정상적으로 느려질 때 심박조율기가 필요합니다.\n\n'
          '2. 동방결절 기능 장애: 심방 리듬을 조절하는 동방결절의 기능이 저하될 때 심박조율기가 사용됩니다.\n\n'
          '3. 심방 전도 장애: 심방에서 전기 신호가 제대로 전달되지 않을 때 사용됩니다.';

      symptoms =
      'Atrial Pacemaker Rhythm의 증상은 대부분 없으며, 인공 심박조율기에 의해 심방의 정상적인 심박동이 유지됩니다. '
          '일부 환자들은 심박조율기에 의해 두근거림이나 경미한 불편함을 느낄 수 있습니다.';

      feature =
      'Atrial Pacemaker Rhythm의 ECG 특징은 다음과 같습니다:\n\n'
          '1. Pacing Spike: ECG에서 심박조율기의 전기적 자극에 의한 스파이크가 P파 앞에 나타납니다.\n\n'
          '2. 규칙적인 P파: 심박조율기가 정상적으로 작동할 경우 P파가 규칙적으로 나타납니다.\n\n'
          '3. 정상적인 QRS 복합파: 심박조율기가 심방 리듬만을 조절하므로, QRS 복합파는 정상 범위 내에 있을 수 있습니다.';

      treatment =
      'Atrial Pacemaker Rhythm의 치료는 심박조율기의 모니터링과 유지 관리가 중요합니다. '
          '심박조율기의 설정을 정기적으로 점검하고, 배터리 교체가 필요할 수 있으며, 주기적인 심전도 검사가 권장됩니다.';
    } else if (widget.name == 'Digoxin Effect' || widget.name == '디곡신 효과') {
      imageWidget = Image.asset('assets/images/image.png');
      description =
      'Digoxin은 심장 강화제로, 심부전 및 심방세동 치료에 사용됩니다. '
          'Digoxin Effect는 약물이 ECG에 미치는 특이한 변화를 의미합니다.';

      causes =
      'Digoxin Effect는 Digoxin 복용에 의해 발생하며, 다음과 같은 요인이 있습니다:\n\n'
          'Digoxin 과다 복용: 혈중 농도가 높아지면 독성 효과가 나타날 수 있습니다.\n\n'
          '신장 기능 저하: 신장 기능이 저하되면 Digoxin이 몸에 축적될 수 있습니다.';

      symptoms =
      'Digoxin Effect의 증상은 다음과 같습니다:\n\n'
          '구역 및 구토: Digoxin 과다 복용 시 나타날 수 있습니다.\n\n'
          '시각 이상: 황시(xanthopsia)와 같은 시각 장애가 발생할 수 있습니다.\n\n'
          '부정맥: 심박동이 불규칙해지거나 느려질 수 있습니다.';

      feature =
      'Digoxin Effect의 ECG 특징은 다음과 같습니다:\n\n'
          '비정상적인 ST 분절: ST 분절이 하강하면서 비정상적인 곡선을 그립니다.\n\n'
          '짧은 QT 간격: Digoxin 사용 시 QT 간격이 단축될 수 있습니다.';

      treatment =
      'Digoxin Effect의 치료는 Digoxin 복용량의 조절이 중요하며, 독성이 의심될 경우 즉각적인 중단과 해독치료가 필요할 수 있습니다.';
    } else if (widget.name == 'Brugada Syndrome' || widget.name == '브루가다 증후군') {
      imageWidget = Image.asset('assets/images/class/brugada_syndrome.png');
      description =
      'Brugada Syndrome은 유전성 심장질환으로, 심실세동과 갑작스러운 심정지를 일으킬 수 있는 위험한 상태입니다. '
          '주로 아시아 남성에서 흔하게 나타납니다.';

      causes =
      'Brugada Syndrome의 원인은 다음과 같습니다:\n\n'
          '유전적 요인: SCN5A 유전자 돌연변이가 Brugada Syndrome의 주요 원인입니다.';

      symptoms =
      'Brugada Syndrome의 증상은 다음과 같습니다:\n\n'
          '실신: 심실세동으로 인해 일시적인 의식 상실이 발생할 수 있습니다.\n\n'
          '야간 돌연사: 증상이 야간에 주로 발생하며, 자다가 갑작스러운 심정지가 발생할 수 있습니다.';

      feature =
      'Brugada Syndrome의 ECG 특징은 다음과 같습니다:\n\n'
          'ST 분절 상승: V1, V2 리드에서 비정상적인 ST 분절 상승이 나타납니다.\n\n'
          'RBBB 패턴: 우각차단(RBBB) 패턴이 보일 수 있습니다.';

      treatment =
      'Brugada Syndrome은 심각한 부정맥을 예방하기 위해 이식형 제세동기(ICD) 삽입이 권장됩니다.';
    } else
    if (widget.name == 'Long QT Syndrome' || widget.name == 'QT 연장 증후군') {
      imageWidget = Image.asset('assets/images/class/long_qt_syndrome.png');
      description =
      'Long QT Syndrome은 QT 간격이 비정상적으로 길어져 있는 상태로, '
          '심실 빈맥 및 돌연사를 유발할 수 있는 위험한 부정맥입니다.';

      causes =
      'Long QT Syndrome의 원인은 다음과 같습니다:\n\n'
          '유전적 요인: 선천적인 Long QT Syndrome은 특정 유전자 돌연변이에 의해 발생합니다.\n\n'
          '약물: 항생제, 항부정맥제, 항우울제 등 일부 약물이 QT 간격을 연장시킬 수 있습니다.\n\n'
          '전해질 불균형: 저칼륨혈증, 저칼슘혈증 등이 QT 간격을 연장시킬 수 있습니다.';

      symptoms =
      'Long QT Syndrome의 증상은 다음과 같습니다:\n\n'
          '두근거림: 심장이 불규칙하게 뛰며 두근거림을 느낄 수 있습니다.\n\n'
          '실신: 갑작스러운 의식 상실이 발생할 수 있습니다.\n\n'
          '돌연사: 적절히 치료되지 않으면 심실세동으로 인해 돌연사가 발생할 수 있습니다.';

      feature =
      'Long QT Syndrome의 ECG 특징은 다음과 같습니다:\n\n'
          '연장된 QT 간격: QT 간격이 비정상적으로 길게 나타납니다.\n\n'
          '다형성 심실 빈맥: Torsades de Pointes와 같은 위험한 부정맥이 발생할 수 있습니다.';

      treatment =
      'Long QT Syndrome의 치료는 약물 치료, 이식형 제세동기(ICD) 삽입 등이 포함될 수 있습니다. '
          '또한, QT 간격을 연장시키는 약물의 사용을 피해야 합니다.';
    } else if (widget.name == 'Asystole' || widget.name == '무수축') {
      imageWidget = Image.asset('assets/images/class/asystole.png');
      description =
      'Asystole은 심장이 더 이상 전기적 활동을 하지 않는 상태로, 심정지의 한 형태입니다. '
          'ECG 상에서 어떠한 심박동도 나타나지 않는 것이 특징입니다.';

      causes =
      'Asystole의 원인은 다음과 같습니다:\n\n'
          '심근경색: 광범위한 심근경색으로 인해 심장이 더 이상 전기 신호를 생성하지 못할 수 있습니다.\n\n'
          '중증 전해질 불균형: 극심한 칼륨 농도 변화 등이 심장의 전기 활동을 멈추게 할 수 있습니다.\n\n'
          '심장압전: 심낭에 과도한 액체가 축적되어 심장의 활동을 멈추게 할 수 있습니다.';

      symptoms =
      'Asystole의 증상은 다음과 같습니다:\n\n'
          '의식 상실: 심장이 멈추면서 즉각적으로 의식을 잃게 됩니다.\n\n'
          '호흡 정지: 심박출량이 없기 때문에 호흡도 정지합니다.';

      feature =
      'Asystole의 ECG 특징은 다음과 같습니다:\n\n'
          '평평한 선: ECG에서 어떠한 전기적 활동도 관찰되지 않으며, 완전히 평평한 선으로 나타납니다.';

      treatment =
      'Asystole는 응급 상황으로, 즉각적인 심폐소생술(CPR)과 에피네프린 투여가 필요합니다. '
          '기본적인 소생술 절차를 따르며, 심장의 전기적 활동이 회복되지 않으면 예후가 매우 나쁩니다.';
    } else if (widget.name == 'Inferior Infarction (RCA)' ||
        widget.name == '하벽 심근경색 (RCA)') {
      imageWidget =
          Image.asset('assets/images/class/inferior_infarction_(rca).png');
      description =
      'Inferior STEMI는 주로 우관상동맥(Right Coronary Artery, RCA)에서 발생하는 폐색으로 인해 발생하는 심근경색입니다. '
          '이 부위의 경색은 주로 심장의 하부에 영향을 미칩니다.';

      causes =
      'Inferior STEMI의 주요 원인은 다음과 같습니다:\n\n'
          '죽상경화증: 관상동맥의 죽상경화성 플라크가 파열되면서 혈전이 형성되어 RCA를 막습니다.\n\n'
          '혈전증: 혈전이 형성되어 관상동맥을 막습니다.\n\n'
          '기타 원인: 드물게 동맥류 파열이나 동맥염 등이 원인이 될 수 있습니다.';

      symptoms =
      'Inferior STEMI의 증상은 다음과 같습니다:\n\n'
          '흉통: 주로 가슴의 아래쪽이나 상복부에서 심한 통증이 발생합니다.\n\n'
          '호흡곤란: 심장의 펌프 기능이 저하되어 숨쉬기가 어려워질 수 있습니다.\n\n'
          '구역 및 구토: 미주신경 자극으로 인해 발생할 수 있습니다.';

      feature =
      'Inferior STEMI의 ECG 특징은 다음과 같습니다:\n\n'
          'ST 분절 상승: Lead II, III, aVF에서 ST 분절 상승이 나타납니다.\n\n'
          'Q파: 위 리드에서 병적 Q파가 나타날 수 있습니다.\n\n'
          'ST 분절 하강: V1, V2 리드에서 reciprocal ST 분절 하강이 나타날 수 있습니다.';

      treatment =
      'Inferior STEMI의 치료는 다음과 같습니다:\n\n'
          '응급 재관류 치료: PCI(경피적 관상동맥 중재술)나 혈전용해제를 통해 막힌 혈관을 재개통합니다.\n\n'
          '약물 치료: 항응고제, 항혈소판제, 베타 차단제 등을 사용하여 심장 손상을 최소화합니다.\n\n'
          '산소 공급 및 통증 관리: 산소 투여와 진통제를 사용하여 환자의 증상을 완화합니다.';
    } else if (widget.name == 'Anterior Infarction (LAD)' ||
        widget.name == '전벽 심근경색 (LAD)') {
      imageWidget =
          Image.asset('assets/images/class/anterior_infarction_(lad).png');
      description =
      'Anterior STEMI는 주로 좌전하행동맥(Left Anterior Descending artery, LAD)에서 발생하는 폐색으로 인해 발생하는 심근경색입니다. '
          '이 부위의 경색은 주로 심장의 전벽에 영향을 미칩니다.';

      causes =
      'Anterior STEMI의 주요 원인은 다음과 같습니다:\n\n'
          '죽상경화증: LAD의 죽상경화성 플라크가 파열되면서 혈전이 형성되어 동맥을 막습니다.\n\n'
          '혈전증: 혈전이 형성되어 관상동맥을 막습니다.\n\n'
          '기타 원인: 동맥류 파열이나 기타 드문 원인들이 있을 수 있습니다.';

      symptoms =
      'Anterior STEMI의 증상은 다음과 같습니다:\n\n'
          '심한 흉통: 가슴 중앙에서 발생하며, 왼팔, 목, 턱으로 방사될 수 있습니다.\n\n'
          '발한: 갑작스럽게 많은 땀이 나기 시작할 수 있습니다.\n\n'
          '실신: 심한 경우 의식을 잃을 수 있습니다.';

      feature =
      'Anterior STEMI의 ECG 특징은 다음과 같습니다:\n\n'
          'ST 분절 상승: V1-V4 리드에서 ST 분절 상승이 나타납니다.\n\n'
          'Q파: V1-V4 리드에서 병적 Q파가 나타날 수 있습니다.\n\n'
          'ST 분절 하강: V5, V6, I, aVL에서 reciprocal ST 분절 하강이 나타날 수 있습니다.';

      treatment =
      'Anterior STEMI의 치료는 다음과 같습니다:\n\n'
          '응급 재관류 치료: PCI(경피적 관상동맥 중재술)나 혈전용해제를 사용해 막힌 동맥을 재개통합니다.\n\n'
          '약물 치료: 항응고제, 항혈소판제, 베타 차단제 등을 사용하여 심장 손상을 최소화합니다.\n\n'
          '산소 공급 및 통증 관리: 산소와 진통제를 통해 환자의 증상을 완화합니다.';
    } else if (widget.name == 'Lateral Infarction (LCx)' ||
        widget.name == '측벽 심근경색 (LCx)') {
      imageWidget = Image.asset('assets/images/mLCx_total_STEMI_dominant.png');
      description =
      'Lateral STEMI는 주로 좌회선동맥(Left Circumflex artery, LCx)에서 발생하는 폐색으로 인해 발생하는 심근경색입니다. '
          '이 부위의 경색은 심장의 측벽에 영향을 미칩니다.';

      causes =
      'Lateral STEMI의 주요 원인은 다음과 같습니다:\n\n'
          '죽상경화증: LCx에서 죽상경화성 플라크가 파열되면서 혈전이 형성되어 동맥을 막습니다.\n\n'
          '혈전증: 혈전이 형성되어 관상동맥을 막습니다.\n\n'
          '기타 원인: 동맥류 파열 등이 있을 수 있습니다.';

      symptoms =
      'Lateral STEMI의 증상은 다음과 같습니다:\n\n'
          '흉통: 가슴의 측면에서 심한 통증이 발생합니다.\n\n'
          '호흡곤란: 좌심실 기능이 저하되어 숨쉬기가 어려울 수 있습니다.\n\n'
          '현기증: 심장의 펌프 기능이 저하되어 현기증이 발생할 수 있습니다.';

      feature =
      'Lateral STEMI의 ECG 특징은 다음과 같습니다:\n\n'
          'ST 분절 상승: V5, V6, I, aVL 리드에서 ST 분절 상승이 나타납니다.\n\n'
          'Q파: 위 리드에서 병적 Q파가 나타날 수 있습니다.\n\n'
          'ST 분절 하강: V1, V2에서 reciprocal ST 분절 하강이 나타날 수 있습니다.';

      treatment =
      'Lateral STEMI의 치료는 다음과 같습니다:\n\n'
          '응급 재관류 치료: PCI(경피적 관상동맥 중재술)나 혈전용해제를 사용해 막힌 동맥을 재개통합니다.\n\n'
          '약물 치료: 항응고제, 항혈소판제, 베타 차단제 등을 사용하여 심장 손상을 최소화합니다.\n\n'
          '산소 공급 및 통증 관리: 산소와 진통제를 통해 환자의 증상을 완화합니다.';
    } else if (widget.name == 'Main Coronary Infarction' ||
        widget.name == '주관상동맥 심근경색') {
      imageWidget = Image.asset('assets/images/image.png');
      description =
      'Main Coronary Infarction은 주로 좌주관동맥(Left Main Coronary Artery)의 폐색으로 인해 발생하는 심근경색으로, '
          '심장의 앞쪽과 측면 벽에 동시에 영향을 미칠 수 있는 매우 치명적인 상태입니다.';

      causes =
      'Main Coronary Infarction의 주요 원인은 다음과 같습니다:\n\n'
          '죽상경화증: 좌주관동맥의 죽상경화성 플라크 파열로 인해 혈전이 형성되어 동맥을 막습니다.\n\n'
          '혈전증: 혈전이 형성되어 좌주관동맥을 막습니다.\n\n'
          '기타 원인: 드물게 대동맥 박리로 인한 폐색 등이 있을 수 있습니다.';

      symptoms =
      'Main Coronary Infarction의 증상은 다음과 같습니다:\n\n'
          '극심한 흉통: 주로 가슴 중앙에서 발생하며, 좌측 팔, 목, 턱으로 방사될 수 있습니다.\n\n'
          '호흡곤란: 심장의 광범위한 손상으로 인해 심각한 호흡곤란이 나타날 수 있습니다.\n\n'
          '쇼크: 심장의 펌프 기능 저하로 인해 혈압이 급격히 떨어지며 쇼크 상태가 발생할 수 있습니다.';

      feature =
      'Main Coronary Infarction의 ECG 특징은 다음과 같습니다:\n\n'
          '광범위한 ST 분절 상승: V1-V6, I, aVL 리드에서 광범위한 ST 분절 상승이 나타날 수 있습니다.\n\n'
          'ST 분절 하강: reciprocal 변화로 V7-V9에서 ST 분절 하강이 나타날 수 있습니다.\n\n'
          'QT 간격 연장: 심각한 손상으로 인해 QT 간격이 연장될 수 있습니다.';

      treatment =
      'Main Coronary Infarction은 응급 상황으로, 즉각적인 치료가 필요합니다:\n\n'
          '응급 재관류 치료: PCI(경피적 관상동맥 중재술)나 CABG(관상동맥 우회술)가 필요할 수 있습니다.\n\n'
          '약물 치료: 항응고제, 항혈소판제, 베타 차단제 등을 사용하여 심장 손상을 최소화합니다.\n\n'
          '기계적 지원: 심각한 경우, IABP(대동맥 내 풍선 펌프)나 ECMO(체외막 산소공급)와 같은 기계적 지원이 필요할 수 있습니다.';
    } else if (widget.name == 'Pulseless Electronic Asystole' ||
        widget.name == '무맥성 전기 활동 (PEA)') {
      imageWidget = Image.asset('assets/images/image.png');
      description =
      'PEA(Pulseless Electrical Activity)는 심전도 상에서는 심박동이 존재하지만, 실제로는 맥박이 없는 상태를 의미합니다. 이는 심정지의 한 형태로, 응급 상황에서 빠른 대응이 필요합니다.';

      causes =
      'PEA의 주요 원인은 다음과 같습니다:\n\n'
          '1. Hypovolemia: 혈액량 감소로 인해 심장이 충분한 혈액을 펌프질하지 못할 수 있습니다.\n\n'
          '2. Hypoxia: 산소 공급 부족으로 인해 심장이 효과적으로 작동하지 못할 수 있습니다.\n\n'
          '3. Acidosis: 대사성 또는 호흡성 산증이 심장 기능에 영향을 줄 수 있습니다.\n\n'
          '4. Tension Pneumothorax: 기흉이 심장의 기능을 제한할 수 있습니다.\n\n'
          '5. Cardiac Tamponade: 심낭에 체액이 축적되어 심장이 제대로 펌프질할 수 없습니다.\n\n'
          '6. Hypo/Hyperkalemia: 칼륨 수치의 이상이 심장 기능에 영향을 줄 수 있습니다.\n\n'
          '7. Thrombosis: 폐색전증 또는 관상동맥 혈전이 심정지를 유발할 수 있습니다.';

      symptoms =
      'PEA의 증상은 다음과 같습니다:\n\n'
          '1. 의식 상실: 심장이 효과적으로 펌프질하지 않기 때문에 의식 상실이 발생합니다.\n\n'
          '2. 호흡 정지: 산소 공급이 부족하여 호흡이 멈출 수 있습니다.\n\n'
          '3. 맥박 부재: 심전도에서는 심박동이 보이지만, 실제로 맥박이 잡히지 않습니다.';

      feature =
      'PEA의 ECG 특징은 다음과 같습니다:\n\n'
          '1. 심전도 상 심박동이 보임: 심전도에서는 심박동이 존재하나, 실제로는 맥박이 없습니다.\n\n'
          '2. 다양한 심전도 패턴: PEA는 심방세동, 동성 리듬 등 다양한 심전도 패턴으로 나타날 수 있습니다.';

      treatment =
      'PEA는 응급 상황으로 즉각적인 심폐소생술(CPR)과 에피네프린 투여가 필요합니다. 원인을 신속하게 파악하고 교정해야 하며, 기본 소생술 절차를 따르는 것이 중요합니다.';
    }

    else if (widget.name == 'Wellens Syndrome' || widget.name == '웰렌 증후군') {
      imageWidget = Image.asset('assets/images/class/wellens_syndrome.png');
      description =
      'Wellens Syndrome은 좌전하행동맥(LAD)의 심각한 협착 또는 폐색을 시사하는 심전도 소견입니다. 이 증후군은 심근경색의 전조로 간주되며, 신속한 진단과 치료가 필요합니다.';

      causes =
      'Wellens Syndrome의 주요 원인은 다음과 같습니다\n\n'
          '1. 좌전하행동맥의 죽상경화성 협착: 주요 원인은 관상동맥의 죽상경화성 플라크 형성입니다.\n\n'
          '2. 급성 관상동맥 증후군: 관상동맥의 부분적 또는 일시적 폐색으로 인해 발생할 수 있습니다.';

      symptoms =
      'Wellens Syndrome의 증상은 다음과 같습니다:\n\n'
          '1. 흉통: 주로 흉부 중심에서 발생하며, 운동 중에 악화될 수 있습니다.\n\n'
          '2. 무증상: 일부 환자들은 흉통이 없는 상태에서도 Wellens Syndrome의 ECG 소견을 보일 수 있습니다.';

      feature =
      'Wellens Syndrome의 ECG 특징은 다음과 같습니다:\n\n'
          '1. V2-V3 리드에서의 T파의 비정상적 역전: 이는 좌전하행동맥의 심각한 협착을 나타냅니다.\n\n'
          '2. ST 분절의 변화가 거의 없음: T파 역전 외에 ST 분절 상승 또는 하강이 거의 없습니다.';

      treatment =
      'Wellens Syndrome은 급성 심근경색으로 발전할 위험이 높으므로, 즉각적인 관상동맥 조영술 및 혈관 재개통이 필요합니다. PCI(경피적 관상동맥 중재술) 또는 CABG(관상동맥 우회로 이식술)가 고려될 수 있습니다.';
    }

    else if (widget.name == 'Aortic Dissection' || widget.name == '대동맥 박리') {
      imageWidget = Image.asset('assets/images/class/aortic_dissection.png');
      description =
      'Aortic Dissection(대동맥 박리)은 대동맥 벽의 내층이 찢어지면서 혈액이 대동맥 벽을 따라 흘러가고, 이로 인해 내벽과 외벽 사이가 분리되는 상태입니다. 이는 즉각적인 치료가 필요한 생명을 위협하는 응급 상황입니다.';

      causes =
      'Aortic Dissection의 주요 원인은 다음과 같습니다:\n\n'
          '1. 고혈압: 높은 혈압이 대동맥 벽에 지속적인 압력을 가해 박리를 유발할 수 있습니다.\n\n'
          '2. 대동맥 벽의 약화: Marfan 증후군, Ehlers-Danlos 증후군과 같은 결합 조직 질환이 원인이 될 수 있습니다.\n\n'
          '3. 외상: 교통사고 등의 심각한 외상이 대동맥 박리를 유발할 수 있습니다.';

      symptoms =
      'Aortic Dissection의 증상은 다음과 같습니다:\n\n'
          '1. 갑작스럽고 심한 흉통: 주로 흉부 중앙에서 발생하며, 등이나 복부로 방사될 수 있습니다.\n\n'
          '2. 실신: 대동맥 박리로 인한 출혈이나 심장 혈류 감소로 실신이 발생할 수 있습니다.\n\n'
          '3. 호흡 곤란 및 발한: 박리로 인해 발생하는 급성 스트레스로 인해 나타날 수 있습니다.';

      feature =
      'Aortic Dissection의 ECG 특징은 다양할 수 있으며, 일반적으로 특정한 특징이 없습니다. 종종 정상으로 보일 수 있지만, 흉통과 관련된 ECG 이상이 있을 수 있습니다.\n\n'
          '1. ST 분절 상승 또는 하강: 대동맥 박리와 동반된 심근경색이 있는 경우 나타날 수 있습니다.';

      treatment =
      'Aortic Dissection은 응급 수술이 필요할 수 있으며, 특히 Type A(상행 대동맥 포함) 박리의 경우 즉각적인 수술이 필요합니다. Type B(하행 대동맥) 박리는 약물로 혈압을 낮추고, 상황에 따라 수술이 필요할 수 있습니다.';
    }

    else if (widget.name == 'WPW syndrome' || widget.name == 'WPW 증후군') {
      imageWidget = Image.asset('assets/images/image.png');
      description =
      'WPW(Wolff-Parkinson-White) Syndrome은 심장의 전기 신호가 방실결절을 우회하는 추가적인 전도 경로(켄트 번들)를 통해 전달되면서 발생하는 부정맥입니다.';

      causes =
      'WPW Syndrome의 주요 원인은 다음과 같습니다:\n\n'
          '1. 선천적: WPW는 선천적인 상태로, 태어날 때부터 추가적인 전도 경로를 가지고 있습니다.';

      symptoms =
      'WPW Syndrome의 증상은 다음과 같습니다:\n\n'
          '1. 두근거림: 갑작스럽고 빠른 심박동이 느껴질 수 있습니다.\n\n'
          '2. 어지럼증: 빠른 심박동으로 인해 혈압이 떨어지면서 어지럼증이 발생할 수 있습니다.\n\n'
          '3. 실신: 심박동의 급격한 변화로 인해 의식을 잃을 수 있습니다.';

      feature =
      'WPW Syndrome의 ECG 특징은 다음과 같습니다:\n\n'
          '1. 단축된 PR 간격: PR 간격이 120ms 이하로 짧아집니다.\n\n'
          '2. 델타 파: QRS 복합파의 초기 부분이 서서히 상승하는 델타 파가 나타납니다.\n\n'
          '3. 넓어진 QRS 복합파: QRS 복합파가 120ms 이상으로 넓어질 수 있습니다.';

      treatment =
      'WPW Syndrome의 치료는 증상의 심각도에 따라 다릅니다. 경증의 경우 증상을 관리하는 약물을 사용할 수 있으며, 심한 경우 카테터 절제술을 통해 추가적인 전도 경로를 제거할 수 있습니다. ';
    }

    if (widget.name == 'Septic shock' || widget.name == '패혈성 쇼크') {
      imageWidget = Image.asset('assets/images/class/septic_shock.png');
      description =
      'Septic shock(패혈성 쇼크)은 심각한 감염으로 인해 발생하며, 신체의 면역 반응이 과도하게 활성화되어 조직과 장기에 손상을 주고, '
          '혈압이 급격히 저하되는 응급 상태입니다. 이로 인해 혈액순환과 산소 공급이 불충분해져 여러 장기의 기능이 저하되거나 멈추게 됩니다. '
          '패혈성 쇼크는 사망률이 매우 높은 상태로, 빠른 진단과 치료가 필수적입니다.';

      causes =
      'Septic shock은 심각한 세균, 바이러스, 곰팡이 감염에 의해 발생할 수 있습니다. 주로 폐렴, 복막염, 요로 감염, '
          '피부 감염과 같은 감염이 신체의 여러 부위로 퍼져나가며 패혈증으로 진행됩니다. '
          '일반적으로 패혈증이 제대로 치료되지 않거나, 감염이 혈류를 통해 온몸으로 퍼질 때 septic shock이 발생합니다.';

      symptoms =
      'Septic shock의 주요 증상은 다음과 같습니다:\n\n'
          '1. 심한 저혈압: 혈압이 매우 낮아져서 혈액순환이 제대로 이루어지지 않습니다.\n'
          '2. 호흡 곤란: 혈액 내 산소 운반 능력이 저하되어 숨쉬기가 힘들어집니다.\n'
          '3. 의식 혼미 및 혼란: 혈압 저하와 산소 부족으로 인해 뇌에 산소 공급이 원활하지 않으면서 의식 혼란이나 혼미가 발생합니다.\n'
          '4. 체온 이상: 고열 또는 저체온이 나타날 수 있으며, 이는 감염의 정도에 따라 달라질 수 있습니다.\n'
          '5. 소변량 감소: 신장으로의 혈류가 감소하면서 소변량이 현저히 줄어들 수 있습니다.\n';

      feature =
      'Septic shock의 진단은 임상 증상과 검사 결과를 종합하여 이루어지며, 다음과 같은 특징을 보일 수 있습니다:\n\n'
          '1. 혈압 저하: 혈압이 극도로 낮아지고, 정맥 주사나 수액으로도 혈압을 유지하기 힘든 상태입니다.\n'
          '2. 혈중 젖산 수치 증가: 젖산 수치가 높아지면 조직에 산소 공급이 부족하다는 의미로, 이는 패혈성 쇼크의 중증도를 나타냅니다.\n'
          '3. 다발성 장기 부전: 신장, 간, 심장 등의 장기가 제대로 기능하지 못하고, 결국 부전 상태에 이를 수 있습니다.\n';

      treatment =
      'Septic shock의 치료는 빠르고 공격적으로 이루어져야 하며, 다음과 같은 방법이 사용됩니다:\n\n'
          '1. 항생제 치료: 감염의 원인을 파악하여 적절한 항생제를 빠르게 투여하는 것이 중요합니다.\n'
          '2. 수액 공급: 저혈압을 교정하기 위해 대량의 수액이 정맥으로 투여됩니다.\n'
          '3. 혈관수축제(바소프레서): 혈압을 유지하기 위해 혈관을 수축시키는 약물이 사용됩니다(노르에피네프린 등).\n'
          '4. 산소 공급 및 인공호흡기: 호흡 곤란이 있을 경우 산소 공급이나 인공호흡기를 사용하여 호흡을 돕습니다.\n'
          '5. 기저 질환 치료: 원인이 되는 감염 부위를 수술이나 배농으로 제거하거나 관리합니다.';
    }

    if (widget.name == 'Stress Induced CMP' || widget.name == '스트레스 유발 심근병증') {
      imageWidget = Image.asset('assets/images/class/stress_induced_cmp.png');
      description =
      'Stress induced cardiomyopathy(스트레스 유발 심근병증) 또는 Takotsubo cardiomyopathy는 '
          '심한 정서적 또는 신체적 스트레스 상황에서 심장의 좌심실 근육이 일시적으로 기능을 잃는 상태를 말합니다. '
          '이는 심장 발작과 비슷한 증상을 보이지만, 관상동맥에 명확한 막힘은 발견되지 않습니다. 주로 여성에게 많이 발생하며, '
          '심각한 스트레스 사건 후에 자주 보고됩니다.';

      causes =
      'Stress-induced cardiomyopathy의 주요 원인은 극도의 스트레스 상황입니다. 일반적으로 다음과 같은 상황이 유발 원인이 될 수 있습니다:\n\n'
          '1. 정서적 스트레스: 사랑하는 사람의 죽음, 심각한 이별, 극도의 공포와 같은 정서적 충격이 원인이 됩니다.\n'
          '2. 신체적 스트레스: 중대한 수술, 교통사고, 심각한 신체적 상해가 발병 원인이 될 수 있습니다.\n'
          '3. 신경 호르몬의 과도한 분비: 스트레스 상황에서 아드레날린과 같은 호르몬이 과도하게 분비되어 심장에 영향을 줍니다.';

      symptoms =
      'Stress-induced cardiomyopathy의 증상은 심근경색과 매우 유사합니다:\n\n'
          '1. 흉통: 가슴 중앙에서 발생하는 통증으로, 일반적으로 심근경색과 비슷한 형태로 나타납니다.\n'
          '2. 호흡 곤란: 심장의 기능이 일시적으로 저하되면서 호흡 곤란이 나타날 수 있습니다.\n'
          '3. 피로 및 어지럼증: 심장 기능 저하로 인해 신체에 충분한 혈액이 공급되지 않으면 피로와 어지럼증이 발생합니다.\n';
      feature =
      'Stress-induced cardiomyopathy의 ECG와 심초음파에서 나타나는 특징은 다음과 같습니다:\n\n'
          '1. ST 분절 상승: 심근경색과 유사하게 ST 분절의 상승이 나타날 수 있습니다.\n'
          '2. 관상동맥 폐색 없음: 관상동맥 조영술을 통해 막힌 혈관이 없음을 확인할 수 있습니다.\n'
          '3. 심초음파에서 좌심실의 일시적 비정상적 움직임: 좌심실 상단 부분이 수축하지 않거나 약하게 수축하는 모습을 보입니다.';
      treatment =
      'Stress-induced cardiomyopathy는 일반적으로 시간이 지나면 회복되지만, 치료가 필요할 수 있습니다:\n\n'
          '1. 대증 치료: 베타 차단제나 ACE 억제제 등으로 심장 기능을 지원합니다.\n'
          '2. 원인 제거: 스트레스 원인을 파악하고 제거하는 것이 중요합니다.\n'
          '3. 정기적인 심장 모니터링: 심장 기능이 정상으로 돌아올 때까지 심초음파와 ECG 검사를 정기적으로 수행합니다.';
    }

    if (widget.name == 'Old MI' || widget.name == '오래된 심근경색') {
      imageWidget = Image.asset('assets/images/class/old_mi.png');
      description =
      'Old myocardial infarction(과거 심근경색)은 이전에 발생한 심근경색을 의미하며, '
          '이로 인해 손상된 심장 근육이 영구적으로 기능을 잃은 상태를 나타냅니다. '
          '심장 근육의 일부가 죽은 이후에도 ECG에서 그 흔적이 남아 진단할 수 있습니다.';
      causes =
      'Old MI의 원인은 주로 관상동맥의 죽상경화증으로, 혈관이 막혀 심장으로 가는 산소와 영양이 차단되면서 발생합니다. '
          '다음과 같은 원인들이 주요하게 작용합니다:\n\n'
          '1. 죽상경화증: 혈관 내벽에 지방과 콜레스테롤이 쌓여 관상동맥이 좁아집니다.\n'
          '2. 혈전증**: 죽상경화증으로 손상된 내벽에 혈전이 형성되어 혈관을 막습니다.\n'
          '3. 고혈압, 당뇨, 흡연: 이러한 위험 요인들이 죽상경화증과 혈관 손상을 가속화할 수 있습니다.\n';
      symptoms =
      'Old MI 자체는 일반적으로 무증상이지만, 심근경색으로 인해 손상된 심장이 기능을 완전히 회복하지 못할 경우 다음과 같은 증상이 나타날 수 있습니다:\n\n'
          '1. 지속적인 흉통: 심장에 영구적인 손상이 남았을 경우, 지속적인 흉통이 나타날 수 있습니다.\n'
          '2. 피로감: 심장 기능이 저하되어 신체에 충분한 혈액이 공급되지 않으면 만성적인 피로가 발생할 수 있습니다.\n'
          '3. 호흡 곤란: 좌심실 기능이 저하되어 호흡이 어려워질 수 있습니다.';

      feature =
      'Old MI의 ECG 특징은 다음과 같습니다:\n\n'
          '1. Q파: 병적 Q파가 나타날 수 있으며, 이는 이전에 발생한 심근 손상을 나타냅니다.\n'
          '2. ST 분절 정상화: 심근경색이 일어난 지 오래된 경우, ST 분절은 정상으로 돌아오지만 Q파는 그대로 남습니다.\n'
          '3. T파 변화: 일부 환자에서는 T파 역전이 남아 있을 수 있습니다.\n';
      treatment =
      'Old MI는 과거에 발생한 손상이므로, 주요 치료 목표는 심장 기능을 보호하고 추가적인 심근경색을 예방하는 것입니다:\n\n'
          '1. 항혈소판제: 아스피린과 같은 항혈소판제를 사용하여 혈전 형성을 방지합니다.\n'
          '2. 베타 차단제: 심장의 부담을 줄이고 심근을 보호합니다.\n'
          '3. 스타틴: 고지혈증이 있을 경우 스타틴을 사용하여 콜레스테롤 수치를 관리합니다.\n'
          '4. 생활 습관 개선: 규칙적인 운동과 건강한 식습관, 금연 등이 심혈관계 질환 예방에 필수적입니다.';
    }

    else {
      // description 기본값을 설정하지 않음 (기본적으로 각 항목에 대해 설정된 description이 그대로 유지됨)
    }

    return Scaffold(
      appBar: AppBar(
        title: Text(
          '${widget.name} 의 심전도',
          style: TextStyle(fontSize: 16),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: ListView(
          children: [
            GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => FullScreenImage(
                      imageAssetPath: _getImagePath(widget.name),
                    ),
                  ),
                );
              },
              child: imageWidget,
            ),
            SizedBox(height: 16),
            _buildCard('설명', description, showDescription, (expanded) {
              setState(() {
                showDescription = expanded;
              });
            }),
            if (causes.isNotEmpty)
              _buildCard('원인', causes, showCauses, (expanded) {
                setState(() {
                  showCauses = expanded;
                });
              }),
            if (symptoms.isNotEmpty)
              _buildCard('증상', symptoms, showSymptoms, (expanded) {
                setState(() {
                  showSymptoms = expanded;
                });
              }),
            if (feature.isNotEmpty)
              _buildCard('특징', feature, showFeature, (expanded) {
                setState(() {
                  showFeature = expanded;
                });
              }),
            if (treatment.isNotEmpty)
              _buildCard('치료', treatment, showTreatment, (expanded) {
                setState(() {
                  showTreatment = expanded;
                });
              }),
          ],
        ),
      ),
    );
  }

  Widget _buildCard(String title, String content, bool isExpanded, Function(bool) onExpansionChanged) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 6.0),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.2),
            spreadRadius: 2,
            blurRadius: 5,
            offset: Offset(0, 3),
          ),
        ],
      ),
      child: Theme(
        data: Theme.of(context).copyWith(dividerColor: Colors.transparent), // 구분선을 투명하게 설정
        child: ExpansionTile(
          title: Text(
            title,
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
          ),
          trailing: Icon(
            isExpanded ? Icons.keyboard_arrow_down : Icons.keyboard_arrow_right,
          ),
          onExpansionChanged: onExpansionChanged,
          children: [
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Text(
                content,
                style: TextStyle(fontSize: 16),
              ),
            ),
          ],
        ),
      ),
    );
  }




  String _getImagePath(String name) {
    switch (name) {
      case 'Sinus Rhythm':
      case '동성 리듬':
        return 'assets/images/class/sinus_rhythm.png';
      case 'Sinus Bradycardia':
      case '동성 서맥':
        return 'assets/images/class/sinus_bradycardia.png';
      case 'Sinus Tachycardia':
      case '동성 빈맥':
        return 'assets/images/class/sinus_tachycardia.png';
      case 'Atrial Premature Contraction':
      case '심방 조기수축':
        return 'assets/images/class/atrial_premature_contraction.png';
      case 'Ventricular Premature Contraction':
      case '심실 조기수축':
        return 'assets/images/class/ventricular_premature_contraction.png';
      case 'First Degree Block':
      case '1도 방실차단':
        return 'assets/images/class/first_degree_block.png';
      case 'Second Degree Block (Mobitz Type I)':
      case '2도 방실차단 (Mobitz Type I)':
        return 'assets/images/class/second_degree_block_(mobitz_type_i).png';
      case 'Second Degree Block (Mobitz Type II)':
      case '2도 방실차단 (Mobitz Type II)':
        return 'assets/images/class/second_degree_block_(mobitz_type_ii).png';
      case 'Complete Degree Block':
      case '완전 방실차단':
        return 'assets/images/class/complete_degree_block.png';
      case 'Atrial Flutter':
      case '심방 조동':
        return 'assets/images/class/atrial_flutter.png';
      case 'Atrial Fibrillation':
      case '심방 세동':
        return 'assets/images/class/atrial_fibrillation.png';
      case 'Ventricular Tachycardia':
      case '심실 빈맥':
        return 'assets/images/class/ventricular_tachycardia.png';
      case 'Non-sustain VT':
      case '비지속성 심실 빈맥':
        return 'assets/images/class/non_sustain_vt.png';
      case 'Sustain VT':
      case '지속성 심실 빈맥':
        return 'assets/images/class/sustain_vt.png';
      case 'Ventricular Fibrillation':
      case '심실 세동':
        return 'assets/images/class/ventricular_fibrillation.png';
      case 'AVNRT':
      case '방실결절 회귀성 빈맥 (AVNRT)':
        return 'assets/images/class/avnrt.png';
      case 'AVRT':
      case '방실 회귀성 빈맥 (AVRT)':
        return 'assets/images/class/avrt.png';
      case 'Junctional Escape Rhythm':
      case '결절 이탈 리듬':
        return 'assets/images/class/junctional_escape_rhythm.png';
      case 'Accelerated Idioventricular Rhythm':
      case '가속 심실 고유리듬':
        return 'assets/images/class/accelerated_idioventricular_rhythm.png';
      case 'Left Bundle Branch Block':
      case '좌각 차단':
        return 'assets/images/class/left_bundle_branch_block.png';
      case 'Right Bundle Branch Block':
      case '우각 차단':
        return 'assets/images/class/right_bundle_branch_block.png';
      case 'Anterior Fascicular Block':
      case '전방 섬유 속 차단':
        return 'assets/images/class/anterior_fascicular_block.png';
      case 'Posterior Fascicular Block':
      case '후방 섬유 속 차단':
        return 'assets/images/class/posterior_fascicular_block.png';
      case 'Trifasicular Block':
      case '삼섬유 속 차단':
        return 'assets/images/class/trifasicular_block.png';
      case 'Hyperkalemia':
      case '고칼륨혈증':
        return 'assets/images/class/hyperkalemia.png';
      case 'Left Ventricle Hypertrophy':
      case '좌심실 비대':
        return 'assets/images/class/left_ventricle_hypertrophy.png';
      case 'Early repolarization syndrome':
      case '조기 재분극 증후군':
        return 'assets/images/class/early_repolarization_syndrome.png';
      case 'Torsades de Pointes':
      case '꼬리 물기 빈맥 (Torsades de Pointes)':
        return 'assets/images/class/torsades_de_pointes.png';
      case 'Myocarditis ECG':
      case '심근염 심전도':
        return 'assets/images/class/myocarditis_ecg.png';
      case 'Pulmonary Embolism ECG':
      case '폐색전증 심전도':
        return 'assets/images/class/pulmonary_embolism_ecg.png';
      case 'V Pacemaker Rhythm':
      case '심실 심박조율기 리듬':
        return 'assets/images/class/v_pacemaker_rhythm.png';
      case 'A Pacemaker Rhythm':
      case '심방 심박조율기 리듬':
        return 'assets/images/class/a_pacemaker_rhythm.png';
      case 'Digoxin Effect':
      case '디곡신 효과':
        return 'assets/images/class/digoxin_effect.png';
      case 'Brugada Syndrome':
      case '브루가다 증후군':
        return 'assets/images/class/brugada_syndrome.png';
      case 'Long QT Syndrome':
      case 'QT 연장 증후군':
        return 'assets/images/class/long_qt_syndrome.png';
      case 'Asystole':
      case '무수축':
        return 'assets/images/class/asystole.png';
      case 'Pulseless Electronic Asystole':
      case '무맥성 전기 활동 (PEA)':
        return 'assets/images/class/pulseless_electronic_asystole.png';
      case 'Wellens Syndrome':
      case '웰렌 증후군':
        return 'assets/images/class/wellens_syndrome.png';
      case 'Aortic Dissection':
      case '대동맥 박리':
        return 'assets/images/class/aortic_dissection.png';
      case 'WPW syndrome':
      case 'WPW 증후군':
        return 'assets/images/class/wpw_syndrome.png';
      case 'Septic shock':
      case '패혈성 쇼크':
        return 'assets/images/class/septic_shock.png';
      case 'Stress Induced CMP':
      case '스트레스 유발 심근병증':
        return 'assets/images/class/stress_induced_cmp.png';
      case 'Inferior Infarction (RCA)':
      case '하벽 심근경색 (RCA)':
        return 'assets/images/class/inferior_infarction_(rca).png';
      case 'Anterior Infarction (LAD)':
      case '전벽 심근경색 (LAD)':
        return 'assets/images/class/anterior_infarction_(lad).png';
      case 'Lateral Infarction (LCx)':
      case '측벽 심근경색 (LCx)':
        return 'assets/images/class/lateral_infarction_(lcx).png';
      case 'Main Coronary Infarction':
      case '주관상동맥 심근경색':
        return 'assets/images/class/main_coronary_infarction.png';
      case 'Old MI':
      case '오래된 심근경색':
        return 'assets/images/class/old_mi.png';
      default:
        return 'assets/images/default.png'; // 기본 이미지
    }
  }
}

class FullScreenImage extends StatefulWidget {
  final String imageAssetPath;

  FullScreenImage({required this.imageAssetPath});

  @override
  _FullScreenImageState createState() => _FullScreenImageState();
}

class _FullScreenImageState extends State<FullScreenImage> {
  double rotationAngle = 90; // 처음에 90도로 회전된 상태

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GestureDetector(
        onTap: () {
          Navigator.pop(context); // 이미지 클릭 시 이전 페이지로 돌아감
        },
        child: InteractiveViewer(
          panEnabled: true, // 드래그 가능
          scaleEnabled: true, // 확대/축소 가능
          minScale: 1.0, // 최소 배율
          maxScale: 4.0, // 최대 배율
          child: Center(
            child: Transform.rotate(
              angle: rotationAngle * (3.14 / 180), // 90도로 회전
              child: Image.asset(
                widget.imageAssetPath,
                fit: BoxFit.contain, // 이미지가 화면에 맞게 조정됨
              ),
            ),
          ),
        ),
      ),
    );
  }
}
