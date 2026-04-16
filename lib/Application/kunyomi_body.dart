import 'package:flutter/material.dart';

class KunyomiBody extends StatelessWidget {

  const KunyomiBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Flexible(
          flex: 3,
          child: Text(
            '別れる',
            style: TextStyle(
              fontSize: 70,
              fontWeight: FontWeight.bold
            ),
          )
        ),
        Flexible(
          flex: 1,
          child: Container(
            padding: EdgeInsets.all(1),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Expanded(
                      child: ElevatedButton(
                        onPressed: () {},
                        child: Text('知ってる'),
                      )
                    ),
                    Expanded(
                        child: ElevatedButton(
                          child: Text('分かんな'),
                          onPressed: () {},
                        )
                    ),
                  ],
                ),
                Row(
                  children: [
                    Expanded(
                        child: ElevatedButton(
                          child: Text('a'),
                          onPressed: () {},
                        )
                    ),
                    Expanded(
                        child: ElevatedButton(
                          child: Text('a'),
                          onPressed: () {},
                        )
                    ),
                  ],
                )
              ],
            )
          )
        ),
      ],
    );
  }

}