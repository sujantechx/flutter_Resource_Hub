import 'package:flutter/material.dart';

import 'package:flutter/material.dart';

class Chart extends StatelessWidget {
  final List<Map<String, dynamic>> mData = [
    {
      "bgColor": Colors.white,
      "title": "Sujan",
      "SubTitel": "Hi hello",
      "image":
      "https://images.pexels.com/photos/220453/pexels-photo-220453.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1",
      "time": "10:30 AM",
      "messageCount": 3,
    },

    {
      // "bgColor": Colors.greenAccent,
      "title": "Ayesha",
      "SubTitel": "Hey, are you there?",
      "image":
      "https://images.pexels.com/photos/774909/pexels-photo-774909.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1",
      "time": "9:15 AM",
      "messageCount": 2,
    },
    {
      // "bgColor": Colors.purpleAccent,
      "title": "Rahul",
      "SubTitel": "Let's catch up later!",
      "image":
      "https://images.pexels.com/photos/2379004/pexels-photo-2379004.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1",
      "time": "12:45 PM",
      "messageCount": 1,
    },
    {
      // "bgColor": Colors.orangeAccent,
      "title": "Priya",
      "SubTitel": "Can you check this out?",
      "image":
      "https://images.pexels.com/photos/1130626/pexels-photo-1130626.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1",
      "time": "8:00 AM",
      "messageCount": 4,
    },
    {
      // "bgColor": Colors.redAccent,
      "title": "Arjun",
      "SubTitel": "On my way!",
      "image":
      "https://images.pexels.com/photos/614810/pexels-photo-614810.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1",
      "time": "7:20 PM",
      "messageCount": 0,
    },
    {
      // "bgColor": Colors.tealAccent,
      "title": "Sneha",
      "SubTitel": "Good night :)",
      "image":
      "https://images.pexels.com/photos/774909/pexels-photo-774909.jpeg?auto=compress&cs=tinysrgb&w=800",
      "time": "11:58 PM",
      "messageCount": 6,
    },

      {
        // "bgColor": Colors.lightBlueAccent,
        "title": "Nikhil",
        "SubTitel": "Sure, will do!",
        "image": "https://images.pexels.com/photos/614810/pexels-photo-614810.jpeg",
        "time": "1:10 PM",
        "messageCount": 1,
      },
      {
        // "bgColor": Colors.amberAccent,
        "title": "Meera",
        "SubTitel": "Just sent the file.",
        "image": "https://images.pexels.com/photos/415829/pexels-photo-415829.jpeg",
        "time": "9:45 AM",
        "messageCount": 2,
      },
      {
        // "bgColor": Colors.deepOrangeAccent,
        "title": "Karan",
        "SubTitel": "See you soon!",
        "image": "https://images.pexels.com/photos/91227/pexels-photo-91227.jpeg",
        "time": "3:20 PM",
        "messageCount": 0,
      },
      {
        // "bgColor": Colors.indigoAccent,
        "title": "Anjali",
        "SubTitel": "Haha, true!",
        "image": "https://images.pexels.com/photos/1130626/pexels-photo-1130626.jpeg",
        "time": "11:11 AM",
        "messageCount": 3,
      },
      {
        // "bgColor": Colors.pinkAccent,
        "title": "Siddharth",
        "SubTitel": "Good morning!",
        "image": "https://images.pexels.com/photos/91227/pexels-photo-91227.jpeg",
        "time": "7:55 AM",
        "messageCount": 4,
      },
      {
        // "bgColor": Colors.cyanAccent,
        "title": "Ritika",
        "SubTitel": "Call me when free.",
        "image": "https://images.pexels.com/photos/774909/pexels-photo-774909.jpeg",
        "time": "5:15 PM",
        "messageCount": 2,
      },
      {
        // "bgColor": Colors.deepPurpleAccent,
        "title": "Dev",
        "SubTitel": "Final version updated.",
        "image": "https://images.pexels.com/photos/2379004/pexels-photo-2379004.jpeg",
        "time": "10:20 PM",
        "messageCount": 1,
      },
      {
        // "bgColor": Colors.blueGrey,
        "title": "Tanvi",
        "SubTitel": "Got it!",
        "image": "https://images.pexels.com/photos/220453/pexels-photo-220453.jpeg",
        "time": "6:30 AM",
        "messageCount": 5,
      },
      {
        // "bgColor": Colors.limeAccent,
        "title": "Arnav",
        "SubTitel": "Lunch break?",
        "image": "https://images.pexels.com/photos/774909/pexels-photo-774909.jpeg",
        "time": "12:10 PM",
        "messageCount": 0,
      },
      {
        // "bgColor": Colors.orangeAccent,
        "title": "Isha",
        "SubTitel": "Let’s plan something.",
        "image": "https://images.pexels.com/photos/1130626/pexels-photo-1130626.jpeg",
        "time": "2:40 PM",
        "messageCount": 6,
      },
      {
        // "bgColor": Colors.greenAccent,
        "title": "Yash",
        "SubTitel": "Already done!",
        "image": "https://images.pexels.com/photos/91227/pexels-photo-91227.jpeg",
        "time": "4:20 PM",
        "messageCount": 3,
      },
      {
        // "bgColor": Colors.tealAccent,
        "title": "Sana",
        "SubTitel": "Can't wait!",
        "image": "https://images.pexels.com/photos/415829/pexels-photo-415829.jpeg",
        "time": "6:50 PM",
        "messageCount": 4,
      },
      {
        "bgColor": Colors.purpleAccent,
        "title": "Rohan",
        "SubTitel": "Meeting at 5?",
        "image": "https://images.pexels.com/photos/2379004/pexels-photo-2379004.jpeg",
        "time": "2:00 PM",
        "messageCount": 2,
      },
      {
        "bgColor": Colors.redAccent,
        "title": "Neha",
        "SubTitel": "Thanks a lot!",
        "image": "https://images.pexels.com/photos/774909/pexels-photo-774909.jpeg",
        "time": "3:33 PM",
        "messageCount": 5,
      },
      {
        "bgColor": Colors.brown,
        "title": "Harshit",
        "SubTitel": "It’s working fine.",
        "image": "https://images.pexels.com/photos/614810/pexels-photo-614810.jpeg",
        "time": "1:45 PM",
        "messageCount": 0,
      },
      {
        "bgColor": Colors.yellowAccent,
        "title": "Jaya",
        "SubTitel": "Be right back!",
        "image": "https://images.pexels.com/photos/415829/pexels-photo-415829.jpeg",
        "time": "8:22 PM",
        "messageCount": 3,
      },
      {
        "bgColor": Colors.lightGreenAccent,
        "title": "Vikram",
        "SubTitel": "Missed your call.",
        "image": "https://images.pexels.com/photos/91227/pexels-photo-91227.jpeg",
        "time": "9:01 AM",
        "messageCount": 2,
      },
      {
        "bgColor": Colors.cyan,
        "title": "Diya",
        "SubTitel": "Sure thing!",
        "image": "https://images.pexels.com/photos/1130626/pexels-photo-1130626.jpeg",
        "time": "10:10 AM",
        "messageCount": 1,
      },
      {
        "bgColor": Colors.grey,
        "title": "Akshay",
        "SubTitel": "Send again?",
        "image": "https://images.pexels.com/photos/2379004/pexels-photo-2379004.jpeg",
        "time": "7:00 AM",
        "messageCount": 2,
      },
      {
        "bgColor": Colors.black12,
        "title": "Lavanya",
        "SubTitel": "Update me later.",
        "image": "https://images.pexels.com/photos/774909/pexels-photo-774909.jpeg",
        "time": "4:44 PM",
        "messageCount": 0,
      }


  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Chat List'),
          actions: [
          Icon(Icons.qr_code_scanner),
      SizedBox(width: 12),
      Icon(Icons.search),
      SizedBox(width: 12),
      Icon(Icons.more_vert),
      SizedBox(width: 12),
      ],
      ),
      body: ListView.builder(
        itemCount: mData.length,
        itemBuilder: (context, index) {
          var value = mData[index];
          return Container(
            margin: EdgeInsets.symmetric(horizontal: 10, vertical: 6),
            padding: EdgeInsets.symmetric(horizontal: 12, vertical: 10),
            decoration: BoxDecoration(
              color: value['bgColor'],
              borderRadius: BorderRadius.circular(12),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    CircleAvatar(
                      backgroundImage: NetworkImage(value['image']),
                      radius: 25,
                    ),
                    SizedBox(width: 12),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          value["title"],
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 16,
                              color: Colors.black),
                        ),
                        Text(
                          value["SubTitel"],
                          style: TextStyle(color: Colors.black),
                        ),
                      ],
                    ),
                  ],
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Text(
                      value["time"],
                      style: TextStyle(color: Colors.black38, fontSize: 12),
                    ),
                    if (value["messageCount"] > 0)
                      Container(
                        margin: EdgeInsets.only(top: 4),
                        padding:
                        EdgeInsets.symmetric(horizontal: 6, vertical: 2),
                        decoration: BoxDecoration(
                          color: Colors.green,
                          borderRadius: BorderRadius.circular(12),
                        ),
                        child: Text(
                          value["messageCount"].toString(),
                          style: TextStyle(color: Colors.white, fontSize: 12),
                        ),
                      ),
                  ],
                ),
              ],
            ),
          );
        },
      ),

    );

  }
}


/*

gridview
class Chart extends StatelessWidget {
  final List<Map<String, dynamic>> mData = [
    {
      "bgColor": Colors.blueAccent,
      "title": "Sujan",
      "SubTitel": "Hi hello",
      "image":
      "https://images.pexels.com/photos/220453/pexels-photo-220453.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1",
      "time": "10:30 AM",
      "messageCount": 3,
    },
    {
      "bgColor": Colors.yellow,
      "title": "Sujan",
      "SubTitel": "Hi hello",
      "image":
      "https://images.pexels.com/photos/220453/pexels-photo-220453.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1",
      "time": "11:45 AM",
      "messageCount": 0,
    },
    // Add more items here
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Chat Grid")),
      body: GridView.builder(
        padding: EdgeInsets.all(10),
        itemCount: mData.length,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2, // Number of cards per row
          mainAxisSpacing: 10,
          crossAxisSpacing: 10,
          childAspectRatio: 3 / 2, // Adjust height/width ratio
        ),
        itemBuilder: (context, index) {
          var value = mData[index];
          return Container(
            decoration: BoxDecoration(
              color: value['bgColor'],
              borderRadius: BorderRadius.circular(15),
            ),
            padding: EdgeInsets.all(10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    CircleAvatar(
                      backgroundImage: NetworkImage(value['image']),
                      radius: 25,
                    ),
                    Spacer(),
                    Column(
                      children: [
                        Text(
                          value["time"],
                          style: TextStyle(color: Colors.white70, fontSize: 12),
                        ),
                        if (value["messageCount"] > 0)
                          Container(
                            margin: EdgeInsets.only(top: 4),
                            padding:
                            EdgeInsets.symmetric(horizontal: 6, vertical: 2),
                            decoration: BoxDecoration(
                              color: Colors.red,
                              borderRadius: BorderRadius.circular(12),
                            ),
                            child: Text(
                              value["messageCount"].toString(),
                              style: TextStyle(
                                  color: Colors.white, fontSize: 12),
                            ),
                          ),
                      ],
                    ),
                  ],
                ),
                SizedBox(height: 10),
                Text(
                  value["title"],
                  style: TextStyle(
                      fontWeight: FontWeight.bold, color: Colors.white),
                ),
                Text(
                  value["SubTitel"],
                  style: TextStyle(color: Colors.white70),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
*/
/*
class Chart extends StatelessWidget {
  final List<Map<String, dynamic>> mData = [
    {
      "bgColor": Colors.blueAccent,
      "title": "Sujan",
      "SubTitel": "Hi hello",
      "times": "10:15",
      "image":"https://images.pexels.com/photos/220453/pexels-photo-220453.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1",

    },
    {
      "bgColor": Colors.yellow,
      "title": "Sujan",
      "SubTitel": "Hi hello",
      "image": "https://images.pexels.com/photos/220453/pexels-photo-220453.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1",

    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Chart Screen'),
      ),
      body: ListView(
        children: mData.map((value) {
          return Container(
            padding: EdgeInsets.symmetric(horizontal: 11),
            margin: EdgeInsets.only(left: 5, right: 5, bottom: 6, top: 5),
            height: 70,
            decoration: BoxDecoration(
              color: value['bgColor'],
              borderRadius: BorderRadius.circular(11),
            ),
            child: Row(
              children: [
                Container(
                  width: 50,
                  height: 50,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    image: DecorationImage(
                      image: NetworkImage(value['image']),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                SizedBox(width: 11),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  // crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Text(value["times"],style: TextStyle(color: Colors.black),)

                  ],
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      value["title"],
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                      ),
                    ),
                    Text(
                      value["SubTitel"], // fixed typo
                      style: TextStyle(color: Colors.black),
                    ),
                  ],
                ),
              ],
            ),
          );
        }).toList(),
      ),
    );
  }
}

*/
/*

{
"bgColor": Colors.red,
"title": "Sujan",
"SubTitel":"Hi hellow",
"image":"https://images.pexels.com/photos/220453/pexels-photo-220453.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1",

},

{
"bgColor": Colors.orange,
"title": "Sujan",
"SubTitel":"Hi hellow",
"image":"https://images.pexels.com/photos/220453/pexels-photo-220453.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1",

},
{
"bgColor": Colors.blueAccent,
"title": "Sujan",
"SubTitel":"Hi hellow",
"image":"https://images.pexels.com/photos/220453/pexels-photo-220453.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1",

},

{
"bgColor": Colors.yellow,
"title": "Sujan",
"SubTitel":"Hi hellow",
"image":"https://images.pexels.com/photos/220453/pexels-photo-220453.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1",

},

{
"bgColor": Colors.red,
"title": "Sujan",
"SubTitel":"Hi hellow",
"image":"https://images.pexels.com/photos/220453/pexels-photo-220453.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1",

},

{
"bgColor": Colors.orange,
"title": "Sujan",
"SubTitel":"Hi hellow",
"image":"https://images.pexels.com/photos/220453/pexels-photo-220453.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1",

},*/