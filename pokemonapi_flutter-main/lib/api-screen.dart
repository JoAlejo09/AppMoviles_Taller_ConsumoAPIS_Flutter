import 'package:flutter/material.dart';
import 'dart:convert';
import 'package:http/http.dart' as http;

class ApiClima extends StatelessWidget {
  const ApiClima({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'API Noticias',
      theme: ThemeData(primarySwatch: Colors.blue),
      home: ClimaData(),
    );
  }
}
class ClimaData extends StatefulWidget{
    @override 
    _ClimaDataList createState() => _ClimaDataList();
}
class _ClimaDataList extends State<ClimaData>{
  Map<String, dynamic>? _climaData;
  bool _isLoading = true;

  final double lat = 2.3;
  final double lon = 1.2;

  @override
  void initState(){
    super.initState();
    fetchClimaData();
  }
  Future<void> fetchClimaData() async {
    setState(() {
      _isLoading = true;
    });
    final url = Uri.parse(
      "https://www.7timer.info/bin/api.pl?lon=$lon&lat=$lat&product=civillight&output=json",
    );
    final response = await http.get(url);
    //Validacion que se reciba la respuesta
    if(response.statusCode == 200){
      setState(() {
        _climaData = jsonDecode(response.body);
      _isLoading = false;  
      });
    } else{
      throw Exception('Error al cargar los datos del Clima.');
    }
  }
  @override
  Widget build(BuildContext context) {
   final imageUrl ="https://www.7timer.info/bin/civil.php?lon=$lon&lat=$lat&lang=en&unit=metric&output=internal&tzshift=0";

   return Scaffold(
    appBar: AppBar(
      title: Text('Consumo API del clima'),
    ),
    body: _isLoading
        ? Center(child: CircularProgressIndicator())
        : ListView(
          padding: EdgeInsets.all(16),
          children:[
            const Text('Imagen del pronostico',
                  style: TextStyle( fontSize: 18, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 10),
            Image.network(imageUrl),
            const SizedBox(height: 20),
            const Text("Informacion del Clima",
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 10),
            Text(
                  const JsonEncoder.withIndent('  ').convert(_climaData),
                  style: const TextStyle(fontSize: 14),
                ),
          ],
        )
   );
  }

}