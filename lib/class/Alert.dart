import 'package:flutter/material.dart';
//import 'package:cap1/images/calculadora.png';

class Alert extends StatefulWidget {
  const Alert({
    super.key,
    this.color = const Color(0xFFFFE306),
    this.child,
  });

  final Color color;
  final Widget? child;

  @override
  State<Alert> createState() => _Alert();
}

class _Alert extends State<Alert> {
  double _size = 1.0;

  void grow() {
    setState(() {
      _size += 0.1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Texto2("Viajes Mundiales ", 30.0),
            Texto2("Bienbenidos a tu viaje", 15.0),
            img(),
            btn(context),
            
            Image.asset(
              'images/calculadora.png',
              height: 400,
              width: 400,
            )
          ]),
    );
  }

  Widget Texto2(String txt, double size) {
    return Padding(
        padding: EdgeInsets.only(bottom: 30),
        child: Container(
          child: Text(
            txt,
            style: TextStyle(fontSize: size, fontWeight: FontWeight.w100),
          ),
        ));
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
      onPressed: () => {_showMyDialog()},
    );
  }

  Future<void> _showMyDialog() async {
    return showDialog<void>(
      context: context,
      barrierDismissible: false,
      builder: (BuildContext context) {
        return AlertDialog(
          title: const Text(
            'Bienvenido',
            textAlign: TextAlign.center,
          ),
          content: SingleChildScrollView(
            child: ListBody(
              children: <Widget>[
                Center(
                  child: Text(
                    'Escribenos a nuestro Whatsapp',
                    textAlign: TextAlign.center,
                  ),
                ),
                Image.network(
                  "https://images.pexels.com/photos/4132538/pexels-photo-4132538.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1",
                  width: 130,
                ),
                // Text('Would you like to approve of this message?'),
              ],
            ),
          ),
          actions: <Widget>[
            TextButton(
              child: const Text('Ok'),
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

/*
TextButton(
      onPressed: () => showDialog<String>(
        context: context,
        builder: (BuildContext context) => AlertDialog(
          title: const Text('Contactano '),
          content: const Text('num 312123'),
          actions: <Widget>[
            TextButton(
              onPressed: () => Navigator.pop(context, 'Cancel'),
              child: const Text('Cancel'),
            ),
            TextButton(
              onPressed: () => Navigator.pop(context, 'OK'),
              child: const Text('OK'),
            ),
          ],
        ),
      ),
      child: const Text('Show Dialog'),
    ) */