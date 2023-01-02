import 'package:flutter/material.dart';

class IntroCard extends StatelessWidget {
  const IntroCard(
      {Key? key,
      required this.onClick,
      required this.img,
      required this.cardTitle})
      : super(key: key);

  //fields for the widget
  final VoidCallback onClick;
  final String img;
  final String cardTitle;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onClick,
      child: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height * 0.22,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage(img),
            fit: BoxFit.cover,
            colorFilter: ColorFilter.mode(Colors.black.withOpacity(0.5),
                BlendMode.darken), //applying a dark filter on the image
          ),
          borderRadius: BorderRadius.circular(20),
        ),
        child: Center(
          child: Text(
            cardTitle,
            style: TextStyle(
                color: Colors.white, fontSize: 20, fontWeight: FontWeight.bold),
          ),
        ),
      ),
    );
  }
}
