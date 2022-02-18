import 'package:flutter/material.dart';
import 'package:ui_page_app_4/custom_widgets.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

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
                width: 400,
                color: Colors.blue,
              ),
              Positioned(
                left: 30,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      height: 210,
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
                                  'assets/images/image1.jpg',
                                  width: 70,
                                  height: 70,
                                  fit: BoxFit.fill,
                                ),
                              ),
                              Text(
                                'dukaan',
                                style: TextStyle(
                                    fontSize: 30, fontWeight: FontWeight.bold),
                              ),
                            ],
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 105),
                            child: Text(
                              'PREMIUM',
                              style: TextStyle(color: Colors.blue),
                            ),
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
                padding: const EdgeInsets.only(top: 240),
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
                      height: 200,
                      width: 300,
                      child: DecoratedBox(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(6)),
                        child: Card(
                          child: ClipRRect(
                            child: Image.asset(
                              'assets/images/image2.jpg',
                            ),
                          ),
                        ),
                      ),
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
