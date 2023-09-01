// Pacote Material
import 'package:flutter/material.dart';

// Classe extras
import 'package:projeto/Smartphone.dart';
import 'package:projeto/Tvs.dart';

// StatefulWidget
class PaginaInicial extends StatefulWidget {
  const PaginaInicial({super.key});

  @override
  State<StatefulWidget> createState() {
    return PaginaInicialState();
  }
}

// State
class PaginaInicialState extends State {
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
                "TODOS OS PRODUTOS",
                textDirection: TextDirection.ltr,
              )
            ],
          ),
        ),
      ),
    );
  }
}
