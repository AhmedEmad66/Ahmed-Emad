import 'package:flutter/material.dart';

import '../components/members_info_container.dart';

class UserTablePage extends StatefulWidget {
  const UserTablePage({super.key});

  @override
  State<UserTablePage> createState() => _UserTablePageState();
}

class _UserTablePageState extends State<UserTablePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: const Color(0xffFBFAFA),
      body: SafeArea(
          child: SingleChildScrollView(
        physics: const NeverScrollableScrollPhysics(),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 15,
                vertical: 20,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    "Team Members",
                    style: TextStyle(fontSize: 30, fontWeight: FontWeight.w500),
                  ),
                  IconButton(
                      onPressed: () {},
                      icon: const Icon(Icons.person_add_alt_1))
                ],
              ),
            ),
            SizedBox(
              width: double.infinity,
              height: MediaQuery.of(context).size.height * 0.9,
              child: ListView.builder(
                physics: const NeverScrollableScrollPhysics(),
                itemCount: membersNames.length,
                itemBuilder: (context, index) => Dismissible(
                  key: Key(index.toString()),
                  background: Container(
                    color: Colors.red,
                    child: const Align(
                      alignment: Alignment.centerLeft,
                      child: Icon(Icons.delete),
                    ),
                  ),
                  onDismissed: (direction) {
                    if (direction == DismissDirection.startToEnd) {
                      ScaffoldMessenger.of(context).showSnackBar(
                        SnackBar(
                          content: Text("${membersNames[index]} Deleted"),
                        ),
                      );
                    } else {
                      ScaffoldMessenger.of(context).showSnackBar(
                        SnackBar(
                          content: Text("${membersNames[index]} Deleted"),
                        ),
                      );
                    }
                    setState(() {
                      --membersNames.length;
                    });
                  },
                  child: MemberInfoContainer(
                    memberName: membersNames[index],
                    memberRole: membersRole[index],
                    memberStatus: membersStatus[index],
                    memberImagePath: membersImagesPath[index],
                  ),
                ),
              ),
            ),
          ],
        ),
      )),
    );
  }
}
