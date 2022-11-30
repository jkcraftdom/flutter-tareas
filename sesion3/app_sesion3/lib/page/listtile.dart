import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class ListTileDemo extends StatelessWidget {
  const ListTileDemo({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Mi Pc'),
        centerTitle: true,
        elevation: 0,
      ),
      body: ListView(
        children: const [
          Card(
            child: ListTile(
              title: Text('RAM 16 GB'),
              leading: CircleAvatar(
                backgroundImage: AssetImage(
                    "assets/ram.png"), // no matter how big it is, it won't overflow
              ),
            ),
          ),
          Card(
              child: ListTile(
                  title: Text('TARJETA MADRE ASUS'),
                  leading: CircleAvatar(
                    backgroundImage: AssetImage("assets/tarjeta.png"),
                  ))),
          Card(
              child: ListTile(
                  title: Text('PROCESADOR INTEL 5'),
                  leading: CircleAvatar(
                    backgroundImage: AssetImage("assets/intel.jpg"),
                  ))),
          Card(
              child: ListTile(
                  title: Text('DISCO DURO SOLIDO'),
                  leading: CircleAvatar(
                    backgroundImage: AssetImage("assets/disco_duro.jpg"),
                  ))),
          Card(
            child: ListTile(
                title: Text('MONITOR'),
                leading: CircleAvatar(
                  backgroundImage: AssetImage("assets/monitor.jpg"),
                )),
          ),
          Card(
            child: ListTile(
                title: Text('CASE CPU'),
                leading: CircleAvatar(
                  backgroundImage: AssetImage("assets/case_cpu.jpg"),
                )),
          ),
          Card(
            child: ListTile(
                title: Text('TECLADO'),
                leading: CircleAvatar(
                  backgroundImage: AssetImage("assets/teclado.jpg"),
                )),
          ),
          Card(
            child: ListTile(
                title: Text('MOUSE'),
                leading: CircleAvatar(
                  backgroundImage: AssetImage("assets/raton.jpg"),
                )),
          )
        ],
      ),
    );
  }
}
