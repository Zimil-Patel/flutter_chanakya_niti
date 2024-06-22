import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_chanakya_niti/pages/home_page/view/home_page.dart';
import 'package:flutter_chanakya_niti/utils/constants.dart';

class SplashPage extends StatelessWidget {
  const SplashPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: height,
        width: width,
        decoration: const BoxDecoration(
          image: DecorationImage(
            fit: BoxFit.cover,
            image: AssetImage('assets/images/splash.png'),
          )
        ),
        padding: const EdgeInsets.only(bottom: defaultPadding * 5, right: defaultPadding * 4),
        alignment: Alignment.bottomRight,
        child: CupertinoButton(
          onPressed: (){
            // Navigate to home page
            Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => const HomePage(),));
          },

          // Welcome button with next arrow icon
          child: Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              Text('Welcome', style: Theme.of(context).textTheme.titleLarge!.copyWith(
                fontSize: height * 0.04,
                color: primaryColor,
              ),),
              const SizedBox(width: defaultPadding,),
              Icon(Icons.arrow_circle_right, color: primaryColor, size: height * 0.04,)
            ],
          ),
        )
      ),
    );
  }
}
