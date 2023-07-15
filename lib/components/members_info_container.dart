import 'package:flutter/material.dart';

class MemberInfoContainer extends StatefulWidget {
  const MemberInfoContainer({
    super.key,
    required this.memberName,
    required this.memberRole,
    required this.memberStatus,
    required this.memberImagePath,
  });
  final String memberName;
  final String memberRole;
  final bool memberStatus;
  final String memberImagePath;
  @override
  State<MemberInfoContainer> createState() => _MemberInfoContainerState();
}

class _MemberInfoContainerState extends State<MemberInfoContainer> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 10, horizontal: 15),
      width: double.infinity,
      height: 70,
      padding: const EdgeInsets.symmetric(horizontal: 10),
      color: Colors.white,
      child: Row(
        children: [
          SizedBox(
            child: Stack(
              children: [
                CircleAvatar(
                  backgroundColor: const Color.fromARGB(255, 224, 224, 224),
                  backgroundImage: AssetImage(widget.memberImagePath),
                  radius: 25,
                ),
                Positioned(
                  bottom: 0,
                  right: 0,
                  child: Container(
                    width: 15,
                    height: 15,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      color: widget.memberStatus == false
                          ? Colors.red
                          : Colors.green,
                    ),
                  ),
                )
              ],
            ),
          ),
          const SizedBox(
            width: 15,
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                widget.memberName,
                style: const TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w700,
                ),
              ),
              const SizedBox(
                height: 5,
              ),
              Text(
                widget.memberRole,
                style: const TextStyle(
                    fontSize: 10,
                    fontWeight: FontWeight.w500,
                    color: Colors.grey),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

List<String> membersNames = [
  'Ahmed Emad',
  'Mohmed Ahmed',
  'khaled mostafa',
  'samy ali',
  'walid ahmed',
  'slama nady',
  'saied sayed',
];
List<String> membersRole = [
  'FrontEnd Dev',
  'Project Manager',
  'Designer',
  'web Dev',
  'Designer',
  'web Dev',
  'Designer',
];

List<String> membersImagesPath = [
  "assets/images/1.jpg",
  "assets/images/2.jpg",
  "assets/images/3.jpg",
  "assets/images/4.jpg",
  "assets/images/5.jpg",
  "assets/images/3.jpg",
  "assets/images/1.jpg",
];

List<bool> membersStatus = [
  true,
  false,
  true,
  false,
  true,
  false,
  false,
];
