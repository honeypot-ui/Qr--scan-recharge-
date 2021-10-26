import "package:flutter/material.dart";

class qrscan extends StatelessWidget{

  final String pageTextChanged;
  qrscan (this.pageTextChanged);

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
