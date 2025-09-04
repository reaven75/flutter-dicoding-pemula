


import 'package:flutter/material.dart';
import 'package:flutter_pemula_1/provider/counter_provider.dart';
import 'package:provider/provider.dart';

class ProviderMainScreen extends StatefulWidget {
  const ProviderMainScreen({super.key});

  @override
  State<ProviderMainScreen> createState() => _ProviderMainScreenState();
}

class _ProviderMainScreenState extends State<ProviderMainScreen> {
 

  @override
  Widget build(BuildContext context) {
    final valueCounter = context.watch<CounterProvider>();
    
   

    return  Scaffold(
      body: SafeArea(
        child: Center(
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                
                Text(
                  '${valueCounter.count}',style: TextStyle(fontSize: 40,fontWeight: FontWeight.bold),
                ) ,
                  Text('Hello, Provider!'),
                const SizedBox(height: 16),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    ElevatedButton(onPressed: () {
                      valueCounter.increment();
                    }, child: Text('Increment')),
                    const SizedBox(width: 16),
                    ElevatedButton(onPressed: () {
                      valueCounter.decrement();
                    }, child: Text('Decrement'))
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}