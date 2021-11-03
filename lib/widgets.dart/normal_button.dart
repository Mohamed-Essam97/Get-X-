import 'package:flutter/material.dart';

class NormalButton extends StatelessWidget {
  final bool? localize;
  final bool? busy;
  final bool? bold;
  final double? width;
  final double? height;
  final double? raduis;
  final double? elevation;
  final String? text;
  final TextStyle? textStyle;

  final Widget? child;
  final Color color;
  final EdgeInsets margin;
  final EdgeInsets padding;
  final Function()? onPressed;
  final Color textColor;
  const NormalButton(
      {Key? key,
      this.busy = false,
      this.localize = true,
      this.child,
      this.onPressed,
      this.text,
      this.width,
      this.textStyle,
      this.height,
      this.elevation = 0,
      this.raduis = 12,
      this.margin = const EdgeInsets.symmetric(vertical: 5),
      this.padding = const EdgeInsets.symmetric(horizontal: 10, vertical: 12),
      this.textColor = Colors.white,
      this.color = Colors.red,
      this.bold = true})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: margin,
      child: MaterialButton(
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(raduis ?? 20.0)),
        elevation: elevation,
        hoverElevation: 0,
        focusElevation: 0,
        highlightElevation: elevation,
        minWidth: width ?? double.infinity,
        color: color,
        height: height,
        onPressed: onPressed,
        child: Padding(
          padding: padding,
          child: child ??
              Text(
                text ?? "OK",
                style: textStyle ??
                    TextStyle(
                      color: textColor,
                      fontSize: 20,
                      fontWeight:
                          bold ?? false ? FontWeight.w900 : FontWeight.normal,
                    ),
              ),
        ),
      ),
    );
  }
}
