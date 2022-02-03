import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'constants.dart';

class ReusableCard extends StatelessWidget {
  const ReusableCard({
    Key? key,
    required this.text1,
    required this.text2,
    required this.cardChild,
    required this.colour,
    required this.top,
    required this.left,
    required this.bottom,
    required this.right,
  }) : super(key: key);
  final String text1;
  final String text2;
  final IconData cardChild;
  final Color colour;
  final double top;
  final double left;
  final double bottom;
  final double right;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {},
      child: Container(
        // splashColor: Colors.black,
        // onTap: (){
        //
        // },
        margin: EdgeInsets.fromLTRB(left, top, right, bottom),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10.0),
          color: const Color(0xFFFFFFFF),
          boxShadow: const [
            BoxShadow(
              color: Color(0xFFd3d3d3),
              blurRadius: 1.0,
              spreadRadius: 0.1,
              offset: Offset(
                0.5,
                0.5,
              ),
            ),
          ],
        ),

        child: Padding(
          // padding: EdgeInsets.fromLTRB(left, top, right, bottom),
          padding: EdgeInsets.all(8.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Align(
                alignment: Alignment.topLeft,
                child: Padding(
                  padding: const EdgeInsets.only(bottom: 15, left: 10),
                  child: Icon(
                    cardChild,
                    // textDirection: TextDirection.ltr,
                    size: 35,
                    color: colour,
                  ),
                ),
              ),
              const SizedBox(
                height: 5,
              ),
              Align(
                alignment: Alignment.centerLeft,
                child: Padding(
                  padding: const EdgeInsets.only(left: 8.0),
                  child: Text(
                    text1,
                    style: kAllCardText,
                    textAlign: TextAlign.left,
                  ),
                ),
              ),
              Align(
                alignment: Alignment.bottomLeft,
                child: Padding(
                  padding: const EdgeInsets.only(left: 8.0),
                  child: Text(
                    text2,
                    style: kAllLightText,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
