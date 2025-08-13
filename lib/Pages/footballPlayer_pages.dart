import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tugas1_11pplg2/Controllers/footballplayer_controller.dart';
import 'package:tugas1_11pplg2/Routes/routes.dart';

class FootballplayerPages extends StatelessWidget {
  FootballplayerPages({super.key});

  final FootballplayerController c = Get.put(FootballplayerController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("World Cup 2050"), centerTitle: true),
      body: Padding(
        padding: const EdgeInsets.all(15),
        child: Obx(() {
          return ListView.builder(
            itemCount: c.players.length,
            itemBuilder: (context, index) {
              final p = c.players[index];
              return Card(
                child: ListTile(
                  leading: CircleAvatar(child: Text(p.number.toString())),
                  title: Text(p.name),
                  subtitle: Text("${p.position} • #${p.number}"),
                  trailing: const Icon(Icons.chevron_right),
                  onTap: () {
                    Get.toNamed(
                      AppRoutes.editPlayerPage,
                      arguments: {'index': index},
                    );
                  },
                ),
              );
            },
          );
        }),
      ),
    );
  }
}
