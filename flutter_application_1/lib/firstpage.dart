import 'package:flutter/material.dart';

class FirstPage extends StatefulWidget {
  const FirstPage({super.key});

  @override
  State<FirstPage> createState() => _FirstPageState();
}

class _FirstPageState extends State<FirstPage> {
  List<bool> isSeclected = [true, true];
  List<String> strTosoda = ["put in your jun", "put in your name"];

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        for (int i = 0; i < 2; i++) ...{listviewItem(strTosoda[i], i)}
      ],
    );
  }

  Widget listviewItem(String str, int index) {
    return ListTile(
      leading: const Icon(Icons.person_2_outlined),
      title: Text(str),
      subtitle: Text(isSeclected[index] == true ? "wellcom to soda" : " "),
      trailing: IconButton(
          onPressed: () {
            setState(() {
              isSeclected[index] = !isSeclected[index];
            });
          },
          icon: const Icon(Icons.arrow_forward_ios)),
    );
  }
}
