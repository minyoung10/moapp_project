import 'package:flutter/material.dart';

class HashTag extends StatelessWidget {
  final String context;
  final bool tappable;
  const HashTag({super.key, required this.context, this.tappable=false});
  
  @override
  Widget build(BuildContext context) {
    bool isTapped = false;
    return tappable
    ? InkWell(
      onTap:() {
        isTapped = !isTapped;
      },
      child: Stack(
        alignment: Alignment.bottomCenter,
        children: [
          Visibility(
            visible: isTapped,
            child: Container(
              decoration:
                  const BoxDecoration(color: Color.fromRGBO(148, 143, 142, 0)),
            ),
          ),
          Text("# ${this.context}",
              style: const TextStyle(
                  color: Color(0xff2a201c),
                  fontSize: 18,
                  fontWeight: FontWeight.w200))
        ],
      ),
    )
    : Stack(
      alignment: Alignment.bottomCenter,
      children: [
        Container(
          decoration:
              const BoxDecoration(color: Color.fromRGBO(148, 143, 142, 0)),
        ),
        Text("# ${this.context}",
            style: const TextStyle(
                color: Color(0xff2a201c),
                fontSize: 18,
                fontWeight: FontWeight.w200))
      ],
    );
  }
}
