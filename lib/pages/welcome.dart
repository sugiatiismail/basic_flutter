import 'package:flutter/material.dart';
import 'package:routemaster/routemaster.dart';

class Welcome extends StatelessWidget {
  const Welcome({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          toolbarHeight: 80,
          bottomOpacity: 0.0,
          elevation: 0.0,
          backgroundColor: Color.fromARGB(255, 245, 146, 146),
          title: Row(
            children: [
              Spacer(
                flex: 1,
              ),
              Image(
                image: AssetImage('assets/images/profil.png'),
                height: 70,
              ),
              Spacer(),
              TextButton(
                  onPressed: () => Routemaster.of(context).push('/'),
                  style: ElevatedButton.styleFrom(),
                  child: Text(
                    "Home",
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 18,
                        fontWeight: FontWeight.bold),
                  )),
              Spacer(),
              TextButton(
                  onPressed: () =>
                      Routemaster.of(context).push('/site/portfolio'),
                  style: ElevatedButton.styleFrom(),
                  child: Text(
                    "Portfolio",
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 18,
                        fontWeight: FontWeight.bold),
                  )),
              Spacer(),
              TextButton(
                  onPressed: () =>
                      Routemaster.of(context).push('/site/experience'),
                  style: ElevatedButton.styleFrom(),
                  child: Text("Experience",
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 18,
                          fontWeight: FontWeight.bold))),
              Spacer(),
              TextButton(
                  onPressed: () =>
                      Routemaster.of(context).push('/site/contact'),
                  style: ElevatedButton.styleFrom(),
                  child: Text("Contact",
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 18,
                          fontWeight: FontWeight.bold))),
              Spacer(
                flex: 40,
              ),
            ],
          )),
      body: SingleChildScrollView(
        child: Container(
          width: MediaQuery.of(context).size.width,
          // height: MediaQuery.of(context).size.height,
          color: Color.fromARGB(255, 245, 146, 146),
          child: Row(
            children: [
              Spacer(
                flex: 2,
              ),
              Padding(
                padding: const EdgeInsets.only(top: 100, left: 300.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Ismail Halawa",
                          style: TextStyle(
                              fontSize: 40, fontWeight: FontWeight.bold),
                        ),
                        Text(
                          "Front End Developer, JavaScript | HTML | CSS | ReactJS | Flutter",
                          style: TextStyle(fontSize: 18),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 40,
                    ),
                    Row(
                      children: [
                        SizedBox(
                          width: 180, // <-- Your width
                          height: 40,
                          child: ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                primary: Color.fromARGB(
                                    255, 238, 20, 5), // Background color
                              ),
                              onPressed: () {},
                              child: Text(
                                "See My Profil",
                                style: TextStyle(fontSize: 20),
                              )),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 15.0),
                          child: SizedBox(
                              width: 120, // <-- Your width
                              height: 40,
                              child: ElevatedButton(
                                  style: ElevatedButton.styleFrom(
                                    primary: Colors.white, // Background color
                                  ),
                                  onPressed: () {},
                                  child: Text(
                                    "Contact",
                                    style: TextStyle(
                                        color: Colors.black87, fontSize: 20),
                                  ))),
                        )
                      ],
                    ),
                    SizedBox(
                      height: 80,
                    ),
                  ],
                ),
              ),
              Spacer(),
            ],
          ),
        ),
      ),
    );
  }
}
