import 'package:flutter/material.dart';
import 'package:whatsapp_ui/info.dart';

class ContactList extends StatelessWidget {
  const ContactList({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 10),
      child: ListView.builder(
        itemCount: info.length,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.only(bottom: 8.0),
            child: ListTile(
              title: Text(info[index]['name'].toString()),
              subtitle: Padding(
                padding: const EdgeInsets.only(top: 6),
                child: Text(
                  info[index]['message'].toString(),
                  style: const TextStyle(fontSize: 15),
                ),
              ),
              leading: CircleAvatar(
                backgroundImage: NetworkImage(
                  info[index]['profilePic'].toString(),
                ),
              ),
              trailing: Text(
                info[index]['time'].toString(),
                style: const TextStyle(fontSize: 13, color: Colors.grey),
              ),
            ),
          );
        },
      ),
    );
  }
}
