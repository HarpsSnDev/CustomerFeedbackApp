import 'package:flutter/material.dart';

class CustomBackButton extends StatefulWidget {
  final Function onPressed;
  const CustomBackButton({super.key,required this.onPressed});

  @override
  State<CustomBackButton> createState() => _CustomBackButtonState();
}

class _CustomBackButtonState extends State<CustomBackButton> {
  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.centerLeft,
      child: InkWell(
        onTap: (){
    
            widget.onPressed();
          
        },
        child: Container(
          height: 50.0,
          width: 50.0,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15.0),
            border: Border.all(color: Colors.black, width: 2.0),
          ),
          child: const Center(child: Icon(Icons.arrow_back_ios_rounded)),
        ),
      ),
    );
  }
}
