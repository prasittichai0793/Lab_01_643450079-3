import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        // colorScheme: ColorScheme.fromSeed(seedColor: Colors.red),
        useMaterial3: true,
      ),
      home: MyAppPage(),
    );
  }
}

class MyAppPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    List<Map<String, String>> students = [
      {"name": "นายกมล จันบุตรดี", "id": "643450063-8"},
      {"name": "นายชาญณรงค์ แต่งเมือง", "id": "643450069-6"},
      {"name": "นายประสิทธิชัย จันทร์สม", "id": "643450079-3"},
      {"name": "นายศรันย์ ซุ่นเส้ง", "id": "643450086-6"},
      {"name": "นางสาวสุธาดา เสนามงคล", "id": "643450089-0"},
      {"name": "นายก้องภพ ตาดี", "id": "643450321-2"},
      {"name": "นายเจษฏา พบสมัย", "id": "643450323-8"},
      {"name": "นางสาวนภัสสร ดวงจันทร์", "id": "643450326-2"},
    ];

    return Scaffold(
      appBar: AppBar(
        // backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        backgroundColor: Color(0xFF03a9f4),
        title: const Text("My App"),
      ),
      body: ListView.builder(
        itemCount: students.length,
        itemBuilder: (context, index) {
          return displayNameItem(
            name: students[index]['name']!,
            studentId: students[index]['id']!,
          );
        },
      ),
    );
  }

  Widget displayNameItem({required String name, required String studentId}) {
    final Map<String, String> nameToImage = {
      "นายกมล จันบุตรดี": 'images/Aek.jpg',
      "นายชาญณรงค์ แต่งเมือง": 'images/Jeab.jpg',
      "นายประสิทธิชัย จันทร์สม": 'images/Far.jpg',
      "นายศรันย์ ซุ่นเส้ง": 'images/Mos.jpg',
      "นางสาวสุธาดา เสนามงคล": 'images/Noey.jpg',
      "นายก้องภพ ตาดี": 'images/Model.jpg',
      "นายเจษฏา พบสมัย": 'images/Bank.jpg',
      "นางสาวนภัสสร ดวงจันทร์": 'images/Cream.jpg',
    };

    return Container(
      padding: const EdgeInsets.all(10),
      decoration: BoxDecoration(
        color: name == "นายประสิทธิชัย จันทร์สม" ? Color(0xFF03a9f4) : null,
      ),
      child: Row(
        children: [
          Image(
            width: 100,
            image: AssetImage(nameToImage[name] ?? 'images/NoImage.jpg'),
          ),
          const SizedBox(width: 10),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                name,
                style: TextStyle(
                  fontSize: 20,
                  color: name == "นายประสิทธิชัย จันทร์สม"
                      ? Color.fromARGB(255, 0, 0, 0)
                      : Colors.black,
                ),
              ),
              Text(
                'ID: $studentId',
                style: const TextStyle(fontSize: 16, color: Color.fromARGB(255, 0, 0, 0)),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
