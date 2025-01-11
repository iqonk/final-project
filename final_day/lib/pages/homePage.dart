import 'package:final_day/data/global_data.dart';
import 'package:final_day/services/api.dart';
import 'package:final_day/widgets/text_widget.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue.shade400,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: FutureBuilder(
            future: Api().getData(),
            builder: (context, snapshot) {
              if (snapshot.connectionState == ConnectionState.waiting) {
                return const Center(child: CircularProgressIndicator());
              } else if (snapshot.connectionState == ConnectionState.done) {
                return ListView.builder(
                  itemCount: allMeals.length,
                  itemBuilder: (context, index) => InkWell(
                    child: Card(
                      child: Column(
                        children: [
                          Text("ID: ${allMeals[index].id.toString()}"),
                          Text(allMeals[index].title.toString()),
                          Image.network(allMeals[index].imageUrl.toString())
                        ],
                      ),
                    ),
                  ),
                );
              } else {
                return const TextWidget(name: "No data", num: 0);
              }
            }),
      ),
    );
  }
}
