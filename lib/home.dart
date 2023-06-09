import 'package:flutter/material.dart';
import 'package:school/components/app_bar.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});
  final String title;

  @override
  State<MyHomePage> createState() => Home();
}

class Home extends State<MyHomePage> {
  bool isDarkMode = true;

  void toggleDarkMode(bool value) {
    setState(() {
      isDarkMode = value;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'School',
        theme: isDarkMode ? ThemeData.dark() : ThemeData.light(),
        home: Scaffold(
          appBar: const PreferredSize(
            preferredSize: Size.fromHeight(55),
            child: AppBarWidget(),
          ),
          body: Center(
            child: Padding(
              padding: const EdgeInsets.all(18.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    "Minhas Estatisticas",
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.only(top: 10),
                    child: Column(
                      children: [
                        Row(
                          children: [
                            Icon(Icons.list_alt),
                            Padding(
                              padding: EdgeInsets.all(8.0),
                              child: Text(
                                "Minhas Notas",
                                style: TextStyle(fontSize: 18),
                              ),
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            Icon(Icons.check),
                            Padding(
                              padding: EdgeInsets.all(8.0),
                              child: Text(
                                "Concluídas",
                                style: TextStyle(fontSize: 18),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  const Divider(
                    height: 8,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 20),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          "Configurações",
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Row(
                          children: [
                            const Expanded(
                                child: Text(
                              "Tema escuro",
                              style: TextStyle(fontSize: 18),
                            )),
                            Switch(
                              value: isDarkMode,
                              onChanged: toggleDarkMode,
                            ),
                          ],
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
        ));
  }
}
