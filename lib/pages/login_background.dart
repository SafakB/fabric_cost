import 'package:flutter/material.dart';

class Background extends StatelessWidget {
  Widget child;
  Background({required this.child,Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    var size =  MediaQuery.of(context).size;
    return Container(
      width: double.infinity,
      height: size.height,
      child: Stack(
        children: [
          Positioned(
              top: 0,
              left: 0,
              child: Container(
                width: size.width,
                height: size.height,
                decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage('assets/images/login_bg.jpg'),
                      fit: BoxFit.cover
                  ),
                ),
              )
          ),
          Positioned(
              top: 0,
              right: 0,
              child: Container(
                width: 200,
                height: 132,
                decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage('assets/images/right1.png'),
                      fit: BoxFit.cover
                  ),
                ),
              )
          ),
          Positioned(
              top: 0,
              right: 0,
              child: Container(
                width: 240,
                height: 132,
                decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage('assets/images/right2.png'),
                      fit: BoxFit.cover
                  ),
                ),
              )
          ),
          Positioned(
              top: 0,
              right: 0,
              child: Container(
                width: 220,
                height: 160,
                decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage('assets/images/right3.png'),
                      fit: BoxFit.cover
                  ),
                ),
              )
          ),
          Positioned(
              top: 0,
              right: 0,
              child: Container(
                width: size.width,
                height: size.height,
                child: child,
              )
          )
        ],
      ),
    );
  }
}