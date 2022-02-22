import 'package:flutter/material.dart';
import 'package:ui_page_app_4/custom_widgets.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  bool expanded = false;
  bool expanded1 = false;
  bool expanded2 = false;
  bool expanded3 = false;
  bool expanded4 = false;
  bool expanded5 = false;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Ui 4',
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          elevation: 0,
          backgroundColor: Colors.blue,
          title: Text('Dukaan Premium'),
          centerTitle: true,
          leading: Icon(Icons.arrow_back),
        ),
        body: SingleChildScrollView(
          child: Stack(
            clipBehavior: Clip.none,
            children: [
              Container(
                height: 100,
                width: 420,
                color: Colors.blue,
              ),
              Positioned(
                left: 30,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      height: 180,
                      width: 300,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          SizedBox(
                            height: 10,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              ClipRRect(
                                child: Image.asset(
                                  'assets/images/logo.png',
                                  width: 200,
                                  height: 55,
                                  fit: BoxFit.fill,
                                ),
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 12,
                          ),
                          Text(
                            'Get Dukaan Premium for just',
                            style: TextStyle(
                                fontSize: 18, fontWeight: FontWeight.bold),
                          ),
                          Text(
                            '₹4,999/year',
                            style: TextStyle(
                                fontSize: 18, fontWeight: FontWeight.bold),
                          ),
                          Padding(
                            padding: EdgeInsets.fromLTRB(15, 5, 15, 0),
                            child: Text(
                                'All the advanced features for scaling your'),
                          ),
                          Text('business.')
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 200),
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 30),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Text(
                            'Features',
                            style: TextStyle(
                                fontSize: 16, fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    CustomListTile(
                        icon: Icons.sports_golf_rounded,
                        title: 'Custom domain name',
                        subTitle: '''Get your own custom domain and buid
your brand on the internet.'''),
                    CustomListTile(
                        icon: Icons.verified_rounded,
                        title: 'Verified seller badge',
                        subTitle: '''Get green verified badge under your
store name and build trust.'''),
                    CustomListTile(
                        icon: Icons.laptop_chromebook_rounded,
                        title: 'Dukaan for PC',
                        subTitle: '''Access all the exclusive premium
features on Dukaan for PC.'''),
                    CustomListTile(
                        icon: Icons.headphones_rounded,
                        title: 'Priority Support',
                        subTitle: '''Get your questions resolved with our
priority customer support.'''),
                    Divider(
                      color: Colors.grey[300],
                      thickness: 2,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 30),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Text(
                            'What is Dukaan Premium?',
                            style: TextStyle(
                                fontSize: 17, fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Container(
                      height: 160,
                      width: 300,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          image: DecorationImage(
                              image: AssetImage('assets/images/image2.jpg'),
                              fit: BoxFit.fill)),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Divider(
                      color: Colors.grey[300],
                      thickness: 2,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 30),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Text(
                            'Frequently asked questions',
                            style: TextStyle(
                                fontSize: 20, fontWeight: FontWeight.bold),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                        ],
                      ),
                    ),
                    Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.fromLTRB(15, 5, 15, 5),
                          child: ExpansionTile(
                            title: Text(
                              'What types of business can use Dukaan Premium?',
                              style: TextStyle(
                                  fontSize: 17, fontWeight: FontWeight.w500),
                            ),
                            textColor: Colors.black,
                            iconColor: Colors.black,
                            trailing:
                                Icon(expanded ? Icons.minimize : Icons.add),
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(
                                    left: 15, right: 15, bottom: 5),
                                child: Text(
                                  'Dukaan caters to a wide verity of sellers be it a small grocery or a big legacy brand, anyone who wants to sell their products/services online Dukaan is the perfect platform for you',
                                  style: TextStyle(color: Colors.grey),
                                ),
                              )
                            ],
                            onExpansionChanged: (bool exp) {
                              setState(() {
                                expanded = exp;
                              });
                            },
                          ),
                        ),
                        Divider(
                          color: Colors.grey[300],
                          thickness: 2,
                        ),
                        Padding(
                          padding: const EdgeInsets.fromLTRB(15, 0, 15, 0),
                          child: ExpansionTile(
                            title: Text(
                              'What is your refund policy?',
                              style: TextStyle(
                                  fontSize: 17, fontWeight: FontWeight.w500),
                            ),
                            textColor: Colors.black,
                            iconColor: Colors.black,
                            trailing:
                                Icon(expanded2 ? Icons.minimize : Icons.add),
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(
                                    left: 15, right: 15, bottom: 5),
                                child: Text(
                                  'Dukaan caters to a wide verity of sellers be it a small grocery or a big legacy brand, anyone who wants to sell their products/services online Dukaan is the perfect platform for you',
                                  style: TextStyle(color: Colors.grey),
                                ),
                              )
                            ],
                            onExpansionChanged: (bool exp) {
                              setState(() {
                                expanded2 = exp;
                              });
                            },
                          ),
                        ),
                        Divider(
                          color: Colors.grey[300],
                          thickness: 2,
                        ),
                        Padding(
                          padding: const EdgeInsets.fromLTRB(15, 0, 15, 0),
                          child: ExpansionTile(
                            title: Text(
                              'Will there be an automatic charge after the paid trial?',
                              style: TextStyle(
                                  fontSize: 17, fontWeight: FontWeight.w500),
                            ),
                            textColor: Colors.black,
                            iconColor: Colors.black,
                            trailing:
                                Icon(expanded1 ? Icons.minimize : Icons.add),
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(
                                    left: 15, right: 15, bottom: 5),
                                child: Text(
                                  'Dukaan caters to a wide verity of sellers be it a small grocery or a big legacy brand, anyone who wants to sell their products/services online Dukaan is the perfect platform for you',
                                  style: TextStyle(color: Colors.grey),
                                ),
                              )
                            ],
                            onExpansionChanged: (bool exp) {
                              setState(() {
                                expanded1 = exp;
                              });
                            },
                          ),
                        ),
                        Divider(
                          color: Colors.grey[300],
                          thickness: 2,
                        ),
                        Padding(
                          padding: const EdgeInsets.fromLTRB(15, 0, 15, 0),
                          child: ExpansionTile(
                            title: Text(
                              'What payment methods do you offer?',
                              style: TextStyle(
                                  fontSize: 17, fontWeight: FontWeight.w500),
                            ),
                            textColor: Colors.black,
                            iconColor: Colors.black,
                            trailing:
                                Icon(expanded3 ? Icons.minimize : Icons.add),
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(
                                    left: 15, right: 15, bottom: 5),
                                child: Text(
                                  'Dukaan caters to a wide verity of sellers be it a small grocery or a big legacy brand, anyone who wants to sell their products/services online Dukaan is the perfect platform for you',
                                  style: TextStyle(color: Colors.grey),
                                ),
                              )
                            ],
                            onExpansionChanged: (bool exp) {
                              setState(() {
                                expanded3 = exp;
                              });
                            },
                          ),
                        ),
                        Divider(
                          color: Colors.grey[300],
                          thickness: 2,
                        ),
                        Padding(
                          padding: const EdgeInsets.fromLTRB(15, 0, 15, 0),
                          child: ExpansionTile(
                            title: Text(
                              'What happens when my free trail ends?',
                              style: TextStyle(
                                  fontSize: 17, fontWeight: FontWeight.w500),
                            ),
                            textColor: Colors.black,
                            iconColor: Colors.black,
                            trailing:
                                Icon(expanded4 ? Icons.minimize : Icons.add),
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(
                                    left: 15, right: 15, bottom: 5),
                                child: Text(
                                  'Dukaan caters to a wide verity of sellers be it a small grocery or a big legacy brand, anyone who wants to sell their products/services online Dukaan is the perfect platform for you',
                                  style: TextStyle(color: Colors.grey),
                                ),
                              )
                            ],
                            onExpansionChanged: (bool exp) {
                              setState(() {
                                expanded4 = exp;
                              });
                            },
                          ),
                        ),
                        Divider(
                          color: Colors.grey[300],
                          thickness: 2,
                        ),
                        Padding(
                          padding: const EdgeInsets.fromLTRB(15, 0, 15, 0),
                          child: ExpansionTile(
                            title: Text(
                              'What are the terms for the custom domain?',
                              style: TextStyle(
                                  fontSize: 17, fontWeight: FontWeight.w500),
                            ),
                            textColor: Colors.black,
                            iconColor: Colors.black,
                            trailing:
                                Icon(expanded5 ? Icons.minimize : Icons.add),
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(
                                    left: 15, right: 15, bottom: 5),
                                child: Text(
                                  'Dukaan caters to a wide verity of sellers be it a small grocery or a big legacy brand, anyone who wants to sell their products/services online Dukaan is the perfect platform for you',
                                  style: TextStyle(color: Colors.grey),
                                ),
                              )
                            ],
                            onExpansionChanged: (bool exp) {
                              setState(() {
                                expanded5 = exp;
                              });
                            },
                          ),
                        ),
                        Divider(
                          color: Colors.grey[300],
                          thickness: 2,
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 33, top: 5),
                          child: Text(
                            'Need help? Get in touch',
                            style: TextStyle(
                                fontSize: 20, fontWeight: FontWeight.w500),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 32),
                      child: Row(
                        children: [
                          SizedBox(
                              height: 80,
                              width: 145,
                              child: DecoratedBox(
                                decoration: BoxDecoration(
                                    border: Border.all(color: Colors.grey),
                                    borderRadius: BorderRadius.circular(5)),
                                child: Padding(
                                  padding: const EdgeInsets.all(12),
                                  child: Column(
                                    children: [
                                      Icon(
                                        Icons.message_outlined,
                                        color: Colors.black,
                                      ),
                                      SizedBox(
                                        height: 5,
                                      ),
                                      Text('Live Chat')
                                    ],
                                  ),
                                ),
                              )),
                          SizedBox(
                            width: 10,
                          ),
                          SizedBox(
                              height: 80,
                              width: 145,
                              child: DecoratedBox(
                                decoration: BoxDecoration(
                                    border: Border.all(color: Colors.grey),
                                    borderRadius: BorderRadius.circular(5)),
                                child: Padding(
                                  padding: const EdgeInsets.all(12),
                                  child: Column(
                                    children: [
                                      Icon(
                                        Icons.phone_outlined,
                                        color: Colors.black,
                                      ),
                                      SizedBox(
                                        height: 5,
                                      ),
                                      Text('Phone Call')
                                    ],
                                  ),
                                ),
                              )),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Divider(
                      color: Colors.grey[300],
                      thickness: 2,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 10),
                          child: Text(
                            'Select Domain',
                            style: TextStyle(color: Colors.blue, fontSize: 19),
                          ),
                        ),
                        ElevatedButton(
                            onPressed: () {},
                            child: Text(
                              'Get Premium',
                              style: TextStyle(fontSize: 19),
                            ),
                            style: ElevatedButton.styleFrom(
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(8.5))))
                      ],
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
