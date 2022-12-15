import 'package:f_sesion8/services/lugar_service.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:provider/provider.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final lugarService = Provider.of<LugarService>(context);

    return Scaffold(
      body: ListView.builder(
        itemCount: lugarService.lugares.length,
        
      ),
    );
  }
}
