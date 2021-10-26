import "package:flutter/material.dart";

class ScanVoucher extends StatelessWidget{

  final String pageTextChanged;
  ScanVoucher(this.pageTextChanged);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(pageTextChanged),),
      body: Center(
        child: Text(pageTextChanged),
      ),
    );
  }


}
