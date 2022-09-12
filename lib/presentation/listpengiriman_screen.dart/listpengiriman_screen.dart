import 'package:bigapp/core/bloc/listPengiriman_bloc/listpengiriman_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ListPengirimanScreen extends StatelessWidget {
  const ListPengirimanScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Pengiriman"),
        automaticallyImplyLeading: false,
      ),
      body: Column(
        children: <Widget>[
          Row(
            children: <Widget>[
              Flexible(
                child: TextField(
                  decoration:
                      const InputDecoration(helperText: "Cari Pengiriman"),
                ),
              ),
              ElevatedButton(onPressed: () {}, child: const Text("Cari"))
            ],
          ),
          BlocConsumer<ListpengirimanBloc, ListpengirimanState>(
            listener: (context, state) {
              // TODO: implement listener
            },
            builder: (context, state) {
              return Expanded(
                child: ListView.builder(
                  itemCount: 10,
                  itemBuilder: (context, index) {
                    return Container(
                      // height: 200,
                      // width: 200,
                      color: Colors.grey.shade200,
                      margin: EdgeInsets.all(8),
                      child: Column(
                        children: <Widget>[
                          Column(
                            children: <Widget>[
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: <Widget>[
                                  Row(
                                    children: [
                                      Icon(
                                        Icons.circle,
                                        color: Colors.blue,
                                        size: 20,
                                      ),
                                      Text("Jakarta (JKT)"),
                                    ],
                                  ),
                                  Text("-"),
                                  Row(
                                    children: [
                                      Icon(
                                        Icons.circle,
                                        color: Colors.orange,
                                        size: 20,
                                      ),
                                      Text("Surabaya (SBY)"),
                                    ],
                                  ),
                                ],
                              ),
                            ],
                          ),
                          Row(
                            children: <Widget>[
                              Text("Status : "),
                              Text(
                                "Dalam Pengiriman",
                                style: TextStyle(fontStyle: FontStyle.italic),
                              ),
                            ],
                          ),
                          Row(
                            children: <Widget>[
                              Text("Tanggal Pengiriman : "),
                              Text(
                                "12/09/2020",
                                style: TextStyle(fontStyle: FontStyle.italic),
                              ),
                            ],
                          ),
                          Row(
                            children: <Widget>[
                              Text("Jenis Truck : "),
                              Text(
                                "(Type-1)",
                                style: TextStyle(fontStyle: FontStyle.italic),
                              ),
                            ],
                          ),
                          SizedBox(
                            width: MediaQuery.of(context).size.width / 2,
                            child: ElevatedButton(
                              onPressed: () {},
                              style: ElevatedButton.styleFrom(
                                  primary: Colors.orange),
                              child: Text("Detail"),
                            ),
                          ),
                        ],
                      ),
                    );
                  },
                ),
              );
            },
          )
        ],
      ),
    );
  }
}
