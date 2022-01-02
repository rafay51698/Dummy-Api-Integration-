import 'package:api_1/user/userservice.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: FutureBuilder(
            future: getuser(),
            builder: (context, AsyncSnapshot snapshot) {
              if (snapshot.data == null) {
                return const Center(
                  child: CircularProgressIndicator(),
                );
              } else {
                return ListView.builder(
                    itemCount: snapshot.data.length,
                    itemBuilder: (context, index) {
                      return ListTile(
                        leading: Text(snapshot.data[index].id.toString()),
                        title: Text(snapshot.data[index].name),
                        subtitle: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            const SizedBox(
                              height: 10,
                            ),
                            Text('Username: ${snapshot.data[index].username}'),
                            const SizedBox(
                              height: 10,
                            ),
                            const Text('Adress: '),
                            const SizedBox(
                              height: 10,
                            ),
                            Text('    city: ${snapshot.data[index].city}'),
                            Text('    street: ${snapshot.data[index].street}'),
                            const SizedBox(
                              height: 10,
                            )
                          ],
                        ),
                      );
                    });
              }
            }),);
  }

 
}
