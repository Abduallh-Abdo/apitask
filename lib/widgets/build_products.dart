import 'package:apitask/models/get_product.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

Widget BuildProducts(GetAllProductModel model) {
  return Padding(
    padding: const EdgeInsets.all(8.0),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        // const Text(
        //   'All Catagory',
        //   style: TextStyle(
        //     fontSize: 20,
        //     fontWeight: FontWeight.bold,
        //   ),
        // ),
        // SizedBox(
        //   height: 50,
        //   child: ListView.builder(
        //     scrollDirection: Axis.horizontal,
        //     itemCount: model.products.length,
        //     itemBuilder: (context, index) => Container(
        //       margin: EdgeInsets.all(10),
        //       child: Text(model.products[index].category),
        //     ),
        //   ),
        // ),
        const Text(
          'All Products',
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        ),
        const SizedBox(height: 10),
        Expanded(
          child: GridView.count(
            crossAxisCount: 2,
            mainAxisSpacing: 8,
            crossAxisSpacing: 8,
            childAspectRatio: .5,
            children: List.generate(
              model.products.length,
              (index) => Container(
                padding: const EdgeInsets.all(10),
                decoration: BoxDecoration(
                  color: Colors.grey[300],
                  borderRadius: BorderRadius.circular(15),
                ),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      clipBehavior: Clip.antiAlias,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                      ),
                      child: Image(
                        height: 160,
                        width: 160,
                        fit: BoxFit.cover,
                        image: NetworkImage(
                          model.products[index].thumbnail,
                        ),
                      ),
                    ),
                    Text(
                      model.products[index].title,
                      style: const TextStyle(
                        fontSize: 14,
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      'company: ${model.products[index].brand}',
                      style: const TextStyle(
                        fontSize: 14,
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      'price: ${model.products[index].price}',
                      style: const TextStyle(
                        fontSize: 14,
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      'stock: ${model.products[index].stock}',
                      style: const TextStyle(
                        fontSize: 14,
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      'rating: ${model.products[index].rating}',
                      style: const TextStyle(
                        fontSize: 14,
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      'description: ${model.products[index].description}',
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                      style: const TextStyle(
                        fontSize: 14,
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ],
    ),
  );
}


                     // to be continued ...
                    // Text(
                    //   model.products[index].category,
                    //   style: const TextStyle(
                    //     fontSize: 14,
                    //     color: Colors.black,
                    //   ),
                    // ),