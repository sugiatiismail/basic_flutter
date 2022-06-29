import 'package:flutter/material.dart';

class SitePortfolio extends StatelessWidget {
  const SitePortfolio({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          child: Row(
            children: [
              ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    primary:
                        Color.fromARGB(255, 238, 20, 5), // Background color
                  ),
                  onPressed: () => Navigator.pop(context),
                  child: Text("Kembali")),
              Spacer(),
              Padding(
                padding: const EdgeInsets.only(top: 20.0),
                child: Text(
                  "Ini Halaman Portfolio",
                  style: TextStyle(fontSize: 20),
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
