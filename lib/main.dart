import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        fontFamily: 'Roboto', // Establecer la fuente predeterminada a 'Roboto'
      ),
      home: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          leading: IconButton(
            icon: Icon(Icons.arrow_back, color: Color(0xffe83333)),
            onPressed: () {},
          ),
          backgroundColor: Color(0xd8e7e7e7),
          elevation: 0,
        ),
        body: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text('Mayo 11', style: TextStyle(color: Colors.black54)),
              Text('La Ceiba',
                  style: TextStyle(fontSize: 35, fontWeight: FontWeight.bold)),
              SizedBox(height: 10),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  SizedBox(width: 10),
                  Text('21°C',
                      style: TextStyle(
                          color: Color(0xffff00ea),
                          fontSize: 55,
                          fontWeight: FontWeight.bold)),
                ],
              ),
              Text('Nubes nubladas',
                  style: TextStyle(color: Colors.black54, fontSize: 18)),
              SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: <Widget>[
                  Text('Hoy',
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 16,
                          fontWeight: FontWeight.bold)),
                  Text('Esta semana',
                      style: TextStyle(color: Colors.grey, fontSize: 16)),
                ],
              ),
              SizedBox(height: 25),
              Text('Temperatura',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  _buildWeatherInfo('8 PM', '21°C', Icons.cloud),
                  _buildWeatherInfo('11 PM', '22°C',
                      Icons.cloud_queue), // Different cloud icon for variety
                ],
              ),
              SizedBox(height: 20),
              Text('Detalles',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
              SizedBox(height: 10),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  _buildDetailInfo('Minimo', '21°C'),
                  _buildDetailInfo('Maximo', '22°C'),
                ],
              ),
              SizedBox(height: 10),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  _buildDetailInfo('Presión', '1020 Pa'),
                  _buildDetailInfo('Humedad', '41%'),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildWeatherInfo(String time, String temp, IconData icon) {
    return Column(
      children: <Widget>[
        Icon(icon, color: Color(0xff00cdff)),
        SizedBox(height: 5),
        Text(time, style: TextStyle(fontSize: 18, color: Color(0xffff2424))),
        SizedBox(height: 5),
        Text(temp, style: TextStyle(fontSize: 18)),
      ],
    );
  }

  Widget _buildDetailInfo(String title, String value) {
    return Column(
      children: <Widget>[
        Text(title, style: TextStyle(fontSize: 16, color: Colors.black54)),
        SizedBox(height: 5),
        Text(value,
            style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
      ],
    );
  }
}
