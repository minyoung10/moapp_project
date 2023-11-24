import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

import 'components/widget.dart';

class AddPage extends StatefulWidget {
  const AddPage({super.key});

  @override
  State<AddPage> createState() => _AddPageState();
}

class _AddPageState extends State<AddPage> {
  double star = 3;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("카페 리뷰 작성"),
        centerTitle: true,
        backgroundColor: Colors.transparent,
        elevation: 0,
        foregroundColor: Colors.black,
      ),
      body: Padding(
        padding: const EdgeInsets.fromLTRB(25, 29, 25, 38),
        child: Center(
          child: Column(
            children: [
              const Text("카페 어떠셨나요?",
                  style: TextStyle(
                      color: Color(0xff2a201c),
                      fontSize: 24,
                      fontWeight: FontWeight.w600)),
              const SizedBox(height: 14),
              RatingBar.builder(
                initialRating: 3,
                minRating: 0,
                direction: Axis.horizontal,
                allowHalfRating: true,
                itemCount: 5,
                itemSize: 60,
                unratedColor: const Color.fromRGBO(230, 230, 230, 0.7),
                itemBuilder: (context, _) => Icon(Icons.star_rate_rounded,
                    color: Colors.yellow[600], size: 17),
                onRatingUpdate: (rating) {
                  setState(() {
                    star = rating;
                  });
                },
              ),
              const SizedBox(height: 34),
              const Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("분위기",
                      style: TextStyle(
                          color: Color(0xff2a201c),
                          fontSize: 20,
                          fontWeight: FontWeight.w500)),
                  SizedBox(height: 13),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      HashTag(context: "카공 하기 좋은", tappable: true),
                      SizedBox(width: 12),
                      HashTag(context: "뷰 맛집", tappable: true)
                    ],
                  ),
                  SizedBox(height: 15),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      HashTag(context: "작업 하기 좋은", tappable: true),
                      SizedBox(width: 12),
                      HashTag(context: "이야기 나누기 좋은", tappable: true)
                    ],
                  ),
                ],
              ),
              const SizedBox(height: 29),
              const Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("커피",
                      style: TextStyle(
                          color: Color(0xff2a201c),
                          fontSize: 20,
                          fontWeight: FontWeight.w500)),
                  SizedBox(height: 13),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      HashTag(context: "낮은 산미", tappable: true),
                      SizedBox(width: 10),
                      HashTag(context: "중간 산미", tappable: true),
                      SizedBox(width: 10),
                      HashTag(context: "높은 산미", tappable: true),
                    ],
                  ),
                  SizedBox(height: 15),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      HashTag(context: "라이트 바디", tappable: true),
                      SizedBox(width: 10),
                      HashTag(context: "미디엄 바디", tappable: true),
                      SizedBox(width: 10),
                      HashTag(context: "풀 바디", tappable: true),
                    ],
                  ),
                  SizedBox(height: 15),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      HashTag(context: "라이트 로스터", tappable: true),
                      SizedBox(width: 8),
                      HashTag(context: "미디엄 로스터", tappable: true),
                      SizedBox(width: 8),
                      HashTag(context: "다크 로스터", tappable: true),
                    ],
                  ),
                ],
              ),
              const SizedBox(height: 28),
              const Text("내용",
                  style: TextStyle(
                      color: Color(0xff2a201c),
                      fontSize: 20,
                      fontWeight: FontWeight.w500)),
              const SizedBox(height: 13),
              const SizedBox(width: 343, height: 91, child: TextField()),
              const Spacer(),
              Row(
                children: [
                  SizedBox(
                    width: 165,
                    height: 54,
                    child: ElevatedButton(
                      onPressed: () {
                        Navigator.of(context).pop();
                      },
                      style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.white,
                          side: const BorderSide(color: Colors.black, width: 2),
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(12))),
                      child: const Text(
                        "취소",
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 20,
                            fontWeight: FontWeight.w600),
                      ),
                    ),
                  ),
                  const SizedBox(width: 13),
                  SizedBox(
                    width: 165,
                    height: 54,
                    child: ElevatedButton(
                      onPressed: () {
                        Navigator.of(context).pop();
                      },
                      style: ElevatedButton.styleFrom(
                          backgroundColor: const Color(0xff2a201c),
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(12))),
                      child: const Text(
                        "등록",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 20,
                            fontWeight: FontWeight.w600),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
