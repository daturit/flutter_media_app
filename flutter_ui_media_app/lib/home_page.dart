import 'package:flutter/material.dart';
import 'package:flutteruimediaapp/friends.dart';
import 'package:flutteruimediaapp/post.dart';
import 'package:flutteruimediaapp/profile_page.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF251F1F),
      appBar: AppBar(
        backgroundColor: Color(0xFF3C484F),
        elevation: 0,
        title: Text(
          'TimeLine',
          style: TextStyle(fontSize: 30, fontFamily: 'Eater'),
        ),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.more_vert),
            onPressed: () {},
            iconSize: 35.0,
          ),
        ],
      ),
      body: ListView(
        children: <Widget>[
          _buildListProfile(),
          Container(
            height: 600.0,
            width: double.infinity,
            child: ListView.builder(
              scrollDirection: Axis.vertical,
              itemCount: posts.length,
              itemBuilder: (BuildContext context, index) {
                return GestureDetector(
                  onTap: () {},
                  child: _buildPosts(index),
                );
              },
            ),
          ),
        ],
      ),
    );
  }

  Divider _buildDivider() {
    return Divider(
      color: Colors.grey,
      height: 0.5,
    );
  }

  Container _buildListProfile() {
    return Container(
      height: 230,
      child: ListView.builder(
        itemCount: favorite.length,
        scrollDirection: Axis.horizontal,
        itemBuilder: (BuildContext context, int index) {
          return GestureDetector(
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (_) => ProfilePage(
                            friend: favorite[index],
                          )));
            },
            child: Container(
              margin: EdgeInsets.symmetric(horizontal: 15, vertical: 20),
              width: 90,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10.0),
                  color: Color(0xFF3A3740),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black26,
                      offset: Offset(0.0, 4.0),
                      blurRadius: 6.0,
                    )
                  ]),
              child: Column(
                children: <Widget>[
                  Container(
                    margin: EdgeInsets.all(5),
                    height: 80,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        border: Border.all(width: 3, color: Color(0xFFFE8057))),
                    child: Container(
                      margin: EdgeInsets.all(5),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5.0),
                        image: DecorationImage(
                            image: AssetImage(favorite[index].imageUrl),
                            fit: BoxFit.cover),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 10.0,
                  ),
                  Container(
                    height: 65.0,
                    child: RotatedBox(
                      quarterTurns: 3,
                      child: Text(favorite[index].name,
                          style: TextStyle(fontSize: 16.0, color: Colors.grey)),
                    ),
                  ),
                  Divider(
                    color: Color(0xFFfe8057).withOpacity(0.5),
                    height: 10.0,
                    indent: 5.0,
                    endIndent: 5.0,
                  )
                ],
              ),
            ),
          );
        },
      ),
    );
  }

  Container _buildPosts(int index) {
    return Container(
      margin: EdgeInsets.all(10),
      height: 480.0,
      child: Column(
        children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Container(
                margin: EdgeInsets.all(5),
                height: 50,
                width: 50,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    border: Border.all(width: 1, color: Color(0xFFFE8057))),
                child: Container(
                  margin: EdgeInsets.all(5),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20.0),
                    image: DecorationImage(
                        image: AssetImage(posts[index].friend.imageUrl),
                        fit: BoxFit.cover),
                  ),
                ),
              ),
              Expanded(
                  child: Padding(
                padding: const EdgeInsets.only(left: 15.0),
                child: Text(
                  posts[index].friend.name,
                  style: TextStyle(
                    color: Colors.white54,
                    fontWeight: FontWeight.bold,
                    fontSize: 16.0,
                    letterSpacing: 1.2,
                  ),
                ),
              )),
              Text(
                posts[index].timePosted,
                style: TextStyle(
                    color: Colors.white54,
                    fontSize: 16.0,
                    fontWeight: FontWeight.bold),
              ),
            ],
          ),
          Container(
            margin: EdgeInsets.all(5.0),
            height: 280.0,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20.0),
                image: DecorationImage(
                  image: AssetImage(posts[index].imageUrl),
                  fit: BoxFit.cover,
                )),
          ),
          Container(
            height: 50.0,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Row(
                    children: <Widget>[
                      Icon(
                        Icons.mode_comment,
                        color: Colors.white54,
                        size: 30,
                      ),
                      SizedBox(
                        width: 5.0,
                      ),
                      Text(
                        posts[index].comment,
                        style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                            color: Colors.white54),
                      ),
                      SizedBox(
                        width: 10.0,
                      ),
                      Text(
                        '|',
                        style: TextStyle(fontSize: 30, color: Colors.white54),
                      ),
                      SizedBox(
                        width: 10.0,
                      ),
                      Icon(
                        Icons.share,
                        color: Colors.white54,
                        size: 30,
                      ),
                      SizedBox(
                        width: 5.0,
                      ),
                      Text(
                        posts[index].share,
                        style: TextStyle(
                          fontSize: 18.0,
                          fontWeight: FontWeight.bold,
                          color: Colors.white54,
                        ),
                      )
                    ],
                  ),
                  Row(
                    children: <Widget>[
                      Text(
                        posts[index].comment,
                        style: TextStyle(
                          fontSize: 18.0,
                          fontWeight: FontWeight.bold,
                          color: Colors.white54,
                        ),
                      ),
                      SizedBox(
                        width: 5.0,
                      ),
                      Icon(
                        Icons.thumb_up,
                        color: Colors.white54,
                        size: 30.0,
                      )
                    ],
                  ),
                ],
              ),
            ),
          ),
          Container(
            height: 70.0,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: Text(
                posts[index].description,
                style: TextStyle(
                  fontSize: 14.0,
                  color: Colors.white54,
                ),
              ),
            ),
          ),
          _buildDivider(),
        ],
      ),
    );
  }
}
