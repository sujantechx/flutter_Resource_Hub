import 'package:flutter/material.dart';

class Call extends StatelessWidget {
  final List<Map<String, dynamic>> callData = [
    {
      "name": "Sujan",
      "time": "Yesterday, 11:40 am",
      "image":
      "https://images.pexels.com/photos/220453/pexels-photo-220453.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1",
      "incoming": true,
      "videoCall": true,
      "missed": false
    },
    {
      "name": "Ayesha",
      "time": "6 May, 2:04 pm",
      "image":
      "https://images.pexels.com/photos/774909/pexels-photo-774909.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1",
      "incoming": false,
      "videoCall": false,
      "missed": true
    },
    {
      "name": "Kanha ",
      "time": "2 May, 11:47 am",

      "incoming": true,
      "videoCall": false,
      "missed": false
    },
    {
      "name": "Rahul",
      "time": "27 April, 8:12 pm",
      "image":
    "https://images.pexels.com/photos/2379004/pexels-photo-2379004.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1",

      "incoming": true,
      "videoCall": false,
      "missed": false
    },
    {
      "name": "Sanga",
      "time": "26 April, 7:17 am",
      "image": null,
      "incoming": true,
      "videoCall": false,
      "missed": false
    },
    {
      "name": "Priya",
      "time": "21 April, 2:00 pm",
      "image":
      "https://images.pexels.com/photos/1130626/pexels-photo-1130626.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1",
      "incoming": false,
      "videoCall": false,
      "missed": true
    },
    {
      "name": "+91 94384 27257\n~ vegetable",
      "time": "21 April, 1:58 pm",
      "image":
      "https://images.pexels.com/photos/3184418/pexels-photo-3184418.jpeg",
      "incoming": false,
      "videoCall": false,
      "missed": true
    },

    {
      "name": " Sneha",
      "time": "Yesterday, 11:40 am",
      "image":
      "https://images.pexels.com/photos/774909/pexels-photo-774909.jpeg?auto=compress&cs=tinysrgb&w=800",
      "incoming": true,
      "videoCall": true,
      "missed": false
    },
    {
      "name": "Kanha Pmec Mechanical",
      "time": "6 May, 2:04 pm",
      "image":
      "https://images.pexels.com/photos/220453/pexels-photo-220453.jpeg",
      "incoming": false,
      "videoCall": false,
      "missed": true
    },
    {
      "name": "Kanha Classmates",
      "time": "2 May, 11:47 am",
      "image":
      "https://images.pexels.com/photos/3184409/pexels-photo-3184409.jpeg",
      "incoming": true,
      "videoCall": false,
      "missed": false
    },
    {
      "name": "Purushottam Reddy Pmec Cse (2)",
      "time": "27 April, 8:12 pm",
      "image": null,
      "incoming": true,
      "videoCall": false,
      "missed": false
    },
    {
      "name": "Sanga Home Number",
      "time": "26 April, 7:17 am",
      "image": null,
      "incoming": true,
      "videoCall": false,
      "missed": false
    },
    {
      "name": "Sukanta Sir New",
      "time": "21 April, 2:00 pm",
      "image":
      "https://images.pexels.com/photos/220453/pexels-photo-220453.jpeg",
      "incoming": false,
      "videoCall": false,
      "missed": true
    },
    {
      "name": "+91 94384 27257\n~ vegetable",
      "time": "21 April, 1:58 pm",
      "image":
      "https://images.pexels.com/photos/3184418/pexels-photo-3184418.jpeg",
      "incoming": false,
      "videoCall": false,
      "missed": true
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: Colors.black,
      appBar: AppBar(
        // backgroundColor: Colors.black,
        title: Text('Calls', style: TextStyle(fontFamily: 'Georgia')),
        /// All are provided App bar
        actions: [
          Icon(Icons.qr_code_scanner),
          SizedBox(width: 12),
          Icon(Icons.search),
          SizedBox(width: 12),
          Icon(Icons.more_vert),
          SizedBox(width: 12),
        ],
      ),
      body: ListView(
        children: [
          ListTile(
            leading: CircleAvatar(
              backgroundColor: Colors.green,
              child: Icon(Icons.favorite, color: Colors.black),
            ),
            title: Text('Add favourite',
                style: TextStyle(fontFamily: 'Georgia', color: Colors.black)),
          ),
          SizedBox(height: 10,), ///or
          // Divider(color: Colors.white24),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
            child: Text('Recent',
                style: TextStyle(
                    fontSize: 18, fontFamily: 'Georgia',
                )),
          ),
          ...callData.map((call) {
            return ListTile(
              leading: CircleAvatar(
                backgroundImage: call['image'] != null
                    ? NetworkImage(call['image'])
                    : null,
                backgroundColor:
                call['image'] == null ? Colors.grey : Colors.transparent,
                child: call['image'] == null
                    ? Icon(Icons.person, color: Colors.black)
                    : null,
              ),
              title: Text(
                call['name'],
                style: TextStyle(
                  fontFamily: 'Georgia',
                  color: call['missed'] ? Colors.red : Colors.black,
                ),
              ),
              subtitle: Row(
                children: [
                  Icon(
                    call['incoming']
                        ? Icons.call_received
                        : Icons.call_made,
                    size: 16,
                    color: call['missed'] ? Colors.red : Colors.green,
                  ),
                  SizedBox(width: 4),
                  Text(
                    call['time'],
                    style: TextStyle(color: Colors.black, fontSize: 13),
                  ),
                ],
              ),
              trailing: Icon(
                call['videoCall'] ? Icons.videocam : Icons.call,
                color: Colors.black,
              ),
            );
          }).toList(),
        ],
      ),
    );
  }
}
