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
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // TRY THIS: Try running your application with "flutter run". You'll see
        // the application has a blue toolbar. Then, without quitting the app,
        // try changing the seedColor in the colorScheme below to Colors.green
        // and then invoke "hot reload" (save your changes or press the "hot
        // reload" button in a Flutter-supported IDE, or press "r" if you used
        // the command line to start the app).
        //
        // Notice that the counter didn't reset back to zero; the application
        // state is not lost during the reload. To reset the state, use hot
        // restart instead.
        //
        // This works for code too, not just values: Most code changes can be
        // tested with just a hot reload.
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: BasicsPage(),
    );
  }
}

class Post {
  String text;
  String imageUrl;

  Post({required this.text, required this.imageUrl});
}

class CardItem {
  final String URLImage;
  final String name;

  const CardItem({
    required this.URLImage,
    required this.name
  });
}

class BasicsPage extends StatefulWidget{
  @override
  State<StatefulWidget> createState() => BasicsPageState();
}

class BasicsPageState extends State<BasicsPage> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
  }

  Color backgroundColor = Colors.white;
  Color TextColor = Colors.black;

  List<CardItem> items = [
    CardItem(
      URLImage: "images/christy.jpg",
      name: "Christy",
    ),
    CardItem(
      //NetworkImage('https://upload.wikimedia.org/wikipedia/commons/thumb/0/01/Batalla_vikingos-andalus%C3%ADes_06.jpg/338px-Batalla_vikingos-andalus%C3%ADes_06.jpg')
      URLImage: "https://upload.wikimedia.org/wikipedia/commons/thumb/0/01/Batalla_vikingos-andalus%C3%ADes_06.jpg/338px-Batalla_vikingos-andalus%C3%ADes_06.jpg",
      name: "Maggy"

    ),
    CardItem(
      URLImage: "https://upload.wikimedia.org/wikipedia/commons/thumb/0/01/Batalla_vikingos-andalus%C3%ADes_06.jpg/338px-Batalla_vikingos-andalus%C3%ADes_06.jpg",
      name: "Lucy",
    ),
  ];

  @override
  Widget build(BuildContext context){
    var size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        title: Text("Facebook Profile", style: TextStyle(color: TextColor),),
        backgroundColor: backgroundColor,
        leading: Icon(Icons.facebook, color: TextColor),
        actions: [Icon(Icons.handyman, color: TextColor,),
          Icon(Icons.border_color, color: TextColor)],
      ),
      body: SingleChildScrollView(
        child: Container(
          color: backgroundColor,
          child: Column(
            children: [
              Stack(
                alignment: Alignment.topCenter,
                children: [
                  Container(
                      width: MediaQuery.sizeOf(context).width,
                      height: 200,
                      color: Colors.black,
                      child:
                      Image(
                          image: NetworkImage(
                              'https://upload.wikimedia.org/wikipedia/commons/thumb/0/01/Batalla_vikingos-andalus%C3%ADes_06.jpg/338px-Batalla_vikingos-andalus%C3%ADes_06.jpg'),
                          fit: BoxFit.cover)),
                  Padding(
                      padding: EdgeInsets.only(top: 120),
                      child: Column(
                        children: [
                          CircleAvatar(
                            radius: 73,
                            backgroundColor: Colors.white,
                            child: CircleAvatar(
                              radius: 73,
                              backgroundImage:  NetworkImage(
                                      'https://upload.wikimedia.org/wikipedia/commons/thumb/0/01/Batalla_vikingos-andalus%C3%ADes_06.jpg/338px-Batalla_vikingos-andalus%C3%ADes_06.jpg'),
                            ),
                          ),
                          Text(
                            "Bnou Mohamed",
                            style: TextStyle(
                                color: TextColor,
                                fontSize: size.width/15,
                                fontWeight: FontWeight.bold
                            ),
                          )
                        ],
                      )
                  )
                ],
              ),
              Text(
                "Otman malki is a student",
                textAlign: TextAlign.left,
                style: TextStyle(color: TextColor),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Expanded(
                    flex: 2,
                    child: ElevatedButton(
                      onPressed: () {
                      },
                      child: Text('Modify Profile'),
                    ),
                  ),
                  Expanded(
                    flex: 1,
                    child: IconButton(
                      onPressed: (){
                      },
                      icon: Icon(Icons.border_color),
                    ),)
                ],),
              Divider(
                height: 20,
                thickness: 1,
                color: Colors.grey[300],
                indent: 20,
                endIndent: 20,
              ),
              Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Padding(
                        padding: EdgeInsets.only(top: 5),
                        child: Column(
                          children: [
                            Text(
                              "About Me",
                              style: TextStyle(
                                  color: TextColor,
                                  fontSize: 25,
                                  fontWeight: FontWeight.bold
                              ),
                            ),
                            SizedBox(height: 8),
                            Row(
                              children: [
                                Icon(
                                  Icons.home,
                                  size: 30,
                                  color: TextColor,
                                ),
                                SizedBox(width: 10),
                                Text(
                                  "Hay Riyad, Rabat-Sale-Kenitra",
                                  style: TextStyle(fontSize: 18, color: TextColor),
                                ),
                              ],
                            ),
                            Row(
                              children: [
                                Icon(
                                  Icons.work,
                                  size: 30,
                                  color: TextColor,
                                ),
                                SizedBox(width: 10),
                                Text(
                                  "flutter developper",
                                  style: TextStyle(fontSize: 18, color: TextColor),
                                ),
                              ],
                            ),
                            Row(
                              children: [
                                Icon(
                                  Icons.favorite,
                                  size: 30,
                                  color: TextColor,
                                ),
                                SizedBox(width: 10),
                                Text(
                                  "celibataire",
                                  style: TextStyle(fontSize: 18, color: TextColor),
                                ),
                              ],
                            ),
                          ],

                        )
                    )]),
              Divider(
                height: 20,
                thickness: 1,
                color: Colors.grey[300],
                indent: 20,
                endIndent: 20,
              ),
              Align(
                alignment: Alignment.topCenter,
                child: Padding(
                  padding: EdgeInsets.only(top: 10),
                  child: Text(
                    "Friends",
                    style: TextStyle(
                      color: TextColor,
                      fontSize: 25,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
              SizedBox(height: 12,width: 8),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Expanded(
                    child: Container(
                      height: 200,
                      child: ListView.separated(
                        scrollDirection: Axis.horizontal,
                        itemCount: items.length,
                        separatorBuilder: (context, _) => SizedBox(width: 12),
                        itemBuilder: (context, index) =>
                            buildFriendCard(item: items[index]),
                      ),
                    ),
                  ),
                ],
              ),
              Divider(
                height: 20,
                thickness: 1,
                color: Colors.grey[300],
                indent: 20,
                endIndent: 20,
              ),
              PostContainer(),
            ],
          ),
        ),

      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => {
          setState(() {
            backgroundColor = (backgroundColor == Colors.white) ? Colors.black : Colors.white;
            TextColor = (TextColor == Colors.black) ? Colors.white : Colors.black;
          }),
          print("Tapped")
        },
        child: Icon(Icons.color_lens),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.endDocked,
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
                backgroundImage: NetworkImage(
                        'https://upload.wikimedia.org/wikipedia/commons/thumb/0/01/Batalla_vikingos-andalus%C3%ADes_06.jpg/338px-Batalla_vikingos-andalus%C3%ADes_06.jpg')
              ),
              Text("Profile Name"),
              Text("Updated 5 Minutes Ago", style: TextStyle(color: Colors.blueAccent),),
            ],
          ),
          SizedBox(height: 10,),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Container(
                width: 350,
                height: 300,
                decoration: BoxDecoration(
                  shape: BoxShape.rectangle,
                  image: DecorationImage(
                    fit: BoxFit.cover,
                    image: NetworkImage(
                            'https://upload.wikimedia.org/wikipedia/commons/thumb/0/01/Batalla_vikingos-andalus%C3%ADes_06.jpg/338px-Batalla_vikingos-andalus%C3%ADes_06.jpg'),
                  ),
                ),
              ),
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
              Text("31 Likes"),
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
          Text("Post", style: TextStyle(
            color: TextColor,
            fontSize: 25,
            fontWeight: FontWeight.bold,
          )),
          Post(),
          Post()
        ],
      ),
    );
  }


  Widget buildFriendCard({required CardItem item}) => Column(
    children: [
      Container(
        width: 100,
        height: 100,
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          image: DecorationImage(
            fit: BoxFit.cover,
            image: AssetImage(item.URLImage),
          ),
        ),
      ),
      SizedBox(height: 8),
      Text(
        item.name,
        style: TextStyle(fontSize: 12, color: TextColor),
      ),
    ],
  );



  CircleAvatar MyProfile(){
    return CircleAvatar(
      radius: 58,
      backgroundImage:NetworkImage(
              'https://upload.wikimedia.org/wikipedia/commons/thumb/0/01/Batalla_vikingos-andalus%C3%ADes_06.jpg/338px-Batalla_vikingos-andalus%C3%ADes_06.jpg')
    );
  }


  Text textRich(String a, String b, String c){
    return Text.rich(
        TextSpan(
            text: 'text',
            style: TextStyle(color: Colors.blueAccent),
            children: [
              TextSpan(
                text: 'text',
                style: TextStyle(fontSize: 30, color: Colors.black),
              ),
              TextSpan(
                text: 'text',
                style: TextStyle(fontSize: 30, color: Colors.grey),
              ),
            ]
        )
    );
  }

  Text SimpleText(String text){
    return Text(
        text,
        style: TextStyle(
          fontSize: 30,
          color: Colors.white,
        ));
  }
}

class IconWithDescription extends StatelessWidget {
  final IconData icon;
  final String description;

  IconWithDescription({required this.icon, required this.description});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Icon(
          icon,
          size: 30,
        ),
        SizedBox(width: 10),
        Text(
          description,
          style: TextStyle(fontSize: 18),
        ),
      ],
    );
  }
}