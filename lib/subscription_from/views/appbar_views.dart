import 'package:flutter/material.dart';

class AppBarViews extends StatelessWidget {
  const AppBarViews({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        IconButton(
          icon: Icon(
            Icons.arrow_back_ios,
            color: Colors.grey[400],
          ),
          onPressed: () {},
        ),
        const Text(
          'Выберите подписку',
          style: TextStyle(
            fontSize: 24,
            fontWeight: FontWeight.normal,
            color: Colors.white,
            shadows: [
              Shadow(
                blurRadius: 7.0,
                color: Colors.white,
              ),
            ],
          ),
        ),
        const SizedBox()
      ],
    );
  }
}
