import 'package:flutter/material.dart';
import 'package:flutter_clean_arch_templ/config/constants/constants.dart';

class LoadingWidget extends StatelessWidget {
  final double? width, height;
  const LoadingWidget({Key? key, this.width, this.height}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      padding: const EdgeInsets.all(8.0),
      decoration: BoxDecoration(
          color: Colors.black, borderRadius: BorderRadius.circular(DEFAULT_BORDER_RADIUS)),
    );
  }
}