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
      home: BasicPage(),
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.black),
        useMaterial3: true,
      ),
    );
  }
}

class BasicPage extends StatelessWidget {
  const BasicPage({super.key});

  // my text style
  static const TextStyle myTextStyle = TextStyle(
      color: Colors.black,
      fontSize: 25,
      fontWeight: FontWeight.bold,
      fontStyle: FontStyle.italic);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: Text("Facebook"),
        leading: Icon(Icons.facebook),
        actions: [
          Icon(Icons.favorite),
          SizedBox(width: 5,),
          Icon(Icons.pan_tool),
          SizedBox(width: 5,)
        ],
      ),
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(children: <Widget>[
          Stack(
            alignment: Alignment.topCenter,
            children: [
              Image.asset(
                "images/cato.jpg",
                height: 199,
                width: 500,
                fit: BoxFit.cover,
              ),
              Padding(
                padding: EdgeInsets.only(top: 120),
                child: CircleAvatar(
                  radius: 60,
                  backgroundColor: Colors.white,
                  child: profilePicture(),
                ),
              ),
            ],
          ),
          Center(child: Text("Souhail Jamhour", style: myTextStyle)),
          Button(),
          SizedBox(height: 7,),
          Divider(
            height: 1,
            color: Colors.grey,
            indent: 20,
            endIndent: 20,
          ),
          AboutSection(),
          SizedBox(
            height: 10,
          ),
          FriendSection(),
          // FriendList(),
          Divider(
            height: 1,
            color: Colors.grey,
            indent: 20,
            endIndent: 20,
          ),
          SizedBox(
            height: 10,
          ),
          PostContainer()
          // AssetImage(assetName)
        ]),
      ),
    );
  }
}

CircleAvatar profilePicture() {
  return CircleAvatar(
    radius: 55,
    backgroundImage: AssetImage("images/dogo.jpg"),
  );
}

Container AboutSection() {
  return Container(
    padding: EdgeInsets.all(10),
    child: Column(
      children: <Widget>[
        Text("About Me", style: BasicPage.myTextStyle),
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            Icon(Icons.home),
            SizedBox(
              width: 10,
            ),
            Text("ouj3a")
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            Icon(Icons.luggage),
            SizedBox(
              width: 10,
            ),
            Text("Java Developper")
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            Icon(Icons.favorite),
            SizedBox(
              width: 10,
            ),
            Text("Married")
          ],
        ),
        SizedBox(height: 20,),
        Divider(
          height: 1,
          color: Colors.grey,
          indent: 20,
          endIndent: 20,
        ),
        // FriendSection()
      ],
    ),
  );
}

Container FriendSection() {
  return Container(
    child: Column(
      children: [
        Text("Friends", style: BasicPage.myTextStyle),
        FriendList(),
      ],
    ),
  );
}

Container FriendList(){
  return Container(
    height: 150,
    child: ListView(
      scrollDirection: Axis.horizontal,
      children: [
        Friend("souhail", "images/cato.jpg"),
        Friend("taha", "images/img1.jpg"),
        Friend("smadgi","images/dogo.jpg"),
        Friend("souhail", "images/cato.jpg"),
        Friend("taha", "images/img1.jpg"),
        Friend("smadgi","images/dogo.jpg")
      ],
    ),
  );
}

Column Friend(String friendName, String imagePath) {
  return Column(children: [
    Container(
        decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage(imagePath)
            ),
            borderRadius: BorderRadius.circular(15)),
        width: 100, height: 100, child: null),
    Text(friendName)
  ]);
}

Container Button(){
  return Container(
    child: Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        ElevatedButton(
            onPressed: null,
            child: Text("Press me"),
            style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all(Colors.blueAccent),
                padding: MaterialStateProperty.all(EdgeInsets.symmetric(horizontal: 80)),
                textStyle: MaterialStateProperty.all(TextStyle(fontSize: 15)))
        ),
        SizedBox(width: 20,),
        ElevatedButton(
            onPressed: null,
            child: Icon(Icons.change_circle),
            style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all(Colors.blueAccent),
                // padding: MaterialStateProperty.all(EdgeInsets.symmetric(horizontal: 100)),
                textStyle: MaterialStateProperty.all(TextStyle(fontSize: 15)))
        )
      ],
    ),
  );
}

Container Post(){
  return Container(
    padding: EdgeInsets.only(bottom: 15),
    margin: EdgeInsets.all(15),
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(12),
      color: Colors.grey,
    ),
    width: 500,
    child: Column(
      children: [
        SizedBox(height: 10,),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            CircleAvatar(
              radius: 30,
              backgroundImage: AssetImage("images/cato.jpg"),
            ),
            Text("Profile Name"),
            Text("Updated 5 Minutes Ago", style: TextStyle(color: Colors.blueAccent),),
          ],
        ),
        SizedBox(height: 10,),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Image.network("https://cdn.pixabay.com/photo/2023/06/04/11/42/river-8039447_1280.jpg",width: 300,)
          ],
        ),
        Container(
            width: 250,
            padding: EdgeInsets.all(10),
            child: Text("Hello this a description for the post lorem ipsum", style: TextStyle(color: Colors.blueAccent))
        ),
        Divider(height: 2,color: Colors.grey,),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Icon(Icons.favorite),
            Text("0 Likes"),
            Icon(Icons.comment),
            Text("5 Comments")
          ],
        )
      ],
    ),
  );
}

Container PostContainer(){
  return Container(
    child: Column(
      children: <Widget>[
        Text("Post", style: BasicPage.myTextStyle),
        Post(),
        Post()
      ],
    ),
  );
}

Text HeadingTitle(String title){
  return Text(title,style: BasicPage.myTextStyle,);
}