import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:hackathon/const.dart';

// ignore: must_be_immutable
class HomeContainers extends StatelessWidget {
  HomeContainers(
    this.txtfldicon, {
    Key? key,
    this.hinttext,
  }) : super(key: key);

  final String? hinttext;
  IconData? txtfldicon;

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Column(
      children: [
        const SizedBox(
          height: 12,
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: SizedBox(
            height: 60,
            width: size.width * 0.7,
            child: TextFormField(
              keyboardType: TextInputType.emailAddress,
              textInputAction: TextInputAction.next,
              cursorColor: primarycolor,
              decoration: InputDecoration(
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(24),
                ),
                hintText: hinttext,
                fillColor: const Color(0xFFF0F0F0),
                filled: true,
                prefixIcon: Padding(
                  padding: const EdgeInsets.all(2),
                  child: Icon(txtfldicon),
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
