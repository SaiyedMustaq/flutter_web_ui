import 'package:flutter/material.dart';
import 'package:flutter_web_ui/main.dart';
import 'package:flutter_web_ui/userModel.dart';

class LeftSectionPage extends StatelessWidget {
  LeftSectionPage({super.key});

  @override
  Widget build(BuildContext context) {
    return MediaQuery.of(context).size.width >= 1094
        ? SingleChildScrollView(
            child: Container(
              color: Colors.white,
              width: MediaQuery.of(context).size.width * .25,
              child: Padding(
                padding: const EdgeInsets.only(left: 20, top: 50, right: 20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    const Text(
                      "Staff Picks",
                      style: TextStyle(
                        fontWeight: FontWeight.w900,
                        fontSize: 20.0,
                      ),
                    ),
                    const StaffView(),
                    const SizedBox(height: 10),
                    TextButton(
                      onPressed: () {},
                      child: const Text(
                        "Recommended topics",
                        style: TextStyle(
                          fontWeight: FontWeight.w500,
                          color: Color.fromARGB(255, 87, 109, 87),
                        ),
                      ),
                    ),
                    Wrap(
                      children: items
                          .map((i) => Container(
                                margin: const EdgeInsets.all(5),
                                child: ChoiceChip(
                                    padding: const EdgeInsets.all(5),
                                    color: MaterialStatePropertyAll(
                                        Colors.grey.shade400),
                                    label: Text(i.toString()),
                                    selected: false,
                                    onSelected: (bool selected) {}),
                              ))
                          .toList(),
                    ),
                    const SizedBox(height: 20),
                    const Text(
                      "Who to follow",
                      style: TextStyle(
                          fontSize: 18.0,
                          color: Colors.black,
                          fontWeight: FontWeight.w700),
                    ),
                    const FollowView(),
                    const SizedBox(height: 20),
                    TextButton(
                      onPressed: () {},
                      child: const Text(
                        "See more suggestions",
                        style: TextStyle(
                          fontWeight: FontWeight.w500,
                          color: Color.fromARGB(255, 87, 109, 87),
                        ),
                      ),
                    ),
                    const Text(
                      "Recently saved",
                      style: TextStyle(
                          fontSize: 18.0,
                          color: Colors.black,
                          fontWeight: FontWeight.w700),
                    ),
                    const SizedBox(height: 20),
                    const RecentView(),
                    const SizedBox(height: 20),
                    TextButton(
                      onPressed: () {},
                      child: const Text(
                        "See more suggestions",
                        style: TextStyle(
                          fontWeight: FontWeight.w500,
                          color: Color.fromARGB(255, 87, 109, 87),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          )
        : Container();
  }
}

class StaffView extends StatelessWidget {
  const StaffView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: 3, // mediumStaff.length,
      shrinkWrap: true,
      itemBuilder: (context, index) => UserWidget(model: mediumStaff[index]),
    );
  }
}

class FollowView extends StatelessWidget {
  const FollowView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: 5,
        shrinkWrap: true,
        itemBuilder: (context, index) =>
            FollowUserTile(model: mediumStaff[index]));
  }
}

class RecentView extends StatelessWidget {
  const RecentView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: 5,
        shrinkWrap: true,
        itemBuilder: (context, index) =>
            RecentViewTile(model: mediumStaff[index]));
  }
}

class RecentViewTile extends StatelessWidget {
  RecentViewTile({super.key, required this.model});
  final UserModel model;

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                CircleAvatar(
                  radius: 15,
                  child: Image.asset(model.image),
                ),
                const SizedBox(width: 8),
                Text(model.name),
              ],
            ),
            Text(
              model.subTitle.toString(),
              style: const TextStyle(
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
            ),
            Text(
              model.dateTime.toString(),
              style: TextStyle(
                fontWeight: FontWeight.w600,
                color: Colors.grey.shade600,
              ),
            )
          ],
        ),
      ),
    );
  }
}

class FollowUserTile extends StatelessWidget {
  const FollowUserTile({super.key, required this.model});
  final UserModel model;

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Expanded(
        child: Padding(
          padding: const EdgeInsets.all(10),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              CircleAvatar(
                child: Image.asset(model.image),
              ),
              const SizedBox(width: 8),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      model.title.toString(),
                      style: const TextStyle(
                        fontSize: 17.0,
                        fontWeight: FontWeight.w800,
                      ),
                    ),
                    Text(
                      model.subTitle.toString(),
                      maxLines: 2,
                      style: const TextStyle(
                        fontSize: 15.0,
                        overflow: TextOverflow.ellipsis,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ],
                ),
              ),
              TextButton(
                onPressed: () {},
                child: const Text("Follow"),
              )
            ],
          ),
        ),
      ),
    );
  }
}

class UserWidget extends StatelessWidget {
  const UserWidget({super.key, required this.model});
  final UserModel model;

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Expanded(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: [
                  CircleAvatar(
                    child: Image.asset(model.image),
                  ),
                  const SizedBox(width: 8),
                  Expanded(
                    child: Text(
                      model.name,
                      style: const TextStyle(
                          fontSize: 15.0,
                          fontWeight: FontWeight.w700,
                          color: Colors.black),
                    ),
                  ),
                  const Icon(Icons.abc)
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 8),
              child: Text(
                model.title.toString(),
                style: const TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 18.0,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
