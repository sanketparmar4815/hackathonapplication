import 'package:flutter/cupertino.dart';

class TextWidget extends StatefulWidget {
  String text;

 TextWidget({super.key,

    required this.text,
});

  @override
  State<TextWidget> createState() => _TextWidgetState();
}

class _TextWidgetState extends State<TextWidget> {
  @override
  Widget build(BuildContext context) {
    return Text(widget.text);
  }
}
