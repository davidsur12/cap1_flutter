import 'package:cap1/class/Alert.dart';
import 'package:cap1/class/dise.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.

  @override
  Widget build(BuildContext context) {
    var c = context;
    return MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: Scaffold(
           /* appBar: AppBar(
              title: Text(
                "Cap 1",
                textAlign: TextAlign.center,
                textDirection: TextDirection.rtl,
                style: TextStyle(fontSize: 30.0, color: Colors.white),
              ),
              backgroundColor: Colors.green,
            ),*/
            body: SingleChildScrollView(
              child:Design()
              //Alert()
              ),
            backgroundColor: Color.fromARGB(255, 8, 2, 36),
            ) 
            );
  }

  Widget Texto2(String txt, double size) {
    return Container(
      child: Text(
        txt,
        style: TextStyle(fontSize: size, fontWeight: FontWeight.w100),
      ),
    );
  }

  Widget img() {
    return Image.network(
      //"https://www.infobae.com/new-resizer/xpCYOo427aVHin0o_R9MeL9s74s=/768x432/filters:format(webp):quality(85)/s3.amazonaws.com/arc-wordpress-client-uploads/infobae-wp/wp-content/uploads/2017/12/15190701/Viajes.jpg"
      "https://images.pexels.com/photos/8083366/pexels-photo-8083366.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1",
      width: 350,
    );
  }

  Widget btn(BuildContext context) {
    return ElevatedButton(
      child: Text("Contactanos"),
      onPressed: () => {_showMyDialog(context)},
    );
  }

  /* 
  Future<void> _showMyDialog(BuildContext context) async {
    return showDialog<void>(
      context: context,
      builder: (_) => _buildAlertDialog(),
    );
  }
*/

  Future<void> _showMyDialog(BuildContext context) async {
    return showDialog<void>(
      context: context,
      barrierDismissible: false, // user must tap button!
      builder: (BuildContext context) {
        return AlertDialog(
          title: const Text('AlertDialog Title'),
          content: SingleChildScrollView(
            child: ListBody(
              children: const <Widget>[
                Text('This is a demo alert dialog.'),
                Text('Would you like to approve of this message?'),
              ],
            ),
          ),
          actions: <Widget>[
            TextButton(
              child: const Text('Approve'),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
          ],
        );
      },
    );
  }
}


//------------------------------------------------------------------

