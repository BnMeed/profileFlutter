

import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {

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


class BasicsPage extends StatefulWidget {
  static  Color backgroundColor = Colors.white;
  static  Color TextColor = Colors.black;
  static  Color postBackground = Colors.white;
  static String friendName="Bnou Mohamed";
  static String imagePath="https://upload.wikimedia.org/wikipedia/commons/7/74/Mohammed_bin_Hadou_Moroccan_ambassador_to_Great_Britain_1682.jpg";


static  TextStyle textStyle1=TextStyle(color: TextColor,fontSize:20);



  @override
  State<BasicsPage> createState() => _BasicsPageState();
}

class _BasicsPageState extends State<BasicsPage> {


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


  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: BasicsPage.backgroundColor,
        appBar: AppBar(
          leading: Icon(Icons.arrow_back_ios_new),

          backgroundColor: Colors.blue,

          actions: [
            Text(BasicsPage.friendName,
                style: TextStyle(color: BasicsPage.TextColor, fontSize: 20)),
            Icon(Icons.arrow_drop_down, size: 28),
            SizedBox(width: 60),
            Icon(Icons.settings),
            SizedBox(width: 10),
            Icon(Icons.search_sharp)
          ],


        ),

        floatingActionButton: FloatingActionButton(
          onPressed: () =>
          {
            setState(() {
              BasicsPage.backgroundColor =
              (BasicsPage.backgroundColor == Colors.white)
                  ? Colors.black
                  : Colors.white;
              BasicsPage.TextColor =
              (BasicsPage.TextColor == Colors.black) ? Colors.white : Colors
                  .black;
              BasicsPage.textStyle1 = (BasicsPage.textStyle1 ==
                  TextStyle(color: Colors.white, fontSize: 20)) ? TextStyle(
                  color: Colors.black, fontSize: 20) : TextStyle(
                  color: Colors.white, fontSize: 20);
              BasicsPage.postBackground =
              (BasicsPage.postBackground == Colors.white)
                  ? Colors.white10
                  : Colors.white;
            }),
            print("khdam")
          },
          child: Icon(Icons.dark_mode_sharp),
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.endDocked,


        body: SingleChildScrollView(

          child:
          Column(
            children: <Widget>[
              Stack(
                  alignment: Alignment.topCenter,

                  children: [
                    Container(

                      child: wallPicture(),
                    ),
                    Padding(
                        padding: EdgeInsets.only(top: 180, right: 230), child:
                    CircleAvatar(
                      radius: 80,
                      backgroundColor: BasicsPage.backgroundColor,
                      child: profilePicture(),
                    )
                    )
                  ]),
              Center(
                  child: Text(BasicsPage.friendName, style: BasicsPage.textStyle1,)),
              Text(
                "Un homme sage ne croit que la moitié de ce qu’il lit. Plus sage encore, il sait laquelle",
                textAlign: TextAlign.center,
                style: TextStyle(color: BasicsPage.TextColor),
              )
              , Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Expanded(
                    flex: 3,
                    child: ElevatedButton(
                      onPressed: () {},
                      child: Text('Modify Profile'),
                      style: ButtonStyle(
                          foregroundColor: MaterialStateProperty.all<Color>(
                              BasicsPage.TextColor),
                          backgroundColor: MaterialStateProperty.all<Color>(
                              Colors.blue)),
                    ),
                  ),
                  Expanded(
                    flex: 1,
                    child: IconButton(
                      onPressed: () {},
                      icon: Icon(Icons.edit, color: Colors.blue,),
                    ),)
                ],),
              Divider(
                height: 20,
                thickness: 1,
                color: Colors.grey[300],
                indent: 20,
                endIndent: 20,
              ),
              AboutSection(),
              FriendSec(),
              SizedBox(height: 12, width: 8),
              FriendList(),
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
        )
    );
  }


  Container profilePicture() {
    return Container(width: 150.0,
        height: 150.0,
        decoration: BoxDecoration(
            color: BasicsPage.backgroundColor,
            image: DecorationImage(
                image: NetworkImage(
                   BasicsPage.imagePath),
                fit: BoxFit.cover),
            borderRadius: BorderRadius.all(Radius.circular(75.0)),
            boxShadow: [
              BoxShadow(blurRadius: 7.0, color: BasicsPage.TextColor)
            ]));
  }

  Container wallPicture() {
    return Container(


        width: 600.0,
        height: 300.0,
        decoration: BoxDecoration(
            boxShadow: [BoxShadow(color: BasicsPage.backgroundColor)],
            image: DecorationImage(
                image: NetworkImage(
                    'https://upload.wikimedia.org/wikipedia/commons/thumb/0/01/Batalla_vikingos-andalus%C3%ADes_06.jpg/338px-Batalla_vikingos-andalus%C3%ADes_06.jpg'),
                fit: BoxFit.cover))
    );
  }


  Container AboutSection() {
    return Container(
      padding: EdgeInsets.all(10),
      child: Column(
        children: <Widget>[
          Text("About Me", style: BasicsPage.textStyle1),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              Icon(Icons.work, color: BasicsPage.TextColor),
              SizedBox(
                width: 10,
              ),
              Text("Engineer", style: BasicsPage.textStyle1)
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              Icon(Icons.celebration, color: BasicsPage.TextColor),
              SizedBox(
                width: 10,
              ),
              Text("23 ans ", style: BasicsPage.textStyle1,)
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              Icon(Icons.favorite, color: BasicsPage.TextColor,),
              SizedBox(
                width: 10,
              ),
              Text("4 wives :)", style: BasicsPage.textStyle1)
            ],
          ),
          SizedBox(height: 20,),
          Divider(
            height: 1,
            color: Colors.grey,
            indent: 20,
            endIndent: 20,
          ),

          // FriendSection(zzz
        ],
      ),
    );
  }

  Container FriendSec() {
    return Container(child:
    Align(
      alignment: Alignment.topCenter,
      child: Padding(
        padding: EdgeInsets.only(top: 10),
        child: Text(
          "Friends",
          style: TextStyle(
            color: BasicsPage.TextColor,
            fontSize: 25,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    ),);
  }


  InkWell Friend(String friendName, String imagePath) {
    return InkWell(
      onTap: () {
        BasicsPage.imagePath=imagePath;
        BasicsPage.friendName=friendName;
        Navigator.push(
          context as BuildContext,
          MaterialPageRoute(builder: (context) =>BasicsPage()),
        );


        print("uoodh");
      },
      child: Column(children: [
        Container(
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: NetworkImage(imagePath)
                ),
                borderRadius: BorderRadius.circular(15)),
            width: 100, height: 100, child: null),
        Text(" " + friendName + " ", style: BasicsPage.textStyle1),

      ]
      ),
    );
  }

  Container FriendList() {
    return Container(
      height: 150,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: [
          Friend("Isaac Newton",
              "https://upload.wikimedia.org/wikipedia/commons/thumb/3/39/GodfreyKneller-IsaacNewton-1689.jpg/390px-GodfreyKneller-IsaacNewton-1689.jpg"),
          Friend("Saad Lamjarred",
              "https://m.media-amazon.com/images/I/81Qk3Vag79L.jpg"),
          Friend("Oussama ben Laden",
              "https://upload.wikimedia.org/wikipedia/commons/thumb/c/ca/Osama_bin_Laden_portrait.jpg/390px-Osama_bin_Laden_portrait.jpg"),
          Friend("elon musk",
              "https://upload.wikimedia.org/wikipedia/commons/thumb/f/f4/USAFA_Hosts_Elon_Musk_%28Image_1_of_17%29_%28cropped%29.jpg/300px-USAFA_Hosts_Elon_Musk_%28Image_1_of_17%29_%28cropped%29.jpg"),
          Friend("Batman",
              "https://upload.wikimedia.org/wikipedia/commons/thumb/1/1b/Batman_%28black_background%29.jpg/420px-Batman_%28black_background%29.jpg"),


        ],
      ),
    );
  }


  Container PostContainer() {
    return Container(color: Colors.black12,

      child: Column(
        children: <Widget>[
          Text("Posts", style: TextStyle(
            color: BasicsPage.TextColor,
            fontSize: 25,
            fontWeight: FontWeight.bold,
          )),
          Post("100", "17",
              'https://res.cloudinary.com/practicaldev/image/fetch/s--JcyEpOBL--/c_limit%2Cf_auto%2Cfl_progressive%2Cq_auto%2Cw_880/https://dev-to-uploads.s3.amazonaws.com/uploads/articles/au3f7tzbla8hydecno6q.jpg'),
          Post("300", "80",
              'https://res.cloudinary.com/practicaldev/image/fetch/s--FB6yAyrr--/c_limit%2Cf_auto%2Cfl_progressive%2Cq_auto%2Cw_880/https://dev-to-uploads.s3.amazonaws.com/uploads/articles/k73lh16rzctwa0bs5yjl.jpg'),

        ],
      ),
    );
  }


  Container Post(String likes, String comments, String imgURL) {
    return Container(
      padding: EdgeInsets.only(bottom: 15),
      margin: EdgeInsets.all(5),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(5),
        color: BasicsPage.postBackground,
      ),
      width: 500,
      child: SingleChildScrollView(
          child:
          Column(

            children: [
              SizedBox(height: 10,),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  CircleAvatar(
                    radius: 30,
                    backgroundImage: NetworkImage(
                        'https://upload.wikimedia.org/wikipedia/commons/7/74/Mohammed_bin_Hadou_Moroccan_ambassador_to_Great_Britain_1682.jpg'),
                  ),
                  SizedBox(width: 5),
                  Text("Bnou Mohamed", style: BasicsPage.textStyle1),
                  SizedBox(width: 120),

                  Icon(Icons.keyboard_control, color: BasicsPage.TextColor,),
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
                        fit: BoxFit.fill,
                        image: NetworkImage(
                            imgURL),
                      ),
                    ),
                  )
                ],
              ),
              Container(
                  width: 250,
                  padding: EdgeInsets.all(10),
                  child: Text("", style: TextStyle(color: Colors.blue))
              ),
              Divider(height: 2, color: Colors.grey,),
              SizedBox(height: 10),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [

                  Icon(Icons.favorite, color: BasicsPage.TextColor,),
                  Text(likes, style: BasicsPage.textStyle1),
                  Icon(Icons.comment, color: BasicsPage.TextColor),
                  Text(comments, style: BasicsPage.textStyle1),

                ],
              )
            ],
          )
      ),

    );
  }


}
//Navigator.push(
//                 context as BuildContext,
//                 MaterialPageRoute(builder: (context) => BasicsPage()),
//               );
//