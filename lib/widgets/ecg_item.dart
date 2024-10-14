import 'package:flutter/material.dart';

class ECGItem extends StatelessWidget {
  final String name;
  final VoidCallback onTap;

  ECGItem({required this.name, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: GestureDetector(
        onTap: onTap,
        child: Container(
          decoration: BoxDecoration(
            border: Border.all(color: Colors.black, width: 2),  // 검정색 테두리
            borderRadius: BorderRadius.circular(8),
          ),
          padding: EdgeInsets.all(16),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(name),  // 항목 이름을 표시
              Icon(Icons.chevron_right, size: 24),  // chevron_right 아이콘 사용
            ],
          ),
        ),
      ),
    );
  }
}
