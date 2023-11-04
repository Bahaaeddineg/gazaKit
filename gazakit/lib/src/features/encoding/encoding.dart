import 'package:flutter/material.dart';
import 'package:gazakit/src/utils/extentions.dart';

class Encoding extends StatelessWidget {
  const Encoding({super.key});

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
          "Encoding Messages",
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
              "Enter your message",
              style: context.textTheme.bodyMedium!
                  .copyWith(fontSize: 22, color: Colors.black),
            ),
            const SizedBox(
              height: 15,
            ),
            const TextField(
              style: TextStyle(overflow: TextOverflow.ellipsis),
              maxLines: 2,
            ),
            const SizedBox(
              height: 10,
            ),
            Align(
              alignment: Alignment.centerRight,
              child: Image.asset("assets/convert.png",height: 45), // not necessary
            ),
            const SizedBox(
              height: 10,
            ),
            const TextField(
              maxLines: 2,
            ),
            const Spacer(),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: const Color.fromARGB(255, 15, 71, 17),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(17)),
                minimumSize: const Size.fromHeight(56),
              ),
              onPressed: () {
                //the encode function
              },
              child: const Text("Encode"),
            ),
          ],
        ),
      ),
    );
  }
}
