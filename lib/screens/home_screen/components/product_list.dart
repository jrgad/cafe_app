import 'package:untitled3/constants.dart';
import 'package:untitled3/product.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class ProductList extends StatelessWidget {
  final Product product;
  final Function onPress;
  const ProductList({
    Key key,
    this.onPress,
    this.product,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPress,
      child: Container(
        padding: EdgeInsets.symmetric(vertical: 20),
        child: Row(
          children: [
            Container(
              width: 60,
              child: SvgPicture.asset(product.image),
            ),
            SizedBox(
              width: 20,
            ),
            Text(
              product.name,
              style: kProductNameStyle,
            ),
            Spacer(),
            Icon(Icons.arrow_forward_ios)
          ],
        ),
      ),
    );
  }
}
