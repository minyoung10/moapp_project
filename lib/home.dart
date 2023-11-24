import 'package:flutter/material.dart';
import 'package:flutter_naver_map/flutter_naver_map.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: NaverMap(
          options: const NaverMapViewOptions(
            mapType: NMapType.basic,
          ), // 지도 옵션을 설정할 수 있습니다.
          forceGesture: false, // 지도에 전달되는 제스처 이벤트의 우선순위를 가장 높게 설정할지 여부를 지정합니다.
          onMapReady: (controller) {},
          onMapTapped: (point, latLng) {},
          onSymbolTapped: (symbol) {},
          onCameraChange: (position, reason) {},
          onCameraIdle: () {},
          onSelectedIndoorChanged: (indoor) {},
        ),
      ),
    );
  }
}
