import 'package:flutter/material.dart';

class Upadate extends StatelessWidget {
  final List<Map<String, String>> statusList = [
    {"name": "Sujan", "image": "https://i.pravatar.cc/150?img=1"},
    {"name": "Ayesha", "image": "https://i.pravatar.cc/150?img=2"},
    {"name": "Kanha", "image": "https://i.pravatar.cc/150?img=3"},
    {"name": "Rahul", "image": "https://i.pravatar.cc/150?img=4"},
  ];

  final List<Map<String, dynamic>> channelList = [
    {
      "name": "BUY 2 HAND",
      "image": "https://via.placeholder.com/50",
      "message": "Bajaj finance available",
      "time": "10:24 am",
      "unread": "4"
    },
    {
      "name": "WhatsApp",
      "image": "https://upload.wikimedia.org/wikipedia/commons/6/6b/WhatsApp.svg",
      "message": "“To whom it may concern.” — 2019 Australia...",
      "time": "Yesterday"
    },
    {
      "name": "ABVP",
      "image": "https://via.placeholder.com/50",
      "message": "India signed away its rivers...",
      "time": "05/05/25"
    },
    {
      "name": "Dhruv Rathee",
      "image": "https://i.pravatar.cc/150?img=5",
      "message": "Reality of Palgham Attack...",
      "time": "26/04/25"
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: Colors.black,
      appBar: AppBar(
        // backgroundColor: Colors.black,
        title: Text("Updates", style: TextStyle(fontFamily: 'Georgia')),
        actions: [
          Icon(Icons.qr_code_scanner),
          SizedBox(width: 10),
          Icon(Icons.search),
          SizedBox(width: 10),
          Icon(Icons.more_vert),
        ],
      ),
      body: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Text("Status",
                style: TextStyle(
                    fontSize: 18, color: Colors.black, fontFamily: 'Georgia')),
          ),
          SizedBox(
            height: 100,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: statusList.length + 1,
              itemBuilder: (context, index) {
                if (index == 0) {
                  return Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 8.0),
                    child: Column(
                      children: [
                        CircleAvatar(
                          backgroundColor: Colors.grey[800],
                          radius: 30,
                          child: Icon(Icons.add, color: Colors.green),
                        ),
                        SizedBox(height: 5),
                        Text("Add status",
                            style: TextStyle(
                                fontSize: 12,
                                fontFamily: 'Georgia',
                                color: Colors.black))
                      ],
                    ),
                  );
                } else {
                  final status = statusList[index - 1];
                  return Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 8.0),
                    child: Column(
                      children: [
                        CircleAvatar(
                          radius: 30,
                          backgroundImage: NetworkImage(status['image']!),
                        ),
                        SizedBox(height: 5),
                        Text(status['name']!,
                            overflow: TextOverflow.ellipsis,
                            style: TextStyle(
                                fontSize: 12,
                                fontFamily: 'Georgia',
                                color: Colors.black))
                      ],
                    ),
                  );
                }
              },
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("Channels",
                    style: TextStyle(
                        fontSize: 18,
                        fontFamily: 'Georgia',
                        color: Colors.black)),
                Container(
                  padding:
                  EdgeInsets.symmetric(horizontal: 12.0, vertical: 4.0),
                  decoration: BoxDecoration(
                      color: Colors.white12,
                      borderRadius: BorderRadius.circular(12)),
                  child: Text("Explore",
                      style: TextStyle(
                          fontFamily: 'Georgia', color: Colors.black)),
                )
              ],
            ),
          ),
          ...channelList.map((channel) {
            return ListTile(
              leading: CircleAvatar(
                backgroundImage: NetworkImage(channel['image']),
              ),
              title: Text(channel['name'],
                  style:
                  TextStyle(fontFamily: 'Georgia', color: Colors.black)),
              subtitle: Text(channel['message'],
                  overflow: TextOverflow.ellipsis,
                  style:
                  TextStyle(fontSize: 13, color: Colors.black45)),
              trailing: Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(channel['time'],
                      style: TextStyle(fontSize: 12, color: Colors.black45)),
                  if (channel.containsKey('unread'))
                    Container(
                      margin: EdgeInsets.only(top: 4),
                      padding: EdgeInsets.symmetric(horizontal: 6, vertical: 2),
                      decoration: BoxDecoration(
                          color: Colors.green,
                          borderRadius: BorderRadius.circular(10)),
                      child: Text(channel['unread'],
                          style: TextStyle(color: Colors.black, fontSize: 12)),
                    )
                ],
              ),
            );
          }).toList(),
        ],
      ),
    );
  }
}
