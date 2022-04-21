import 'package:flutter/material.dart';
import 'classgridview.dart';


 void main() {
  runApp(const Listcolor());
}
class  Listcolor extends StatelessWidget {
  const Listcolor({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: GridView.count(
            crossAxisCount: 3,
            crossAxisSpacing: 3,
            mainAxisSpacing: 5,
            children: [
              MyGrid(text: "1", color: Colors.amber[100]),
              MyGrid(text: "2", color: Colors.amber[200]),
              MyGrid(text: "3", color: Colors.amber[300]),
              MyGrid(text: "4", color: Colors.amber[400]),
              MyGrid(text: "5", color: Colors.amber[500]),
              MyGrid(text: "6", color: Colors.amber[600]),
              MyGrid(text: "7", color: Colors.amber[700]),
              
            ],
          ),
        ),
      appBar: AppBar(
        title: const Text("Grid View"),
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
                        title: const Text ('List View'),
                      ),
                      body: SafeArea(
                        child: Container(
                          color: Colors.blue,
                          child: ListView(
                            children: [
                              Container(
                                height: 100,
                                color: Colors.amber[700],
                              ),
                              Container(
                                height: 100,
                                color: Colors.amber[500],
                              ),
                              Container(
                                height: 100,
                                color: Colors.amber[100],
                              ),
                            
                            ],

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