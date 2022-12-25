
import 'package:flutter/material.dart';

class ItemReadMore extends StatelessWidget {
  const ItemReadMore({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 29,
      width: 130,
      alignment: Alignment.center,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(30),
          border: Border.all(color: Colors.white70)),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            'Read More'.toUpperCase(),
            style: const TextStyle(
              fontWeight: FontWeight.w300,
              color: Colors.white70,
              fontSize: 12,
            ),
          ),
          const Icon(
            Icons.arrow_forward,
            color: Colors.white70,
          ),
        ],
      ),
    );
  }
}