import 'package:flutter/material.dart';
import 'package:flutter_responsivity_widget/flutter_responsivity_widget.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final responsive= Responsive(context);
    return Scaffold(
      body: Stack(
        children: [
          Positioned(
            right: -70,
            child: Container(
              height: responsive.hp(100),
              width: responsive.wp(50),
              decoration:  BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(60)
              ),
            ),
          )
        ],
      ),
    );
  }
}
