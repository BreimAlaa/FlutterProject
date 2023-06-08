import 'package:flutter/material.dart';

import 'OrderItem.dart';

class Orders extends StatefulWidget {
  const Orders({super.key});

  @override
  State<Orders> createState() => _OrdersState();
}

class _OrdersState extends State<Orders> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body: Container(
          color: Color(0xFFEAEFFF),
          child: Column(children: [
            Container(
              alignment: Alignment.center,
              width: double.infinity,
              height: 90,
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  colors: [Color(0xFF346EDF), Color(0xFF6FC8FB)],
                ),
              ),
              child: SafeArea(
                child: Text("Item Details",
                    style: TextStyle(
                        fontSize: 16,
                        color: Colors.white,
                        fontWeight: FontWeight.bold)),
              ),
            ),
            Expanded(
              child: DefaultTabController(
                length: 3,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    Container(
                      margin: EdgeInsets.only(bottom: 2),
                      color: Colors.white,
                      child: TabBar(
                        labelColor: Colors.blue,
                        unselectedLabelColor: Colors.grey,
                        indicatorSize: TabBarIndicatorSize.label,
                        indicatorColor: Colors.blue,
                        tabs: [
                          Tab(
                            child: Text("Pending"),
                          ),
                          Tab(
                            child: Text("Underway"),
                          ),
                          Tab(
                            child: Text("Completed"),
                          ),
                        ],
                      ),
                    ),
                    Expanded(
                      child: TabBarView(
                        children: [
                          Column(
                            children: [
                              OrderItem(
                                  id: "52001",
                                  type: "Carpenter",
                                  date: "28 Nov 2019"),
                              OrderItem(
                                  id: "52001",
                                  type: "Carpenter",
                                  date: "28 Nov 2019"),
                              OrderItem(
                                  id: "52001",
                                  type: "Carpenter",
                                  date: "28 Nov 2019"),
                              OrderItem(
                                  id: "52001",
                                  type: "Carpenter",
                                  date: "28 Nov 2019"),
                            ],
                          ),
                          Column(
                            children: [
                              OrderItem(
                                  id: "52001",
                                  type: "Carpenter",
                                  date: "28 Nov 2019"),
                              OrderItem(
                                  id: "52001",
                                  type: "Carpenter",
                                  date: "28 Nov 2019"),
                              OrderItem(
                                  id: "52001",
                                  type: "Carpenter",
                                  date: "28 Nov 2019"),
                              OrderItem(
                                  id: "52001",
                                  type: "Carpenter",
                                  date: "28 Nov 2019"),
                            ],
                          ),
                          Column(
                            children: [
                              OrderItem(
                                  id: "52001",
                                  type: "Carpenter",
                                  date: "28 Nov 2019"),
                              OrderItem(
                                  id: "52001",
                                  type: "Carpenter",
                                  date: "28 Nov 2019"),
                              OrderItem(
                                  id: "52001",
                                  type: "Carpenter",
                                  date: "28 Nov 2019"),
                              OrderItem(
                                  id: "52001",
                                  type: "Carpenter",
                                  date: "28 Nov 2019"),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            )
          ]),
        ));
  }
}
