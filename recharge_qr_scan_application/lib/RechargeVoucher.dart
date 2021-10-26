import "package:flutter/material.dart";

class RechargeVoucher extends StatelessWidget{

  final String pageTextChanged;
 RechargeVoucher(this.pageTextChanged);

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
