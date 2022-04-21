import 'package:flutter/material.dart';
import 'classrow.dart';
import 'classcolumn.dart';


 void main() {
  runApp(const Rowcoloms());
}
class Rowcoloms extends StatelessWidget {
  const Rowcoloms({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp (
      debugShowCheckedModeBanner: false,
      home : MyStatefulWidget(),
      title: 'Fluter Basic Widgert',
    );
  }
}


  @override
  Widget build(BuildContext context) {
    return Scaffold( 
      appBar: AppBar(
        leading: InkWell(child: const Icon(Icons.menu), onTap: (){}),
        title: const Text('App Demo'),  
      ),     
    );
  }

class MyStatefulWidget extends StatefulWidget {
  const MyStatefulWidget({ Key? key }) : super(key: key);

  @override
  State<MyStatefulWidget> createState() => _MyStatefulWidgetState();
}

class _MyStatefulWidgetState extends State<MyStatefulWidget> {
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
       body: SafeArea(
        child: Center(
          child: Container(
            color: Colors.grey,
            child: Row(
              //silahkan anda ganti2 nilai MainAxisAlignment
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              //silahkan anda ganti2 nilai CrossAxisAlignment
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const MyBox(),
                const  MyBox(height: 100),
                const MyBox(),
              ],
            ),
          ),
        ),
      ),
      
          


      appBar: AppBar(
        title: const Text("Row"),
        // leading: InkWell(child: const Icon(Icons.menu), onTap: (){}),
        actions: <Widget>[ 
          IconButton(
            icon: const Icon(Icons.navigate_next),
            tooltip: 'Go to the next page',
            onPressed: () {
              Navigator.push(context, MaterialPageRoute<void>(
                  builder: (BuildContext context) {
                    return Scaffold(
                      appBar: AppBar(
                        title: const Text ('Column'),
                      ),
                      body: SafeArea(
                        child: Center(
                          child: Container(
                            color: Colors.grey,
                            child: Column(
                              //silahkan anda ganti2 nilai MainAxisAlignment
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              //silahkan anda ganti2 nilai CrossAxisAignment
                              crossAxisAlignment: CrossAxisAlignment.end,
                              children: [
                               const  MyBoxx(),
                                const MyBoxx(width: 100),
                                const MyBoxx(),
                              ],
                            ),
                          ),
                        ),
                      ),
                    );




                  }
              ));
            },
          )
        ],
      ),

      
      
    );
    


  }
  
}