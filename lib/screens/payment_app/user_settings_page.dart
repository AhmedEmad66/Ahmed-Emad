import 'package:flutter/material.dart';

class UserSettingsPage extends StatelessWidget {
  const UserSettingsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: const Color(0xffFBFAFA),
      body: SafeArea(
        child: SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          child: Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 15,
              vertical: 20,
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const Text(
                  "User settings",
                  style: TextStyle(fontSize: 30, fontWeight: FontWeight.w600),
                ),
                Container(
                  margin: const EdgeInsets.symmetric(vertical: 20),
                  width: double.infinity,
                  height: 170,
                  decoration: BoxDecoration(
                    color: const Color.fromARGB(255, 99, 154, 254),
                    borderRadius: BorderRadius.circular(20),
                    boxShadow: const [
                      BoxShadow(
                        color: Colors.grey,
                        offset: Offset(0, 5),
                        blurRadius: 5.0,
                        spreadRadius: 1.0,
                      ),
                    ],
                  ),
                  child: Stack(
                    children: [
                      Positioned(
                        left: 15,
                        top: 20,
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const CircleAvatar(
                              backgroundColor: Colors.white,
                              child: Icon(
                                Icons.person,
                                color: Colors.black,
                              ),
                            ),
                            const SizedBox(
                              width: 10,
                            ),
                            Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: const [
                                Text(
                                  "Rein Gundersen Bentdal",
                                  style: TextStyle(
                                      fontSize: 15,
                                      fontWeight: FontWeight.w600,
                                      color: Colors.white),
                                ),
                                SizedBox(
                                  height: 5,
                                ),
                                Text(
                                  "Creative builder",
                                  style: TextStyle(
                                      fontSize: 10,
                                      fontWeight: FontWeight.w400,
                                      color: Colors.white),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                      Positioned(
                        bottom: 30,
                        left: 30,
                        right: 30,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Column(
                              children: const [
                                Text(
                                  "846",
                                  style: TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.w700,
                                      color: Colors.white),
                                ),
                                SizedBox(
                                  height: 5,
                                ),
                                Text(
                                  "collect",
                                  style: TextStyle(
                                      fontSize: 14,
                                      fontWeight: FontWeight.w400,
                                      color: Colors.white),
                                ),
                              ],
                            ),
                            Column(
                              children: const [
                                Text(
                                  "51",
                                  style: TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.w700,
                                      color: Colors.white),
                                ),
                                SizedBox(
                                  height: 5,
                                ),
                                Text(
                                  "Attention",
                                  style: TextStyle(
                                      fontSize: 14,
                                      fontWeight: FontWeight.w400,
                                      color: Colors.white),
                                ),
                              ],
                            ),
                            Column(
                              children: const [
                                Text(
                                  "267",
                                  style: TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.w700,
                                      color: Colors.white),
                                ),
                                SizedBox(
                                  height: 5,
                                ),
                                Text(
                                  "Track",
                                  style: TextStyle(
                                      fontSize: 14,
                                      fontWeight: FontWeight.w400,
                                      color: Colors.white),
                                ),
                              ],
                            ),
                            Column(
                              children: const [
                                Text(
                                  "39",
                                  style: TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.w700,
                                      color: Colors.white),
                                ),
                                SizedBox(
                                  height: 5,
                                ),
                                Text(
                                  "Coupons",
                                  style: TextStyle(
                                      fontSize: 14,
                                      fontWeight: FontWeight.w400,
                                      color: Colors.white),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    InkWell(
                      child: Column(
                        children: const [
                          Icon(Icons.attach_money_outlined),
                          SizedBox(
                            height: 10,
                          ),
                          Text(
                            "Wellet",
                            style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        ],
                      ),
                    ),
                    InkWell(
                      child: Column(
                        children: const [
                          Icon(Icons.delivery_dining_outlined),
                          SizedBox(
                            height: 10,
                          ),
                          Text(
                            "Delivery",
                            style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        ],
                      ),
                    ),
                    InkWell(
                      child: Column(
                        children: const [
                          Icon(Icons.message),
                          SizedBox(
                            height: 10,
                          ),
                          Text(
                            "Message",
                            style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        ],
                      ),
                    ),
                    InkWell(
                      child: Column(
                        children: const [
                          Icon(Icons.room_service),
                          SizedBox(
                            height: 10,
                          ),
                          Text(
                            "Service",
                            style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 30,
                ),
                UserSettingsBtn(
                  title: "Address",
                  description: "Ensure your harvesting address",
                  icon: const Icon(
                    Icons.location_on,
                    color: Colors.white,
                  ),
                  color: const Color(0xff9C95E3),
                  onTap: () {},
                ),
                const SizedBox(
                  height: 20,
                ),
                UserSettingsBtn(
                    title: "Privacy",
                    description: "System permission change",
                    icon: const Icon(
                      Icons.lock,
                      color: Colors.white,
                    ),
                    color: const Color(0xffEE87BF),
                    onTap: () {}),
                const SizedBox(
                  height: 20,
                ),
                UserSettingsBtn(
                    title: "General",
                    description: "Basic functional settings",
                    icon: const Icon(
                      Icons.menu,
                      color: Colors.white,
                    ),
                    color: const Color(0xffFFD278),
                    onTap: () {}),
                const SizedBox(
                  height: 20,
                ),
                UserSettingsBtn(
                    title: "Notification",
                    description: "Take over the news in time",
                    icon: const Icon(
                      Icons.notifications,
                      color: Colors.white,
                    ),
                    color: const Color(0xff8DCFDE),
                    onTap: () {}),
                const SizedBox(
                  height: 20,
                ),
                UserSettingsBtn(
                    title: "Support",
                    description: "We are here to help",
                    icon: const Icon(
                      Icons.support_agent_outlined,
                      color: Colors.white,
                    ),
                    color: const Color(0xffCABCBC),
                    onTap: () {}),
                const SizedBox(
                  height: 20,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class UserSettingsBtn extends StatelessWidget {
  final String title;
  final String description;
  final Icon icon;
  final Color color;
  final VoidCallback onTap;
  const UserSettingsBtn({
    super.key,
    required this.title,
    required this.description,
    required this.icon,
    required this.color,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        width: double.infinity,
        height: 70,
        padding: const EdgeInsets.symmetric(horizontal: 20),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(50),
          boxShadow: const [
            BoxShadow(
              color: Colors.grey,
              offset: Offset(0, 3),
              blurRadius: 10.0,
              spreadRadius: 3.0,
            ),
          ],
        ),
        child: Row(
          children: [
            CircleAvatar(
              backgroundColor: color,
              child: icon,
            ),
            const SizedBox(
              width: 10,
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: const TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.w700,
                  ),
                ),
                const SizedBox(
                  height: 5,
                ),
                Text(
                  description,
                  style: const TextStyle(
                      fontSize: 12,
                      fontWeight: FontWeight.w400,
                      color: Colors.grey),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
