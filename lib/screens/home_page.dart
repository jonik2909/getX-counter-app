import 'package:countergetx/get/counter_get.dart';
import 'package:countergetx/screens/other_page.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomePage extends StatelessWidget {
  HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final Controller c = Get.put(Controller());

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: const Color.fromARGB(255, 96, 174, 237),
          title: const Text(
            "getX - Counter App",
            style: TextStyle(color: Colors.white),
          ),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  IconButton(
                    iconSize: 30,
                    style: IconButton.styleFrom(
                        backgroundColor: Color.fromARGB(255, 47, 169, 240)),
                    icon: const Icon(
                      Icons.remove,
                      color: Colors.white,
                    ),
                    onPressed: () => c.decrement(),
                  ),
                  const SizedBox(
                    width: 20,
                  ),
                  Obx(() => Text(
                        "${c.count}",
                        style: TextStyle(
                            fontSize: 25, fontWeight: FontWeight.bold),
                      )),
                  const SizedBox(
                    width: 20,
                  ),
                  IconButton(
                    iconSize: 30,
                    style: IconButton.styleFrom(
                        backgroundColor: Color.fromARGB(255, 47, 169, 240)),
                    icon: const Icon(
                      Icons.add,
                      color: Colors.white,
                    ),
                    onPressed: () => c.increment(),
                  ),
                ],
              ),
              SizedBox(
                height: 20,
              ),
              ElevatedButton(
                  onPressed: () => Get.to(OtherPage()),
                  child: Text("Next Page"))
            ],
          ),
        ),
      ),
    );
  }
}
