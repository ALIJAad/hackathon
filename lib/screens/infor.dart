import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class Info extends StatelessWidget {
  const Info({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: const [
          SizedBox(
            height: 20.0,
          ),
          Text(
            "Material",
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
          SizedBox(
            height: 20.0,
          ),
          Expanded(
            child: Padding(
              padding: EdgeInsets.all(15.0),
              child: Text(
                  "AS SEEN IN REDBOOK! You'll be primed and ready in the Perfect Situation Purple Long Sleeve Shift Dress when everything starts falling into place! This woven poly dress has a casual shift shape, accented by a rounded neckline."),
            ),
          ),
        ],
      ),
    );
  }
}
