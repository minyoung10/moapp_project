import 'package:flutter/material.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  bool isRecent = true;

  Container transContainer() {
    return Container(
      padding: const EdgeInsets.fromLTRB(19, 12, 19, 12),
      width: 345,
      height: 90,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(9), border: Border.all()),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text("11.17(금) 09:20:45", style: TextStyle(fontSize: 12)),
          const SizedBox(height: 5),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Text("지에스25 한동대학",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18)),
              RichText(
                text: const TextSpan(
                    text: "- 5,440",
                    style: TextStyle(fontSize: 17, color: Colors.red),
                    children: [
                      TextSpan(
                          text: '원',
                          style: TextStyle(fontSize: 14, color: Colors.black))
                    ]),
              ),
            ],
          ),
          const SizedBox(height: 5),
          const Align(
            alignment: Alignment.centerRight,
            child: Text("잔액 44,560원", style: TextStyle(fontSize: 12)),
          )
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: const Text('11월 예산', style: TextStyle(color: Colors.black)),
        centerTitle: true,
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.edit_rounded,
              semanticLabel: 'edit',
              color: Colors.black,
            ),
          ),
          IconButton(
            onPressed: () {
              Navigator.pushNamed(context, '/detail');
            },
            icon: const Icon(
              Icons.add_circle_outline,
              semanticLabel: 'add',
              color: Colors.black,
            ),
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.fromLTRB(25, 10, 25, 25),
        child: Column(
          children: [
            Center(
              child: RichText(
                  text: const TextSpan(
                      text: "500,000",
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 26,
                          color: Colors.black),
                      children: [
                    TextSpan(
                        text: ' 원',
                        style: TextStyle(
                            fontWeight: FontWeight.w400,
                            fontSize: 14,
                            color: Colors.black)),
                  ])),
            ),
            const SizedBox(height: 27),
            const Align(
              alignment: Alignment.bottomRight,
              child: Text("남은 잔액 | 390,000원"),
            ),
            ClipRRect(
              borderRadius: BorderRadius.circular(9),
              child: Container(
                width: double.infinity,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                ),
                child: LinearPercentIndicator(
                  padding: EdgeInsets.zero,
                  percent: 0.37,
                  lineHeight: 14,
                  backgroundColor: const Color(0xFFEAE9E8),
                  barRadius: const Radius.circular(10),
                  progressColor: const Color(0xFFFF8787),
                ),
              ),
            ),
            const SizedBox(height: 22),
            const Align(
              alignment: Alignment.centerLeft,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("지출 | 120,000원"),
                  Text("수입 | 10,000원"),
                ],
              ),
            ),
            const SizedBox(height: 22),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                TextButton(
                  onPressed: () {
                    setState(() {
                      isRecent = !isRecent;
                    });
                  },
                  child: Text("최신순",
                      style: TextStyle(
                          fontWeight:
                              isRecent ? FontWeight.bold : FontWeight.w400,
                          color: Colors.black)),
                ),
                const Text('|'),
                TextButton(
                  onPressed: () {
                    setState(() {
                      isRecent = !isRecent;
                    });
                  },
                  child: Text("과거순",
                      style: TextStyle(
                          fontWeight:
                              !isRecent ? FontWeight.bold : FontWeight.w400,
                          color: Colors.black)),
                ),
              ],
            ),
            const SizedBox(height: 10),
            SizedBox(
              height: 400,
              child: ListView.builder(
                itemCount: 5,
                itemBuilder: (BuildContext context, int index) {
                  return Column(
                    children: [transContainer(), const SizedBox(height: 10)],
                  );
                },
              ),
            )
          ],
        ),
      ),
    );
  }
}
