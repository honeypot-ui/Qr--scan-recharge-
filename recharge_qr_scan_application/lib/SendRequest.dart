import "package:flutter/material.dart";

class SendRequest extends StatelessWidget{

  final String pageTextChanged;
  SendRequest(this.pageTextChanged);

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
