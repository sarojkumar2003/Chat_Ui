import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        drawerTheme: DrawerThemeData(
          scrimColor: Colors.transparent
        ) 
      ),
      title: 'ChatApp',
      home: const MyHomePage(
        title: '',
      ),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final GlobalKey<ScaffoldState> _globalKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _globalKey,
      backgroundColor: Color(0xFF171717),
      body: Stack(
        children: [
          Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 70, left: 5, right: 5),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    IconButton(
                        onPressed: () {
                          _globalKey.currentState!.openDrawer();
                        },
                        icon: const Icon(
                          Icons.menu,
                          color: Colors.white,
                        )),
                    IconButton(
                        onPressed: () {},
                        icon: const Icon(
                          Icons.search,
                          color: Colors.white,
                        ))
                  ],
                ),
              ),
              SizedBox(
                height: 50,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  padding: EdgeInsets.only(left: 10),
                  children: [
                    TextButton(
                        onPressed: () {},
                        child: const Text(
                          "Messages",
                          style: TextStyle(color: Colors.white),
                        )),
                    const SizedBox(
                      width: 35,
                    ),
                    TextButton(
                        onPressed: () {},
                        child: const Text(
                          "Online",
                          style: TextStyle(color: Colors.grey),
                        )),
                    const SizedBox(
                      width: 35,
                    ),
                    TextButton(
                        onPressed: () {},
                        child: const Text(
                          "Groups",
                          style: TextStyle(color: Colors.grey),
                        )),
                    const SizedBox(
                      width: 35,
                    ),
                    TextButton(
                        onPressed: () {},
                        child: const Text(
                          "more",
                          style: TextStyle(color: Colors.grey),
                        )),
                    const SizedBox(
                      width: 35,
                    ),
                  ],
                ),
              )
            ],
          ),
          Positioned(
              top: 190,
              left: 0,
              right: 0,
              child: Container(
                  padding: EdgeInsets.only(top: 15, left: 25, right: 25),
                  height: 220,
                  decoration: BoxDecoration(
                      color: Color(0xFF27c1a9),
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(40),
                          topRight: Radius.circular(40))),
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          const Text(
                            "Favorite Contacts",
                            style: TextStyle(color: Colors.white),
                          ),
                          IconButton(
                              onPressed: () {},
                              icon: const Icon(
                                Icons.more_horiz,
                                color: Colors.white,
                              ))
                        ],
                      ),
                      SizedBox(
                        height: 90,
                        child: ListView(
                          scrollDirection: Axis.horizontal,
                          children: [
                            buildcontactAvatar('Alla', 'img1.jpeg'),
                            buildcontactAvatar('July', 'img2.jpeg'),
                            buildcontactAvatar('Mikle', 'img3.jpeg'),
                            buildcontactAvatar('Kler', 'img4.jpg'),
                            buildcontactAvatar('Moane', 'img5.jpeg'),
                            buildcontactAvatar('Julie', 'img6.jpeg'),
                            buildcontactAvatar('Allen', 'img7.jpeg'),
                            buildcontactAvatar('Jhon', 'img8.jpg'),
                          ],
                        ),
                      )
                    ],
                  ))),
          Positioned(
              top: 365,
              left: 0,
              right: 0,
              bottom: 0,
              child: Container(
                padding: EdgeInsets.symmetric(vertical: 15),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(40),
                      topRight: Radius.circular(40)),
                  color: Color(0xFFEFFFFC),
                ),
                child: ListView(
                  padding: EdgeInsets.only(left: 25),
                  children: [
                    buildConversationRow(
                        'Lora', 'Hello, how are you', 'img1.jpeg', 0),
                    buildConversationRow(
                        'Kiya', 'Will you visite me, ', 'img2.jpeg', 2),
                    buildConversationRow(
                        'Mary', 'I am very happy today......', 'img3.jpeg', 6),
                    buildConversationRow(
                        'Hellen', 'Are you with kayla again', 'img4.jpeg', 0),
                    buildConversationRow(
                        'Louren', 'Barrow money plese', 'img5.jpeg', 3),
                    buildConversationRow(
                        'Lora', 'Hello, how are you', 'img6.jpeg', 0),
                    buildConversationRow(
                        'Tom', 'Hey whatsup! bro.......??', 'img7.jpeg', 0),
                    buildConversationRow(
                        'Lora', 'Hello, are you looking good', 'img3.jpeg', 0),
                    Divider(
                      indent: 70,
                    )
                  ],
                ),
              ))
        ],
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.endDocked,
      floatingActionButton: SizedBox(
        height: 65,
        width: 65,
        child: FloatingActionButton(
            backgroundColor: Color(0xFF27c1a9),
            child: Icon(
              Icons.edit_outlined,
              size: 30,
            ),
            onPressed: () {}),
      ),
      drawer: Drawer(
        width: 275,
        elevation: 30,
        backgroundColor: Colors.transparent,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.horizontal(right: Radius.circular(40)),
        ),
        child: Container(
          decoration: const BoxDecoration(
            color: Color(0xF71F1E1E),
            borderRadius: BorderRadius.horizontal(right: Radius.circular(40)),
            boxShadow: [
              BoxShadow(
                color: Color(0x3D000000),spreadRadius: 30,blurRadius: 20
              )
            ]
          ),
          child: Padding(
            padding: const EdgeInsets.fromLTRB(20, 50, 20, 20),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  children: [
                    Row(
                      children: [
                        Icon(
                          Icons.arrow_back_ios,
                          color: Colors.white,
                          size: 20,
                        ),
                        SizedBox(
                          width: 56,
                        ),
                        Text(
                          'settings',
                          style: TextStyle(color: Colors.white, fontSize: 16),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 30,
                    ),
                    Row(
                      children: [
                        userAvatar(filename: 'img3.jpeg'),
                        SizedBox(
                          width: 12,
                        ),
                        Text(
                          'Tom Brenan',
                          style: TextStyle(color: Colors.white),
                        )
                      ],
                    ),
                    SizedBox(
                      height: 35,
                    ),
                    DrawerItem(title: 'Account', icon: Icons.key,),
                    DrawerItem(title: 'Chats', icon: Icons.chat_bubble,),
                    DrawerItem(title: 'Notifactons', icon: Icons.notifications,),
                    DrawerItem(title: 'Data and Storage', icon: Icons.storage,),
                    DrawerItem(title: 'Help', icon: Icons.help,),
                    Divider(
                      height: 35,
                      color: Colors.green,
                    ),
                    DrawerItem(title: 'Invite a friend', icon: Icons.people_outline,),
                    
                  ],
                ),
                DrawerItem(title: 'Log out', icon: Icons.logout,),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Column buildConversationRow(
      String name, String message, String filename, int msgCount) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                userAvatar(filename: filename),
                SizedBox(
                  width: 15,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      name,
                      style: TextStyle(color: Colors.black),
                    ),
                    SizedBox(
                      width: 5,
                    ),
                    Text(
                      message,
                      style: TextStyle(color: Colors.black),
                    )
                  ],
                )
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(right: 25, top: 5),
              child: Column(
                children: [
                  Text(
                    '16:35',
                    style: TextStyle(fontSize: 10),
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  if (msgCount > 0)
                    CircleAvatar(
                      radius: 7,
                      backgroundColor: Color(0xFF2Fc1a9),
                      child: Text(
                        msgCount.toString(),
                        style: TextStyle(fontSize: 10, color: Colors.white),
                      ),
                    )
                ],
              ),
            )
          ],
        ),
      ],
    );
  }

  Padding buildcontactAvatar(String name, String filename) {
    return Padding(
      padding: const EdgeInsets.only(right: 20.0),
      child: Column(
        children: [
          userAvatar(
            filename: filename,
          ),
          const SizedBox(
            height: 5,
          ),
          Text(
            name,
            style: TextStyle(color: Colors.white, fontSize: 16),
          )
        ],
      ),
    );
  }
}

class DrawerItem extends StatelessWidget {
  final String title;
  final IconData icon;
  const DrawerItem({
    super.key, required this.title, required this.icon,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell( 
      onTap: (){

      },
      child: Padding(
        padding: const EdgeInsets.only(bottom:25),
        child: Row(
          children: [
            Icon(
              icon,
              color: Colors.white,
              size: 20,    
            ),
            SizedBox(
              width: 56,
            ),
            Text(
              title,
              style: TextStyle(color: Colors.white, fontSize: 16),
            ),
          ],
        ),
      ),
    );
  }
}

class userAvatar extends StatelessWidget {
  final String filename;
  const userAvatar({
    super.key,
    required this.filename,
  });

  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      backgroundColor: Colors.white,
      radius: 32,
      child: CircleAvatar(
        radius: 29,
        backgroundImage: Image.asset('assets/images/$filename').image,
      ),
    );
  }
}
