

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class DashboardScreen extends StatefulWidget {
  const DashboardScreen({super.key});

  @override
  State<DashboardScreen> createState() => _DashboardScreenState();
}

class _DashboardScreenState extends State<DashboardScreen> {
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: DrawerWidget(),
      key: _scaffoldKey,
      backgroundColor: Colors.white,
      body: Column( 
        children: [
          Container(
            width: double.infinity,
            height: 190,
            color: Color(0xFF2048FF),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  padding: EdgeInsets.only(left: 20, top: 10, right: 10, bottom: 0),
                  height: 100,
                  width: double.infinity,
                  // color: Colors.amber,
                  child: Row(
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text('Buenos Dias'.toUpperCase(),
                            style: TextStyle(
                              fontWeight: FontWeight.w500,
                              fontSize: 13,
                              color: Colors.white,
                            ),
                          ),
                          Text('Christian Givani',
                            style: TextStyle(
                            fontWeight: FontWeight.w500,
                            fontSize: 20,
                            color: Colors.white,
                            ),
                          ),
                        ],
                      ),
                      Spacer(flex: 1,),
                      Row(
                        children: [
                          Container(
                            // Add botton option of email or notification
                          ),
                          Container(
                            child: IconButton(
                              icon: Icon(Icons.menu,
                              color: Colors.white,
                              size: 30,
                            ),
                            onPressed: (){
                              _scaffoldKey.currentState?.openDrawer();
                            },
                            ),
                          )
                        ],
                      ),
                    ],
                  )
                ),
                Container(
                  padding: EdgeInsets.only(left: 20,right: 20, top: 0, bottom: 0),
                  child: TextField(
                    style: TextStyle(
                      color: Colors.black,
                    ),
                    decoration: InputDecoration(
                      filled: true,
                      fillColor: Color(0Xffffffff),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(8.0),
                        borderSide: BorderSide.none,
                      ),
                      hintText: "Buscar",
                      hintStyle: TextStyle(
                        color: Colors.black,
                        decoration: TextDecoration.none,
                        fontSize: 18,
                      ),
                      contentPadding: EdgeInsets.symmetric(vertical: 13.0), // Ajusta este valor para centrar verticalmente el texto
                      prefixIcon: Icon(Icons.search, size: 35),
                      prefixIconColor: Colors.black,
                    ),
                  ),
                )
              ],
            ),
          ),
          Container(
            child: Text('options of sistem'),
          )
        ],
      ),
    );
  }
}


class DrawerWidget extends StatefulWidget {
  const DrawerWidget({super.key});

  @override
  State<DrawerWidget> createState() => _DrawerWidgetState();
}

class _DrawerWidgetState extends State<DrawerWidget> {
  @override
  Widget build(BuildContext context) {
    return  ClipRRect(
      child: Container(
        padding: EdgeInsets.only(left: 20, right: 20, top: 0, bottom: 0),
        width: 360,
        height: double.infinity,
        color: Colors.white,
        child: SafeArea(
          child: Column(
            children: [
              Container(
                width: double.infinity,
                height: 100,
                // padding: EdgeInsets.only(left: 20, right: 20, top: 0, bottom: 0),
                decoration: BoxDecoration(
                  // color: Colors.orange,
                  border: Border(
                    bottom: BorderSide(
                      color: Color(0xFFC4C8D3), // Color del borde
                      width: 1.0, // Ancho del borde
                    ),
                  ),
                ),
              child: Row(
                children: [
                  Container(
                      width: 60,
                      height: 60,
                      // color:Colors.green,
                      child: AspectRatio(
                        aspectRatio: 1/1,
                        child: Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(100.0),
                            // color: Colors.red,
                            border: Border.all(
                              color: Color(0xFFC4C8D3), // Color del borde
                              width: 1.0, // Ancho del borde
                          ),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(width: 8),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('Christian Giovani',
                        style: TextStyle(
                          fontSize: 20,
                          color: Color(0xFF243465),
                        ),
                      ),
                      Text('Administrador',
                        style: TextStyle(
                          fontSize: 15,
                          color: Color(0xFF848A9C),
                        ),
                      ),
                    ],
                  ),
                  Spacer(flex: 1),
                  Container(
                    child: Row(
                      children: [
                        Container(
                        height: 35,
                        width: 35,
                        child: SvgPicture.asset('assets/close.svg'),
                      )],
                    ),
                  ),
                ],
              ) ,
              ),
            ],
          ),
        ),
      ),
    );
  }
}