import 'package:flutter/material.dart';

void main() {
  runApp(const Homeassets());
}

class Homeassets extends StatelessWidget {
  const Homeassets({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Image Assets "),
      actions: <Widget>[
        IconButton(
          icon: const Icon(Icons.navigate_next),
          tooltip: 'Go To the next page',
          onPressed: (){
            Navigator.push(context, MaterialPageRoute<void>(
              builder: (BuildContext context) {
                return Scaffold(
                  appBar: AppBar(
                    title: const Text('Network Image'),
                  ),
                  body: SafeArea(
                    child: Image.network(
                      'https://www.barajacoding.or.id/wp-content/uploads/2021/10/g644dynvxgayw8c399mq.png',
                      alignment: Alignment.topLeft,
                    ),
                  ),
                );
              }));
          },
        )
      ],
      ),
      body:  Center(
        child: Image.asset(
           'assets/image/icon_flutter.png',
              alignment: Alignment.bottomLeft,
              width: 300,
              height: 300,
              repeat: ImageRepeat.repeat,
        ),
      ),
    );
  }
}
// import 'package:flutter/material.dart';


// void main() {
//   runApp(const Homeassets());
// }


// class Homeassets extends StatelessWidget {
//   const Homeassets({Key? key}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//      appBar: AppBar(title: const Text("Network Image")),
//           body: SafeArea(
//             child: Image.asset(
//               'assets/image/icon_flutter.png',
//               alignment: Alignment.bottomLeft,
//               repeat: ImageRepeat.repeat,
//             ),
//         ),
//     );
//   }
// }