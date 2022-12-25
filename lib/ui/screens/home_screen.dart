
import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:flutter_responsivity_widget/flutter_responsivity_widget.dart';
import 'package:snowfall/snowfall/snowfall_widget.dart';

import 'components/components.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {

  @override
  Widget build(BuildContext context) {
    final responsive = Responsive(context);
    return Scaffold(
      body: SnowfallWidget(
        alpha: 70,
        child: SizedBox(
          width: responsive.wp(100),
          height: responsive.hp(100),
          child: Stack(
            children: [
              BordedItem(),
              const ItemTree(),
              Padding(
                padding: const EdgeInsets.all(60.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    ItemMenu(responsive: responsive),
                    const SizedBox(height: 70),
                    const Text('merry christmas',
                        style: TextStyle(color: Colors.white, fontSize: 32)),
                    const SizedBox(height: 70),
                    const Text('Welcome to our site',
                        style: TextStyle(
                            color: Colors.white70,
                            fontSize: 17,
                            fontWeight: FontWeight.w300)),
                    const SizedBox(height: 10),
                    const Text(
                        'Being with family and friends is the most valuable Christmas \ngift ever! Happy Holidays everyone.',
                        style: TextStyle(color: Colors.white70, fontSize: 12)),
                    const SizedBox(height: 40),
                    const ItemReadMore(),
                  ],
                ),
              ),
              Positioned(
                bottom: 0,
                child: FadeInDown(
                  from: 1000,
                  child: const Icon(
                    Icons.ac_unit_outlined,
                    color: Colors.white,
                    size: 14,
                  ),
                ),
              ),
      
           
           
            ],
          ),
        ),
      ),
    );
  }
}

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

class ItemMenu extends StatelessWidget {
  const ItemMenu({
    Key? key,
    required this.responsive,
  }) : super(key: key);

  final Responsive responsive;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
            height: 40,
            width: 80,
            alignment: Alignment.center,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(30),
                border: Border.all(color: Colors.white70)),
            child: Text('Home'.toUpperCase(),
                style: const TextStyle(color: Colors.white70))),
        SizedBox(width: responsive.wp(5)),
        Text('About'.toUpperCase(),
            style: const TextStyle(color: Colors.white)),
        SizedBox(width: responsive.wp(5)),
        Text('Products'.toUpperCase(),
            style: const TextStyle(color: Colors.white)),
        SizedBox(width: responsive.wp(5)),
        Text('Contacts'.toUpperCase(),
            style: const TextStyle(color: Colors.white)),
        SizedBox(width: responsive.wp(5)),
        const EmailIcon(),
        const Spacer(),
        const LoginButton()
      ],
    );
  }
}

class EmailIcon extends StatelessWidget {
  const EmailIcon({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        height: 40,
        width: 40,
        decoration:
            const BoxDecoration(color: Colors.white, shape: BoxShape.circle),
        child: const Icon(Icons.email, color: Color(0xff2A509A)));
  }
}

class LoginButton extends StatelessWidget {
  const LoginButton({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return OutlinedButton(
      onPressed: () {},
      style: ButtonStyle(
          shape: MaterialStateProperty.all(
            RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(30),
            ),
          ),
          side: MaterialStateProperty.all(
              const BorderSide(color: Color(0xff2A509A))),
          minimumSize: MaterialStateProperty.all(const Size(60, 45))),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          const Icon(Icons.person, color: Color(0xff2A509A)),
          const SizedBox(width: 10),
          Text('Login'.toUpperCase(),
              style: const TextStyle(color: Color(0xff2A509A))),
        ],
      ),
    );
  }
}
