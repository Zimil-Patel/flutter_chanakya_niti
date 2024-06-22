import 'package:flutter/material.dart';
import 'package:flutter_chanakya_niti/utils/constants.dart';

class DrawerTop extends StatelessWidget {
  const DrawerTop({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.symmetric(
            vertical: defaultPadding * 2, horizontal: defaultPadding),
        child: Column(
          children: [
            Row(
              children: [
                // profile picture
                CircleAvatar(
                  radius: height * 0.04,
                  backgroundImage: const AssetImage(
                    'assets/images/chanakya.png',
                  ),
                ),
                const SizedBox(
                  width: defaultPadding,
                ),

                // quote of day
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        '"As soons as the fear approaches near, attact and distroy it!"',
                        softWrap: true,
                        style: Theme.of(context).textTheme.bodyLarge,
                      ),
                      const SizedBox(
                        height: defaultPadding,
                      ),
                      Text(
                        '- Chanakya',
                        style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                              color: primaryColor,
                              fontWeight: FontWeight.bold,
                            ),
                      )
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
