import 'package:flutter/material.dart';
import 'package:flutter_web_ui/const/cont_images.dart';

class AppBarwidget extends StatelessWidget {
  const AppBarwidget({super.key});

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size.width;
    return Padding(
      padding: const EdgeInsets.only(top: 20),
      child: Row(
        children: [
          const SizedBox(width: 10),
          Image.asset(mediumIcon),
          const SizedBox(width: 10),
          Container(
            width: MediaQuery.of(context).size.width * .25,
            decoration: BoxDecoration(
                color: Colors.grey.shade100,
                borderRadius: BorderRadius.circular(25.0)),
            child: TextField(
              decoration: InputDecoration(
                hintText: MediaQuery.of(context).size.width.toString(),
                contentPadding: const EdgeInsets.only(bottom: 2),
                border: InputBorder.none,
                prefixIcon: const Icon(
                  Icons.search,
                  color: Color.fromARGB(255, 177, 177, 177),
                ),
              ),
            ),
          ),
          const Spacer(),
          Padding(
            padding: const EdgeInsets.all(5.0),
            child: Image.asset(editIcon),
          ),
          const SizedBox(width: 10),
          const Text("Write"),
          const SizedBox(width: 30),
          Padding(
            padding: const EdgeInsets.all(5.0),
            child: Image.asset(notificationIcon),
          ),
          const SizedBox(width: 20),
          CircleAvatar(
            radius: 50.0,
            child: Image.asset(image4),
          ),
          const SizedBox(width: 20)
        ],
      ),
    );
  }
}
