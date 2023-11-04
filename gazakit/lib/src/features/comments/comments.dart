import 'package:flutter/material.dart';
import 'package:gazakit/src/utils/colors.dart';
import 'package:gazakit/src/utils/extentions.dart';

class CommentsHashtags extends StatelessWidget {
  const CommentsHashtags({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        actions: [
          Container(
              margin: const EdgeInsets.all(10),
              height: 60,
              width: 45,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(18),
              ),
              child: Image.asset("assets/palestine.png"))
        ],
        title: const Text(
          "Comments/Hashtags",
          style: TextStyle(color: Colors.black),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(
              height: 10,
            ),
            Text(
              "Explanation",
              style: context.textTheme.bodyMedium!
                  .copyWith(fontSize: 22, color: Colors.black),
            ),
            const SizedBox(
              height: 10,
            ),
            Text(
              "This section is for you to copy certain comments or hashtags to then, post them on the different social media platforms.",
              style: context.textTheme.bodyMedium!
                  .copyWith(fontSize: 14, color: Colors.black),
            ),
            const SizedBox(
              height: 20,
            ),
            Text(
              "Comments",
              style: context.textTheme.bodyMedium!
                  .copyWith(fontSize: 22, color: Colors.black),
            ),
            const SizedBox(
              height: 15,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const Icon(
                  Icons.arrow_back_ios,
                  color: AppColors.kPrimaryColor,
                ),
                const SizedBox(
                  width: 5,
                ),
                Container(
                  height: 120,
                  width: 250,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    border: Border.all(
                      color: AppColors.kPrimaryColor,
                      width: 2,
                    ),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      const VerticalDivider(
                        color: AppColors.kPrimaryColor,
                        thickness: 2,
                        indent: 5,
                        endIndent: 5,
                      ),
                      Image.asset("assets/copy.png"),
                      const SizedBox(
                        width: 5,
                      )
                    ],
                  ),
                ),
                const SizedBox(
                  width: 8,
                ),
                const Icon(
                  Icons.arrow_forward_ios,
                  color: AppColors.kPrimaryColor,
                ),
              ],
            ),
            const SizedBox(
              height: 15,
            ),
            Text(
              "Hashtags",
              style: context.textTheme.bodyMedium!
                  .copyWith(fontSize: 22, color: Colors.black),
            ),
            const SizedBox(
              height: 15,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const Icon(
                  Icons.arrow_back_ios,
                  color: AppColors.kPrimaryColor,
                ),
                const SizedBox(
                  width: 5,
                ),
                Container(
                  height: 120,
                  width: 250,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    border: Border.all(
                      color: AppColors.kPrimaryColor,
                      width: 2,
                    ),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      const VerticalDivider(
                        color: AppColors.kPrimaryColor,
                        thickness: 2,
                        indent: 5,
                        endIndent: 5,
                      ),
                      Image.asset("assets/copy.png"),
                      const SizedBox(
                        width: 5,
                      )
                    ],
                  ),
                ),
                const SizedBox(
                  width: 8,
                ),
                const Icon(
                  Icons.arrow_forward_ios,
                  color: AppColors.kPrimaryColor,
                ),
              ],
            ),
            const Spacer(),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(17)),
                minimumSize: const Size.fromHeight(56),
              ),
              onPressed: () {},
              child: const Text("Open Instagram"),
            ),
          ],
        ),
      ),
    );
  }
}
