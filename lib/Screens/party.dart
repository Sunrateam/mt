import 'package:flutter/material.dart';
import 'package:mtstreamapp/widgets/color.dart';

class Party extends StatefulWidget {
  const Party({Key? key}) : super(key: key);

  @override
  State<Party> createState() => _PartyState();
}

class _PartyState extends State<Party> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          //listview.builder
          Expanded(
            child: ListView.builder(
              itemCount: 10,
              itemBuilder: (context, index) => Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(100))),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Card(
                    shadowColor: Colors.blueGrey,
                    child: Container(
                      height: 120,
                      color: colors.mywhite,
                      child: Row(
                        children: [
                          SizedBox(
                            height: 100,
                            width: 100,
                            child: Image(
                              image: AssetImage('assets/1stream.jpg'),
                              fit: BoxFit.fill,
                            ),
                          ),
                          Column(
                            children: [
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: [
                                  Image.asset("assets/gift.png"),
                                  Text(
                                    "Top Master Brand",
                                    style:
                                        TextStyle(fontWeight: FontWeight.bold),
                                  ),
                                ],
                              ),
                              Row(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(left: 10),
                                    child: Container(
                                      height: 20,
                                      width: 150,
                                      decoration: BoxDecoration(
                                        gradient: LinearGradient(colors: [
                                          colors.gradient1purple,
                                          colors.gradient2pink,
                                          colors.orange,
                                          colors.lightgreen,
                                          colors.gradient1purple
                                        ]),
                                        borderRadius: BorderRadius.circular(20),
                                      ),
                                      child: Row(
                                        children: [
                                          Image.asset("assets/crown1.png"),
                                          Padding(
                                            padding:
                                                const EdgeInsets.only(left: 5),
                                            child: Text(
                                              'Together Forever',
                                              style: TextStyle(
                                                  fontSize: 15,
                                                  color: colors.mywhite),
                                            ),
                                          )
                                        ],
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(left: 10),
                                    child: Container(
                                      height: 20,
                                      width: 100,
                                      decoration: BoxDecoration(
                                        gradient: LinearGradient(colors: [
                                          colors.lightgreen,
                                          colors.gradient1purple
                                        ]),
                                        borderRadius: BorderRadius.circular(20),
                                        color: colors.mycyan,
                                      ),
                                      child: Row(
                                        children: [
                                          Image.asset("assets/crown1.png"),
                                          Padding(
                                            padding:
                                                const EdgeInsets.only(left: 5),
                                            child: Text(
                                              'Super Star',
                                              style: TextStyle(
                                                  fontSize: 15,
                                                  color: colors.mywhite),
                                            ),
                                          )
                                        ],
                                      ),
                                    ),
                                  )
                                ],
                              ),
                              Padding(
                                padding:
                                    const EdgeInsets.only(right: 110, top: 20),
                                child: Row(
                                  children: [
                                    Row(
                                      children: [
                                        Text(
                                          'Top Master is a Brand',
                                          style: TextStyle(
                                              color: colors.mygrey,
                                              fontSize: 15),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
