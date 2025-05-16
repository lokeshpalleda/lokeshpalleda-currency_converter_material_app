import 'package:flutter/material.dart';

class CurrencyConverterMaterialPage extends StatefulWidget {
  const CurrencyConverterMaterialPage({super.key});
  @override
  State<CurrencyConverterMaterialPage> createState() =>
      _CurrencyConverterMaterialPageState();
}

class _CurrencyConverterMaterialPageState
    extends State<CurrencyConverterMaterialPage> {
  double result = 0;
  final TextEditingController textEditingController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    final border = OutlineInputBorder(
      borderSide: BorderSide(color: Colors.white, width: 2.0),
      borderRadius: BorderRadius.all(Radius.circular(10)),
    );
    return Scaffold(
      backgroundColor: Color.fromRGBO(0, 0, 0, 1),
      appBar: AppBar(
        backgroundColor: Colors.green,
        elevation: 0,
        title: Text('currency converter'),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'INR $result',
              style: TextStyle(
                fontSize: 40,
                fontWeight: FontWeight.bold,
                color: Color.fromARGB(255, 255, 255, 255),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(12),
              child: TextField(
                controller: textEditingController,
                style: TextStyle(color: Colors.white),
                decoration: InputDecoration(
                  hintText: 'please enter the amount in INR',
                  hintStyle: TextStyle(color: Colors.white60),
                  prefixIcon: Icon(Icons.monetization_on_outlined),
                  prefixIconColor: const Color.fromARGB(255, 17, 1, 1),
                  filled: true,
                  fillColor: Colors.green,
                  focusedBorder: border,
                  enabledBorder: border,
                ),
                keyboardType: TextInputType.numberWithOptions(decimal: true),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: TextButton(
                onPressed: () {
                  result = double.parse(textEditingController.text)*86;
                  setState(() {
                    
                  });
                },
                style: TextButton.styleFrom(
                  backgroundColor: Colors.green,
                  foregroundColor: Colors.white,
                  minimumSize: Size(double.infinity, 50),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(5),
                  ),
                ),
                child: Text('Convert'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
