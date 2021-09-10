import 'package:flutter/material.dart';

class SearchProductList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 500,
      child: ListView.separated(
        separatorBuilder: (context, index) => Divider(
          thickness: 2,
        ),
        itemBuilder: (context, index) => Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Image(
                  image: NetworkImage(
                      'https://cdn.shopify.com/s/files/1/0026/1033/1763/products/BBIAA35_FX-ADV_-FORCE-CX1-AQUA-rgb72dpi_d7c23c68-b57e-499c-8641-77fc6848981b.jpg?v=1601054428'),
                  width: 150,
                  height: 150,
                ),
                Column(
                  children: [
                    Text('online bicycle'),
                    Row(
                      children: [
                        Text('1452'),
                        IconButton(
                            color: Colors.grey,
                            onPressed: () {},
                            icon: Icon(Icons.favorite_border))
                      ],
                    )
                  ],
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
