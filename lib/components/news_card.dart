import 'package:flutter/material.dart';

class NewsCard extends StatefulWidget {
  const NewsCard({super.key});

  @override
  State<StatefulWidget> createState() => _NewsCardState();
}

class _NewsCardState extends State<NewsCard> {
  @override
  Widget build(BuildContext context) {
    return Card(
      color: const Color(0xff284363),
      child: Padding(
        padding: const EdgeInsets.all(15),
        child: Column(
          children: [
            Container(
              margin: const EdgeInsets.all(10),
              width: 300,
              height: 200,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: Colors.white,
              ),
              child: Image.asset(
                'assets/icon.png',
              ),
            ),
            const Text(
              '1인가구는 원룸만?…임대주택 면적논란에 국토부 "원점재검토"(종합)',
              style: TextStyle(
                color: Colors.white,
              ),
            ),
            Container(
              margin: const EdgeInsets.all(10),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: const Color(0xffF56C2A),
              ),
              child: TextButton(
                onPressed: () {},
                child: const Text(
                  '뉴스 더 보기',
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
