import 'package:flutter/material.dart';

class PageWidget extends StatelessWidget {
  final Size? size;
  final String? image;
  final String? title;
  final String? subtitle;
  const PageWidget(
      {required this.size,
      super.key,
      required this.image,
      required this.title,
      required this.subtitle});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: size!.height,
      width: size!.width,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          ///Picture
          Image.asset(
            image!,
            width: size!.width * 0.6,
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: size!.width * 0.15),
            child: RichText(
                textAlign: TextAlign.center,
                text: TextSpan(
                    text: "$title\n\n",
                    style: const TextStyle(
                      color: Color(0xFF4CAF50),
                      fontSize: 27,
                      fontWeight: FontWeight.bold,
                    ),
                    children: const [
                      TextSpan(
                        text:
                            ' Lorem ipsum is a placeholder text commonly used to ',
                        style: TextStyle(
                          color: Color(0xFF9D9D9D),
                          fontSize: 18,
                          fontWeight: FontWeight.normal,
                        ),
                      )
                    ])),
          ),
        ],
      ),
    );
  }
}
