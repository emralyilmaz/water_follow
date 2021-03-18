import 'package:flutter/material.dart';

main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Water Follow App",
      theme: ThemeData(primarySwatch: Colors.purple),
      home: WaterFollow(),
    );
  }
}

class WaterFollow extends StatefulWidget {
  @override
  _WaterFollowState createState() => _WaterFollowState();
}

class _WaterFollowState extends State<WaterFollow> {
  int waterNumber = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Water Follow App"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "The number of glasses drunk: $waterNumber",
              style: TextStyle(fontSize: 20),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                FlatButton.icon(
                    onPressed: () {
                      setState(() {
                        waterNumber++;
                      });
                    },
                    icon: Icon(Icons.arrow_drop_up),
                    label: Text("Add")),
                FlatButton.icon(
                    onPressed: () {
                      setState(() {
                        waterNumber--;
                      });
                    },
                    icon: Icon(Icons.arrow_drop_down_sharp),
                    label: Text("Decrease"))
              ],
            )
          ],
        ),
      ),
    );
  }
}
