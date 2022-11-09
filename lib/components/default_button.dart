import 'package:flutter/material.dart';

import '../constants.dart';

class DefaultButton extends StatefulWidget {
  const DefaultButton({
    Key? key,
    required this.imageSrc,
    required this.text,
    required this.press,
  }) : super(key: key);

  final String imageSrc, text;
  final VoidCallback press;

  @override
  State<DefaultButton> createState() => _DefaultButtonState();
}

class _DefaultButtonState extends State<DefaultButton> {
  @override
  Widget build(BuildContext context) {
    return TextButton(
      style: TextButton.styleFrom(
        padding: EdgeInsets.symmetric(
          vertical: kDefaultPadding,
          horizontal: kDefaultPadding * 2.5,
        ),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(50)),
        // color: Color(0xFFE8F0F9),
        backgroundColor: Color(0xFFE8F0F9),
      ),
      onPressed: widget.press,
      child: Row(
        children: [
          Image.asset(widget.imageSrc, height: 40),
          SizedBox(width: kDefaultPadding),
          Text(widget.text),
        ],
      ),
    );
  }
}
