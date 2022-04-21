import 'package:flutter/material.dart';
import './list_data.dart';

void main() {
  runApp(const ImageAsset());
}


class ImageAsset extends StatelessWidget {
  const ImageAsset({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
     appBar: AppBar(title: const Text("Network Image")),
          body: SafeArea(
            child: ListView.separated(
            separatorBuilder: (context,index) => const Divider(),
            padding: const EdgeInsets.all(15),
            itemCount: dataFormApi.length,
            itemBuilder: (BuildContext content ,int index) {
              return  ListTile(
                leading: Image.network(dataFormApi[index]['url']!),
                title:  Text(dataFormApi[index]["Text"]!),
                subtitle: Text(dataFormApi[index]["SUbtitle"]!)
              );
            }
          ),
          
        ),
    );
  }
}