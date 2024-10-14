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
          '정상적인 동성 리듬은 보통 1분에 60에서 100회 사이의 심박수를 유지합니다.';
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
    }

    else {
      // description 기본값을 설정하지 않음 (기본적으로 각 항목에 대해 설정된 description이 그대로 유지됨)
    }


    // 이미지를 클릭하면 전체 화면으로 확대하여 보여주는 기능


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
                    builder: (context) =>
                        FullScreenImage(
                          imageAssetPath: _getImagePath(widget.name),
                        ),
                  ),
                );
              },
              child: imageWidget,
            ),
            SizedBox(height: 16),
            ExpansionTile(
              title: Text(
                '설명',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
              ),
              trailing: Icon(
                showDescription
                    ? Icons.keyboard_arrow_down
                    : Icons.keyboard_arrow_right,
              ),
              onExpansionChanged: (expanded) {
                setState(() {
                  showDescription = expanded;
                });
              },
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16.0),
                  child: Text(
                    description,
                    style: TextStyle(fontSize: 16),
                  ),
                ),
                SizedBox(height: 10),
              ],
            ),
            if (causes.isNotEmpty)
              ExpansionTile(
                title: Text(
                  '원인',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                ),
                trailing: Icon(
                  showCauses
                      ? Icons.keyboard_arrow_down
                      : Icons.keyboard_arrow_right,
                ),
                onExpansionChanged: (expanded) {
                  setState(() {
                    showCauses = expanded;
                  });
                },
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 16.0),
                    child: Text(
                      causes,
                      style: TextStyle(fontSize: 16),
                    ),
                  ),
                  SizedBox(height: 10),
                ],
              ),
            if (symptoms.isNotEmpty)
              ExpansionTile(
                title: Text(
                  '증상',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                ),
                trailing: Icon(
                  showSymptoms
                      ? Icons.keyboard_arrow_down
                      : Icons.keyboard_arrow_right,
                ),
                onExpansionChanged: (expanded) {
                  setState(() {
                    showSymptoms = expanded;
                  });
                },
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 16.0),
                    child: Text(
                      symptoms,
                      style: TextStyle(fontSize: 16),
                    ),
                  ),
                  SizedBox(height: 10),
                ],
              ),
            if (feature.isNotEmpty)
              ExpansionTile(
                title: Text(
                  '특징',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                ),
                trailing: Icon(
                  showFeature
                      ? Icons.keyboard_arrow_down
                      : Icons.keyboard_arrow_right,
                ),
                onExpansionChanged: (expanded) {
                  setState(() {
                    showFeature = expanded;
                  });
                },
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 16.0),
                    child: Text(
                      feature,
                      style: TextStyle(fontSize: 16),
                    ),
                  ),
                  SizedBox(height: 10),
                ],
              ),
            if (treatment.isNotEmpty)
              ExpansionTile(
                title: Text(
                  '치료',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                ),
                trailing: Icon(
                  showTreatment
                      ? Icons.keyboard_arrow_down
                      : Icons.keyboard_arrow_right,
                ),
                onExpansionChanged: (expanded) {
                  setState(() {
                    showTreatment = expanded;
                  });
                },
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 16.0),
                    child: Text(
                      treatment,
                      style: TextStyle(fontSize: 16),
                    ),
                  ),
                  SizedBox(height: 10),
                ],
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