import 'package:flutter/material.dart';

class AreaGridView extends StatelessWidget {
  const AreaGridView({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            SizedBox(
              width: 175,
              height: 170,
              child: Image.asset('assets/background_imgaes/tokyo_image.png'),
            ),
            SizedBox(
              width: 175,
              height: 170,
              child: Image.asset('assets/background_imgaes/tokyo_image.png'),
            ),
          ],
        ),
        const Row(),
      ],
    );
  }
}
