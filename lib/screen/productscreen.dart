

import 'package:conditoin/list/list.dart';
import 'package:flutter/material.dart';



class ProductScreen extends StatefulWidget {
   ProductScreen({super.key,required this.products});
   final List<Product>products;

  @override
  State<ProductScreen> createState() => _ProductScreenState();
}

class _ProductScreenState extends State<ProductScreen> {

  int productCounter =0;
  void _incrementCounter( ){
   setState(() {
     productCounter++;
     /// check the counter
     if(productCounter == 5){
      _showCongratulationsDialog(context);
     }
   });

  }
  void _showCongratulationsDialog(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text('Congratulations!'),
          content: Text('data'),
          actions: [
            InkWell(
                onTap: (){
                  Navigator.pop(context);
                },
                child: Text('Ok'))
          ],
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      backgroundColor: Colors.blueGrey,

      body: ListView.builder(
          itemCount: widget.products.length,
          itemBuilder: (context,index){
        return Card(
          child: ListTile(
            title: Text(widget.products[index].name),
            subtitle: Text(widget.products[index].data),
            trailing: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('${widget.products[index].num}'),

                ElevatedButton(onPressed:_incrementCounter,
                    child:Text('Buy Now'))

              ],
            ),
          ),
        );
      }),
    );
  }
}
