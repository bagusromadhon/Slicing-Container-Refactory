import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  static const String _title = 'Flutter Code Sample';

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: _title,
      theme: ThemeData(iconTheme: IconThemeData(color: Colors.black)),
      home: MyStatefulWidget(),
    );
  }
}

class MyStatefulWidget extends StatefulWidget {
  const MyStatefulWidget({super.key});

  @override
  State<MyStatefulWidget> createState() => _MyStatefulWidgetState();
}

class _MyStatefulWidgetState extends State<MyStatefulWidget> {
  int _selectedIndex = 0;
  static const TextStyle optionStyle =
      TextStyle(fontSize: 30, fontWeight: FontWeight.bold, color: Colors.grey);
  static const List<Widget> _widgetOptions = <Widget>[
    Text(
      '1',
      style: optionStyle,
    ),
    Text(
      '2',
      style: optionStyle,
    ),
    Text(
      '3',
      style: optionStyle,
    ),
    Text(
      '4',
      style: optionStyle,
    ),
    Text(
      '5',
      style: optionStyle,
    ),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Slicing Container'),
      ),
      body: SingleChildScrollView(
          padding: EdgeInsets.all(20),
          child: Container(
            padding: EdgeInsets.all(0),
            height: 300,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(6),
                border: Border.all(
                  color: Colors.grey,
                  width: 1,
                )),
            child: Column(
              children: [
                Container(
                  decoration: BoxDecoration(
                      border: Border(
                          bottom: BorderSide(
                    width: 1,
                    color: Colors.grey,
                  ))),
                  child: Row(
                    children: [
                      Expanded(
                        flex: 2,
                        child: Row(
                          children: [
                            const Icon(
                              Icons.task,
                              color: Colors.blue,
                              size: 24.0,
                            ),
                            SizedBox(
                              width: 12,
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "My Ticket",
                                  style: TextStyle(
                                      fontSize: 13,
                                      fontWeight: FontWeight.bold),
                                ),
                                Text(
                                  "Ticket: 5",
                                  style: TextStyle(
                                    fontSize: 10,
                                    color: Colors.grey,
                                  ),
                                )
                              ],
                            )
                          ],
                        ),
                      ),
                      Expanded(
                          flex: 1,
                          child: Row(
                            children: [
                              const Icon(
                                Icons.plus_one,
                                size: 15.0,
                              ),
                              SizedBox(
                                width: 5,
                              ),
                              Text(
                                "Create Ticket",
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    color: Colors.amber[700],
                                    fontSize: 12),
                              ),
                            ],
                          ))
                    ],
                  ),
                ),
                Container(
                  child: Column(
                    children: [
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                        
                          Expanded(
                            flex: 2,
                            child: Container(
                              padding: EdgeInsets.only(top: 10, left: 10),
                              child: Text(
                                "Senin, 3 Oktober 2022",
                                style: TextStyle(
                                  fontSize: 10,
                                  color: Colors.grey[600],
                                ),
                              ),
                            ),
                          ),
                          Expanded(
                            flex: 1,
                            child: Container(
                              padding: EdgeInsets.only(top: 10),
                              child: Row(
                                children: [
                                  Text(
                                    "Assignee: ",
                                    style: TextStyle(fontSize: 10),
                                  ),
                                  GestureDetector(
                                    onTap: () {},
                                    child: Text(
                                      'Slamet',
                                      style: TextStyle(
                                        color: Colors.blue,
                                        fontSize: 10,
                                        decoration: TextDecoration.underline,
                                      ),
                                    ),
                                  )
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 2),
                      Container(
                        padding: EdgeInsets.only(left: 10),
                        child: Row(
                          children: [
                            Expanded(
                              child: Text(
                                " T1234 [XPN - EMI][BE] - Riset dan Wsireframe Homepage Project",
                                style: TextStyle(
                                    fontSize: 10, fontWeight: FontWeight.bold),
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Container(
                        padding: EdgeInsets.only(left: 10),
                        child: Row(
                          children: [

                            Container(
                              padding: EdgeInsets.all(2),
                              height: 20,
                              
                              decoration: BoxDecoration(
                                color: Color.fromARGB(255, 253, 230, 232),
                                borderRadius: BorderRadius.circular(4),
                                
                              ),
                              child: Text("Unbreak Now!",style: TextStyle(fontSize: 10,color: Colors.red[700]),),
                            ),
                            SizedBox(
                             width: 10,
                            ),
                            Container(
                              padding: EdgeInsets.all(2),
                              height: 20,
                              
                              decoration: BoxDecoration(
                                color: Colors.green[800],
                                borderRadius: BorderRadius.circular(4),
                                
                              ),
                              child: Text("SP: 1.0 ",style: TextStyle(fontSize: 10,color: Colors.white),),
                            ),
                            SizedBox(
                                 width: 150,
                            ),
                            Expanded(child:Text("100%",style: TextStyle(fontSize: 10,color: Colors.grey),))
                          ],
                        ),
                      ),
                      
                    ],
                  ),
                )
              ],
            ),
          )),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: ImageIcon(AssetImage("asset/image/Lobby.png")),
            label: 'Lobby',
          ),
          BottomNavigationBarItem(
            icon: ImageIcon(AssetImage("asset/image/Chat.png")),
            label: 'Chatting',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.assignment),
            label: 'Assignment',
          ),
          BottomNavigationBarItem(
            icon: ImageIcon(AssetImage("asset/image/bi_trophy.png")),
            label: 'Ranking',
          ),
          BottomNavigationBarItem(
            icon: ImageIcon(AssetImage("asset/image/Profil.png")),
            label: 'Profile',
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.amber[800],
        unselectedItemColor: Colors.grey,
        onTap: _onItemTapped,
      ),
    );
  }
}
