// Pacote Material
import 'package:flutter/material.dart';
import 'package:projeto/PaginaInicial.dart';
import 'package:projeto/Tvs.dart';

// StatefulWidget
class Smartphone extends StatefulWidget {
  const Smartphone({super.key});

  @override
  State<StatefulWidget> createState() {
    return SmartphoneState();
  }
}

// State
class SmartphoneState extends State {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Início")),
      body: Center(
        child: SizedBox(
          width: 500,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  // LINK 01
                  ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const PaginaInicial(),
                        ),
                      );
                    },
                    child: const Text("Todos os produtos"),
                  ),
                  // LINK 02
                  ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const Smartphone(),
                        ),
                      );
                    },
                    child: const Text("Smartphones"),
                  ),
                  // LINK 03
                  ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const Tv(),
                        ),
                      );
                    },
                    child: const Text("TVs"),
                  )
                ],
              ),
              const Text(
                "TODOS OS SMARTPHONES",
                textDirection: TextDirection.ltr,
              )
            ],
          ),
        ),
      ),
    );
  }
}
