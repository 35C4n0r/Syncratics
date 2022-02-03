import 'package:flutter/cupertino.dart';
import 'package:flutter/services.dart';
import 'package:one_plus_file_manager/reusable_card.dart';
import 'package:flutter/services.dart';
import 'main.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'constants.dart';

enum econ {
  categories,
  storage,
  share,
}

econ selectedIcon = econ.categories;

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 80,
        elevation: 0.5,
        shadowColor: Colors.black,
        backgroundColor: const Color(0xFAFAFAFA),
        title: const Padding(
          padding: EdgeInsets.only(top: 18.0),
          child: Text(
            "File manager",
            style: kAllBlackText,
          ),
        ),
        actions: [
          IconButton(
            padding: const EdgeInsets.only(top: 10),
            onPressed: () {},
            icon: const Icon(
              Icons.search,
              color: Colors.black87,
              size: 25,
            ),
          ),
          IconButton(
            padding: const EdgeInsets.only(top: 10),
            onPressed: () {},
            icon: const Icon(
              Icons.more_vert,
              color: Colors.black87,
              size: 25,
            ),
          )
        ],
      ),
      body: SingleChildScrollView(
        child: Container(
          height: 850,
          // width: double.infinity,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              const SizedBox(
                height: 25,
              ),
              Expanded(
                flex: 0,
                child: InkWell(
                  radius: 1000,
                  onTap: () {
                    setState(() {});
                  },
                  splashColor: Colors.grey,
                  child: const ListTile(
                    dense: false,
                    title: Text(
                      "Available 201GB / 256GB",
                      style: kAllLightText,
                    ),
                    trailing: Text("Details >", style: kAllLightText,),
                  ),
                ),
              ),
              Expanded(
                flex: 2,
                child: Row(
                  children: const <Widget>[
                    Expanded(
                      child: ReusableCard(
                        text1: "Docume...",
                        text2: "10 items",
                        cardChild: Icons.insert_drive_file_outlined,
                        colour: Color(0xFFFD8234),
                        top: 0,
                        left: 15,
                        bottom: 5,
                        right: 5,
                      ),
                    ),
                    Expanded(
                      child: ReusableCard(
                        text1: "Downloa...",
                        text2: "10 items",
                        cardChild: Icons.download_outlined,
                        colour: Color(0xFF57C9D4),
                        top: 0,
                        left: 5,
                        bottom: 5,
                        right: 5,
                      ),
                    ),
                    Expanded(
                      child: ReusableCard(
                        text1: "Recent",
                        text2: "10 items",
                        cardChild: Icons.watch_later_outlined,
                        colour: Color(0xFFCADC24),
                        // colour: Color(0xFF5C78EE),
                        top: 0,
                        left: 5,
                        bottom: 5,
                        right: 15,
                      ),
                    ),
                  ],
                ),
              ),
              Expanded(
                flex: 2,
                child: Row(
                  children: const <Widget>[
                    Expanded(
                      child: ReusableCard(
                        text1: "Images",
                        text2: "10 items",
                        cardChild: Icons.image_outlined,
                        colour: Color(0xFF4ABFA5),
                        top: 5,
                        left: 15,
                        bottom: 5,
                        right: 5,
                      ),
                    ),
                    Expanded(
                      child: ReusableCard(
                        text1: "Videos",
                        text2: "10 items",
                        cardChild: Icons.videocam_outlined,
                        colour: Color(0xFF5C78EE),
                        top: 5,
                        left: 5,
                        bottom: 5,
                        right: 5,
                      ),
                    ),
                    Expanded(
                      child: ReusableCard(
                        text1: "Audio",
                        text2: "10 items",
                        cardChild: Icons.music_note_outlined,
                        colour: Color(0xFFEE3473),
                        top: 5,
                        left: 5,
                        bottom: 5,
                        right: 15,
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              Expanded(
                child: InkWell(
                  onTap: () {},
                  splashColor: Colors.grey,
                  radius: 1000,
                  // borderRadius: BorderRadius.zero,
                  child: const ListTile(
                    leading: Icon(
                      Icons.android,
                    ),
                    subtitle: Text(
                      "10 items",
                      style: kAllLightText,
                    ),
                    title: Text(
                      "Install Packages",
                      style: kAllBlackText,
                    ),
                  ),
                ),
              ),
              Expanded(
                child: InkWell(
                  onTap: () {},
                  splashColor: Colors.grey,
                  radius: 1000,
                  child: const ListTile(
                    leading: Icon(
                      Icons.archive_outlined,
                    ),
                    subtitle: Text(
                      "10 items",
                      style: kAllLightText,
                    ),
                    title: Text(
                      "Archives",
                      style: kAllBlackText,
                    ),
                  ),
                ),
              ),
              Expanded(
                child: InkWell(
                  onTap: () {},
                  splashColor: Colors.grey,
                  radius: 1000,
                  child: const ListTile(
                    leading: Icon(
                      Icons.cloud_outlined,
                    ),
                    subtitle: Text(
                      "10 items",
                      style: kAllLightText,
                    ),
                    title: Text(
                      "Cloud Drive",
                      style: kAllBlackText,
                    ),
                  ),
                ),
              ),
              Expanded(
                child: InkWell(
                  radius: 1000,
                  onTap: () {
                    setState(() {});
                  },
                  splashColor: Colors.grey,
                  child: const ListTile(
                    leading: Icon(
                      FontAwesomeIcons.heart,
                    ),
                    subtitle: Text(
                      "10 items",
                      style: kAllLightText,
                    ),
                    title: Text(
                      "Favourites",
                      style: kAllBlackText,
                    ),
                  ),
                ),
              ),
              Expanded(
                child: InkWell(
                  radius: 1000,
                  onTap: () {
                    setState(() {});
                  },
                  splashColor: Colors.grey,
                  child: const ListTile(
                    leading: Icon(
                      Icons.filter_9_plus_outlined,
                    ),
                    subtitle: Text(
                      "10 items",
                      style: kAllLightText,
                    ),
                    title: Text(
                      "Large Files",
                      style: kAllBlackText,
                    ),
                  ),
                ),
              ),
              Expanded(
                child: InkWell(
                  radius: 1000,
                  onTap: () {
                    setState(() {});
                  },
                  splashColor: Colors.grey,
                  child: const ListTile(
                    leading: Icon(
                      Icons.lock_outline,
                    ),
                    subtitle: Text(
                      "10 items",
                      style: kAllLightText,
                    ),
                    title: Text(
                      "Lockbox",
                      style: kAllBlackText,
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 30,
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: BottomAppBar(
        color: const Color(0xFFFAFAFA),
        child: Container(
          height: 65,
          width: 200,
          child: Padding(
            padding: const EdgeInsets.only(top: 8.0),
            child: Row(
              children: [
                Expanded(
                  child: GestureDetector(
                    onTap: () {
                      setState(() {
                        selectedIcon = econ.categories;
                      });
                    },
                    child: Column(
                      children: [
                        Icon(
                          Icons.category_outlined,
                          color: selectedIcon == econ.categories
                              ? kActiveIconColor
                              : kInactiveIconColor,
                        ),
                        const Text("Categories"),
                      ],
                    ),
                  ),
                ),
                Expanded(
                  child: GestureDetector(
                    onTap: () {
                      setState(() {
                        selectedIcon = econ.storage;
                      });
                    },
                    child: Column(
                      children: [
                        Icon(
                          Icons.storage_outlined,
                          color: selectedIcon == econ.storage
                              ? kActiveIconColor
                              : kInactiveIconColor,
                        ),
                        const Text("Storage"),
                      ],
                    ),
                  ),
                ),
                Expanded(
                  child: GestureDetector(
                    onTap: () {
                      setState(() {
                        selectedIcon = econ.share;
                      });
                    },
                    child: Column(
                      children: [
                        Icon(
                          Icons.share_outlined,
                          color: selectedIcon == econ.share
                              ? kActiveIconColor
                              : kInactiveIconColor,
                        ),
                        const Text("Share"),
                      ],
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
