import 'package:flutter/material.dart';

import 'components/widget.dart';

class DetailPage extends StatefulWidget {
  const DetailPage({super.key});

  @override
  State<DetailPage> createState() => _DetailPageState();
}

class _DetailPageState extends State<DetailPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        foregroundColor: Colors.black,
      ),
      body: SizedBox(
          height: double.infinity,
          child: Padding(
            padding: const EdgeInsets.fromLTRB(25, 15, 25, 15),
            child: ListView(
              children: [
                ClipRRect(
                    borderRadius: BorderRadius.circular(15),
                    child: Image.asset("assets/test.png", fit: BoxFit.fill)),
                const SizedBox(height: 22),
                const Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text("카페검디",
                        style: TextStyle(
                            color: Color(0xff2a201c),
                            fontSize: 24,
                            fontWeight: FontWeight.w600)),
                    Text("영업 시간 11:00 ~ 20:00",
                        style: TextStyle(
                            color: Color(0xff716b68),
                            fontSize: 16,
                            fontWeight: FontWeight.w200)),
                    Text("경북 포항시 북구 흥해읍 해안로1774번길 21-1",
                        style: TextStyle(
                            color: Color(0xff716b68),
                            fontSize: 16,
                            fontWeight: FontWeight.w200)),
                  ],
                ),
                const SizedBox(height: 20),
                const Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("분위기",
                        style: TextStyle(
                            color: Color(0xff2a201c),
                            fontSize: 20,
                            fontWeight: FontWeight.w500)),
                    SizedBox(width: 20),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [HashTag(context: "카공 하기 좋은")],
                    ),
                  ],
                ),
                const SizedBox(height: 20),
                const Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("커피",
                        style: TextStyle(
                            color: Color(0xff2a201c),
                            fontSize: 20,
                            fontWeight: FontWeight.w500)),
                    SizedBox(width: 37),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        HashTag(context: "중간 산미"),
                        HashTag(context: "라이트 바디"),
                        HashTag(context: "다크 로스터")
                      ],
                    ),
                  ],
                ),
                const Divider(height: 20, thickness: 3),
                Row(
                  children: [
                    const Text("방문자 리뷰",
                        style: TextStyle(
                            color: Color(0xff2a201c),
                            fontSize: 20,
                            fontWeight: FontWeight.w500)),
                    const SizedBox(width: 14),
                    Icon(Icons.star_rate_rounded,
                        color: Colors.yellow[600], size: 17),
                    const SizedBox(width: 5),
                    const Text("4.7",
                        style: TextStyle(
                            color: Color(0xff555555),
                            fontSize: 18,
                            fontWeight: FontWeight.w200)),
                    const Spacer(),
                    TextButton(
                      onPressed: () {},
                      child: const Text("더보기",
                          style: TextStyle(
                              color: Color(0xff948f8e),
                              fontSize: 18,
                              fontWeight: FontWeight.w200)),
                    )
                  ],
                ),
                const SizedBox(height: 20),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    const Text("2층은 바다 뷰 좋고 1층은 인테리어가 예뻐요!.....",
                        style: TextStyle(
                            color: Color(0xff555555),
                            fontSize: 18,
                            fontWeight: FontWeight.w200)),
                    const SizedBox(height: 12),
                    const Text("바다 바로 앞이라 뷰가 끝내줍니다 너무 환상적:D",
                        style: TextStyle(
                            color: Color(0xff555555),
                            fontSize: 18,
                            fontWeight: FontWeight.w200)),
                    const SizedBox(height: 16),
                    InkWell(
                      onTap: () {
                        Navigator.pushNamed(context, '/add');
                      },
                      child: const Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(Icons.edit),
                          Text("리뷰 작성하기",
                              style: TextStyle(
                                  color: Color(0xff948f8e),
                                  fontSize: 18,
                                  fontWeight: FontWeight.w200)),
                        ],
                      ),
                    )
                  ],
                ),
                const Divider(height: 20, thickness: 3),
                const Text("리뷰 사진",
                    style: TextStyle(
                        color: Color(0xff2a201c),
                        fontSize: 20,
                        fontWeight: FontWeight.w500)),
                const SizedBox(height: 20),
                SizedBox(
                  width: 343,
                  height: 228,
                  child: GridView.builder(
                      itemCount: 6,
                      gridDelegate:
                          const SliverGridDelegateWithFixedCrossAxisCount(
                              crossAxisCount: 3,
                              mainAxisSpacing: 0,
                              crossAxisSpacing: 0),
                      itemBuilder: (BuildContext context, int index) {
                        if (index == 5) {
                          return InkWell(
                            onTap: () {},
                            child: Stack(
                                alignment: AlignmentDirectional.center,
                                children: [
                                  AspectRatio(
                                      aspectRatio: 1,
                                      child: Image.asset("assets/test.png",
                                          fit: BoxFit.fill)),
                                  const Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Icon(Icons.photo_camera_outlined,
                                          color: Colors.white, size: 27),
                                      Text("더보기",
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontWeight: FontWeight.w300)),
                                    ],
                                  ),
                                ]),
                          );
                        }
                        return AspectRatio(
                            aspectRatio: 1,
                            child: Image.asset("assets/test.png",
                                fit: BoxFit.fill));
                      }),
                )
              ],
            ),
          )),
    );
  }
}
