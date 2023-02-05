import 'package:flutter/material.dart';

class Design extends StatefulWidget {
  @override
  State<Design> createState() => _Design();
}

class _Design extends State<Design> {
  double _size = 1.0;

  void grow() {
    setState(() {
      _size += 0.1;
    });
  }
List datos1=["images/calculadora.png" , "Matematicas" , "14% Off" , "303 Libros"];
List datos2=["images/cerebro.png" , "Ciencias" , "15% Off" , "132 Libros"];
List datos3=["images/libro-de-leyes.png" , "Leyes" , "30% Off" , "135 Libros"];
List datos4=["images/general.png" , "Ficción" , "9% Off" , "425 Libros"];
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Column(
        children: [Busqueda(), Descuento(), Separador(), Etiquetas()]);
  }

  Widget Separador() {
    var stilo = TextStyle(color: Colors.white , fontSize: 20 , fontFamily: "Anton");
    var stilo2 = TextStyle(color: Color.fromARGB(255, 129, 127, 127) , fontSize: 13 );
    return Container(margin: EdgeInsets.only(left: 20 , top: 10 , right: 20 , bottom: 5) ,child:  Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          "Categorias",
          style: stilo,
          
        ),
        Text(
          "Mirar todo",
          style: stilo2,
        ),
      ],
    ),);
  }

  Widget Busqueda() {
    double width = MediaQuery.of(context).size.width;
    return Column(children: [
      Container(
        margin: const EdgeInsets.all(20.0),
        width: width,
        
        //color: Colors.amber[600],
        child: Row(
          mainAxisAlignment: (MainAxisAlignment.spaceBetween),
          children: [
            Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: (MainAxisAlignment.start),
                children: [
                  InkWell(
                      child: Align(
                          alignment: Alignment.topLeft,
                          child: Text(
                            "Bienvenido",
                            textAlign: TextAlign.start,
                            style: TextStyle(
                              color: Color.fromARGB(255, 168, 159, 159),
                              fontSize: 20,fontFamily: "Dancing"
                            ),
                          ))),
                  Text("Encuentra tu libro",
                      style: TextStyle(color: Colors.white, fontSize: 30 , fontFamily: "Dancing"))
                ]),
            Column(children: [
              Image.asset(
                "images/lupa.png",
                width: 40,
                height: 70,
              )
            ])
          ],
        ),
      )
    ]);
  }

  Widget Descuento() {
    double width = MediaQuery.of(context).size.width;
    print(width);
    return Container(
        decoration: BoxDecoration(
            color: Color.fromARGB(255, 196, 193, 65), // Color of the container
            borderRadius: BorderRadius.circular(10.0), // Radius of the border
            border: Border.all(
              width: 1.0,
              color: Colors.black, // Color of the border
            )),
        margin: const EdgeInsets.all(5.0),
        // color: Color.fromARGB(255, 204, 116, 0),
        child: Container(
          // width:width/2,
          child: Row(
            mainAxisAlignment: (MainAxisAlignment.spaceBetween),
            children: [
              Column(
                children: [
                  Padding(
                    padding: EdgeInsets.only(left: 30, top: 40),
                    child: Text(
                      "60% Off",
                      style: TextStyle(
                          fontSize: 30,
                          color: Color.fromARGB(255, 13, 10, 56),
                          fontFamily: "Anton"),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 30, top: 10),
                    child: Text(
                      "Feb 4 - Mar 2",
                      style: TextStyle(fontSize: 15, color: Color.fromARGB(255, 13, 10, 56) ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 30, top: 10),
                    child: ElevatedButton(
                      style: const ButtonStyle(
                        backgroundColor: MaterialStatePropertyAll<Color>(
                            Color.fromARGB(255, 11, 7, 65)),
                        //  MaterialStatePropertyAll<OutlineInputBorder>((borderRadius: (Radius.circular(12)))),
                      ),
                      child: Text("Conoce Más",
                          style: TextStyle(fontSize: 15, color: Colors.white)),
                      onPressed: () => {print("presionado")},
                    ),
                  )
                ],
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: (MainAxisAlignment.center),
                children: [
                  Padding(
                    padding: EdgeInsets.only(right: 20),
                    child: Image.asset(
                      "images/pila-de-libros.png",
                      width: 150,
                      height: 140,
                    ),
                  )
                ],
              )
            ],
          ),
          width: width - 80,

          height: 190.0,
        ));
  }

  Widget Etiquetas() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Column(
          children: [Img(datos1), Img(datos2)],
        ),
        Column(
          children: [Img(datos3), Img(datos4)],
        )
      ],
    );
  }
/*color: Color.fromARGB(255, 206, 202, 0), // Color of the container
            borderRadius: BorderRadius.circular(10.0), // Radius of the border
            border: Border.all(
              width: 1.0,
              color: Colors.black, // Color of the border */
  Widget Img(List date) {
    return Container(
     decoration: BoxDecoration(
          color: Color.fromARGB(255, 39, 36, 36), // Color of the container
            borderRadius: BorderRadius.circular(17.0), // Radius of the border
            border: Border.all(
              width: 1.0,
              color: Color.fromARGB(255, 70, 64, 64), // Color of the border
            )),
        margin: EdgeInsets.all(8),
      
        child: Padding(
            padding: EdgeInsets.only(left: 30, top: 20, right: 30, bottom: 20),
            child: Column(
              children: [
                Image.asset(
                  date[0],
                  width: 100,
                  height: 100,
                ),
                SizedBox(width: 10.0, height: 10.0),
                Text(
                  date[1],
                  style: TextStyle(color: Colors.white, fontSize: 17),
                ),
                SizedBox(
                  width: 10,
                  height: 5,
                ),
                Text(
                  date[2],
                  style: TextStyle(color: Color.fromARGB(255, 179, 166, 166), fontSize: 13),
                ),
                SizedBox(
                  width: 10,
                  height: 5,
                ),
                Row(
                  children: [
                    Image.asset(
                      "images/libro.png",
                      width: 20,
                      height: 20,
                    ),
                    SizedBox(
                      width: 10,
                      height: 4,
                    ),
                    Text(
                      date[3],
                      style: TextStyle(color: Color.fromARGB(255, 179, 166, 166), fontSize: 13),
                    )
                  ],
                )
              ],
            )));
  }
}

/* 
double width = MediaQuery.of(context).size.width;
double height = MediaQuery.of(context).size.height;
*/