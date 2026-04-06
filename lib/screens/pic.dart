import 'package:flutter/material.dart';

class PictureWidget extends StatelessWidget {
  const PictureWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
      Image.network(
          "https://cdn.pixabay.com/photo/2015/04/23/22/00/tree-736885_1280.jpg",
          width: 200,
          height: 200,
        ),
      Center( child: Text(
        "Network image",
        style: TextStyle(
          fontSize: 30,
          color: Colors.black,
          letterSpacing: 10,
        ),
      ),),
      const SizedBox(height: 20,),
      Image.asset(
        "assets/images/cat1.jpg",
        height: 200,
        width: 200,
      ),
            Image.asset(
        "assets/images/cat2.jpg",
        height: 200,
        width: 200,
      ),
      //       Image.asset(
      //   "assets/images/cat3.jpg",
      //   height: 200,
      //   width: 200,
      // ),
    ],);
  }
}