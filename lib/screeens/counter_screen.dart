import 'package:flutter/material.dart';

class OperationScreen extends StatefulWidget {
  const OperationScreen({super.key});

  @override
  State<OperationScreen> createState() => _OperationScreenState();
}

class _OperationScreenState extends State<OperationScreen> {
  int contador = 1;
  int contador2 = 1;
  int resul = 0;

  void incrementar() {
    contador++;
    setState(() {});
  }

  void decrementar() {
    contador--;
    setState(() {});
  }

  void reiniciar() {
    contador = 0;
    setState(() {});
  }

//2do numero
  void incrementar2() {
    contador2++;
    setState(() {});
  }

  void decrementar2() {
    contador2--;
    setState(() {});
  }

  void reiniciar2() {
    contador2 = 0;
    setState(() {});
  }

//Resultado
  int resultado() {
    return contador * contador2;
  }

  @override
  Widget build(BuildContext context) {
    const TextStyle estiloTexto = TextStyle(
      fontSize: 30,
      color: Colors.white,
      fontWeight: FontWeight.bold,
    );
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 230, 49, 205),
        foregroundColor: Color.fromARGB(255, 15, 224, 224),
        title: const Text('Multiplcacion de dos cifras'),
        elevation: 10,
      ),
      backgroundColor: Color.fromARGB(255, 56, 250, 114),
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        //primer numero
        children: [
          const Text(
            'Primer numero:',
            style: estiloTexto,
          ),
          Text('$contador', style: estiloTexto),
          Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
            FloatingActionButton(
              backgroundColor: Color.fromARGB(255, 230, 225, 229),
              foregroundColor: Color.fromARGB(255, 16, 166, 172),
              onPressed: () => decrementar(),
              child: const Icon(Icons.exposure_minus_1),
            ),
            FloatingActionButton(
              backgroundColor: Colors.white,
              foregroundColor: Colors.blue,
              onPressed: () => reiniciar(),
              child: const Icon(Icons.restart_alt_rounded),
            ),
            FloatingActionButton(
              backgroundColor: Colors.white,
              foregroundColor: Colors.blue,
              onPressed: () => incrementar(),
              child: const Icon(Icons.exposure_plus_1),
            ),
          ]),
          const Text(
            'Segundo numero: ',
            style: estiloTexto,
          ),
          Text('$contador2', style: estiloTexto),
          Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
            FloatingActionButton(
              backgroundColor: Colors.white,
              foregroundColor: Colors.blue,
              onPressed: () => decrementar2(),
              child: const Icon(Icons.exposure_minus_1),
            ),
            FloatingActionButton(
              backgroundColor: Colors.white,
              foregroundColor: Colors.blue,
              onPressed: () => reiniciar2(),
              child: const Icon(Icons.restart_alt_rounded),
            ),
            FloatingActionButton(
              backgroundColor: Colors.white,
              foregroundColor: Colors.blue,
              onPressed: () => incrementar2(),
              child: const Icon(Icons.exposure_plus_1),
            ),
          ]),
          const Text(
            'El resultado es : ',
            style: estiloTexto,
          ),
          Text(
            '${resultado()}',
            style: estiloTexto,
          )
        ],
      )),
    );
  }
}
