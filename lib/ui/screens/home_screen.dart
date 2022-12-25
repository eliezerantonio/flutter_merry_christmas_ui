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
  bool bye=false;
  @override
  Widget build(BuildContext context) {
    final responsive = Responsive(context);
    return Scaffold(
      body: GestureDetector(
        onTap: (){

          bye=!bye;
          setState(() {
            
          });
        },
        child: SnowfallWidget(
          alpha: 70,
          child: SizedBox(
            width: responsive.wp(100),
            height: responsive.hp(100),
            child: Stack(
              children: [
                BordedItem(),
                const ItemTree(),
                const ContentItem(),
                BordedByeItem(bye: bye,)
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class ContentItem extends StatelessWidget {
  const ContentItem({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
     final responsive = Responsive(context);
    return Padding(
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
          const SizedBox(height: 70),
          const Text('2022-12-25',
              style: TextStyle(
                  color: Colors.white70,
                  fontSize: 17,
                  fontWeight: FontWeight.w300)),
          const SizedBox(height: 10),
          const Text(
              'To live is to accept each minute as a miracle that cannot be repeated.',
              style: TextStyle(color: Colors.white70, fontSize: 12)),
          const SizedBox(height: 40),
          const ItemReadMore(),
          const SizedBox(height: 60),
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
