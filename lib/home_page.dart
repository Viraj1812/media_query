import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var _mediaQuery = MediaQuery.of(context);
    // return Scaffold(
    //   body: Row(
    //     mainAxisAlignment: MainAxisAlignment.spaceBetween,
    //     crossAxisAlignment: CrossAxisAlignment.start,
    //     children: [
    //       Container(
    //         width: _mediaQuery.size.width * 0.3,
    //         height: _mediaQuery.size.height * 0.5,
    //         decoration: const BoxDecoration(
    //           color: Colors.purple,
    //         ),
    //       ),
    //       Container(
    //         width: _mediaQuery.size.width * 0.7,
    //         decoration: const BoxDecoration(
    //           color: Colors.yellow,
    //         ),
    //       ),
    //     ],
    //   ),
    // );

    return Scaffold(
      // body: Builder(
      //   builder: (context) {
      //     if (_mediaQuery.orientation == Orientation.portrait) {
      //       return potraitWidget(_mediaQuery.size);
      //     } else {
      //       return landscapeWidget(_mediaQuery.size);
      //     }
      //   },
      // ),

      body: OrientationBuilder(
        builder: (context, orientation) {
          if (orientation == Orientation.portrait) {
            return potraitWidget(_mediaQuery.size);
          } else {
            return landscapeWidget(_mediaQuery.size);
          }
        },
      ),
    );
  }

  Widget potraitWidget(Size size) {
    return Center(
      child: Container(
        width: size.width * 0.8,
        height: size.height * 0.8,
        decoration: const BoxDecoration(
          color: Colors.purple,
        ),
        child: const Center(
          child: Text(
            "Potrait",
            style: TextStyle(
              color: Colors.white,
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
    );
  }

  Widget landscapeWidget(Size size) {
    return Center(
      child: Container(
        width: size.width * 0.8,
        height: size.height * 0.8,
        decoration: const BoxDecoration(
          color: Colors.yellow,
        ),
        child: const Center(
          child: Text(
            "Landscape",
            style: TextStyle(
              color: Colors.black,
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
    );
  }
}
