import "package:flutter/material.dart";

class AwehPackages extends StatelessWidget{

  final String pageTextChanged;
  AwehPackages(this.pageTextChanged);

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
