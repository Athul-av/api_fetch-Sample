import 'package:api_sample/functions/provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';


class Homescreen extends StatelessWidget {
  const Homescreen ({super.key});

  

  @override
  Widget build(BuildContext context) {
    Provider.of<Userprovider>(context,listen: false).getdat();
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Consumer<Userprovider>(
            builder: (context, value, child) {
              return ListView.separated(
                 itemBuilder: (context, index) {
                   return ListTile(
                    tileColor: Color.fromARGB(255, 169, 203, 202),
                    title: Text('Name : '+value.userdatas![index].name), 
                    subtitle: Text('email : '+value.userdatas![index].email),
                   );
                 },
             separatorBuilder: ((context, index) => SizedBox(height: 10)),
              itemCount: value.userdatas!.length);  
            },
           
          ),
        ),
      ),
    );

    
  }

}