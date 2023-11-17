import 'package:flutter/material.dart';
import 'package:flutter_web_ui/const/cont_images.dart';
import 'package:flutter_web_ui/main.dart';
import 'package:flutter_web_ui/ui/left_section.dart';

import '../userModel.dart';

class ArticlaListView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: 100,
              width: double.infinity,
              child: ListView.builder(
                  shrinkWrap: true,
                  scrollDirection: Axis.horizontal,
                  itemCount: items.length,
                  itemBuilder: (context, index) => Container(
                        margin: const EdgeInsets.all(5),
                        child: ChoiceChip(
                            padding: const EdgeInsets.all(5),
                            color:
                                MaterialStatePropertyAll(Colors.grey.shade400),
                            label: Text(items[index].toString()),
                            selected: false,
                            onSelected: (bool selected) {}),
                      )),
            ),
            ListView.builder(
              itemCount: mediumStaff.length,
              shrinkWrap: true,
              itemBuilder: (context, index) => ArticleWidget(
                model: mediumStaff[index],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class ArticleWidget extends StatelessWidget {
  const ArticleWidget({super.key, required this.model});
  final UserModel model;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 100),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: UserDetails(
              image: model.image.toString(),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Expanded(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        "Flutter error handling: a cleaned design to manage errors in your apps using the Decorator design pattern and BLoC as state management",
                        style: TextStyle(
                          fontSize: 20.0,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const SizedBox(height: 25.0),
                      SizedBox(
                        width: MediaQuery.of(context).size.width * .45,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Expanded(
                              child: Row(
                                children: [
                                  Container(
                                      padding: const EdgeInsets.only(
                                          left: 10,
                                          right: 10,
                                          bottom: 5,
                                          top: 5),
                                      decoration: BoxDecoration(
                                        borderRadius: const BorderRadius.all(
                                            Radius.circular(12)),
                                        color: Colors.grey.shade300,
                                      ),
                                      child: const Flexible(
                                        child: Text(
                                          "Design Patterns",
                                          maxLines: 2,
                                          style: TextStyle(
                                            fontSize: 15.0,
                                            fontWeight: FontWeight.w600,
                                          ),
                                        ),
                                      )),
                                  const SizedBox(width: 5),
                                  if (MediaQuery.of(context).size.width > 590)
                                    const Text(
                                      "7 min read·",
                                      style: TextStyle(
                                        fontSize: 15.0,
                                        fontWeight: FontWeight.w500,
                                      ),
                                    ),
                                  const SizedBox(width: 5),
                                  if (MediaQuery.of(context).size.width >= 1094)
                                    const Text(
                                      "Selected for you",
                                      style: TextStyle(
                                        fontSize: 15.0,
                                        fontWeight: FontWeight.w500,
                                      ),
                                    ),
                                ],
                              ),
                            ),
                            if (MediaQuery.of(context).size.width >= 1094)
                              Row(
                                children: [
                                  InkWell(
                                    onTap: () {},
                                    child: Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Image.asset(
                                        book_mark_Icon,
                                        height: 25.0,
                                        width: 25.0,
                                      ),
                                    ),
                                  ),
                                  InkWell(
                                    onTap: () {},
                                    child: Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Image.asset(
                                        minusIcon,
                                        height: 25.0,
                                        width: 25.0,
                                      ),
                                    ),
                                  ),
                                  InkWell(
                                    onTap: () {},
                                    child: Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Image.asset(
                                        openIcon,
                                        height: 25.0,
                                        width: 25.0,
                                      ),
                                    ),
                                  )
                                ],
                              )
                          ],
                        ),
                      )
                    ],
                  ),
                ),
                Column(
                  children: [
                    Image.asset(
                      mediumIcon,
                      height: 100,
                      width: 100,
                    ),
                    if (MediaQuery.of(context).size.width <= 1094)
                      Row(
                        children: [
                          InkWell(
                            onTap: () {},
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Image.asset(
                                book_mark_Icon,
                                height: 25.0,
                                width: 25.0,
                              ),
                            ),
                          ),
                          InkWell(
                            onTap: () {},
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Image.asset(
                                minusIcon,
                                height: 25.0,
                                width: 25.0,
                              ),
                            ),
                          ),
                          InkWell(
                            onTap: () {},
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Image.asset(
                                openIcon,
                                height: 25.0,
                                width: 25.0,
                              ),
                            ),
                          )
                        ],
                      )
                  ],
                ),
                const SizedBox(width: 40)
              ],
            ),
          ),
          const SizedBox(height: 25.0),
        ],
      ),
    );
  }
}

class UserDetails extends StatelessWidget {
  const UserDetails({super.key, required this.image});
  final String image;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        CircleAvatar(
          child: Image.asset(image),
        ),
        const SizedBox(width: 8),
        const Text("Bernardo Iribarne :",
            style: TextStyle(
              fontSize: 14.0,
              fontWeight: FontWeight.w300,
            )),
        const SizedBox(width: 8),
        const Text(
          " 6 days ago",
          style: TextStyle(
            fontSize: 13.0,
            fontWeight: FontWeight.bold,
          ),
        ),
      ],
    );
  }
}
