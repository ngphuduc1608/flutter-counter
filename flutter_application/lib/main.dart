import 'package:flutter/material.dart';
import 'package:flutter_application/my_project.dart';
import 'dart:math';
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(home: CounterPage());
  }
}

class CounterPage extends StatefulWidget {
  const CounterPage({super.key});
  @override
  State<CounterPage> createState() => _CounterPage();
}

class _CounterPage extends State<CounterPage> {
  int n = 0;
  int result = 0;
  final MyProject _myProject = MyProject(0);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            backgroundColor: Colors.blue, title: const Text('Nguyễn Phú Đức')),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('Current Value: ${_myProject.value}'),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  OutlinedButton.icon(
                    onPressed: (){
                      setState(() {
                        _myProject.increase();
                      });
                    }, 
                    icon: const Icon(Icons.add), 
                    label: const Text('Tăng')),
                  OutlinedButton.icon(
                    onPressed: (){
                      setState(() {
                        _myProject.decrease();
                      });
                    },
                    icon: const Icon(Icons.remove), 
                    label: const Text('Giảm')),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  OutlinedButton.icon(
                    onPressed: (){
                      setState(() {
                        _myProject.square();
                      });
                    },
                    icon: const Icon(Icons.remove), 
                    label: const Text('n*n')),
                  OutlinedButton.icon(
                    onPressed: (){
                      setState(() {
                        _myProject.power(3);
                      });
                    },
                    icon: const Icon(Icons.remove), 
                    label: const Text('n^3'))
              ],),
              Expanded(
                child: TextField(
                  keyboardType: TextInputType.number,
                  decoration: const InputDecoration(
                    hintText: 'Nhập số nguyên n',
                  ),
                  onChanged: (value) {
                    setState(() {
                      n = int.parse(value);
                    });
                  },
                ),
              ),
              SizedBox(height: 20),
              ElevatedButton(
                onPressed: () {
                  setState(() {
                    result = pow(n.toDouble(), n.toDouble()).toInt();
                  });
                },
                child: Text('Tính lũy thừa bậc $n'),
              ),
              SizedBox(height: 20),
              Text(
                'Kết quả: $result',
                style: TextStyle(fontSize: 20),
              ),
            ],
          ),
        ));
  }
}