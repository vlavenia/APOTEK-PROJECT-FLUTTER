import 'package:flutter/material.dart';
import 'package:medhub/core/theme/theme.dart';
import 'package:medhub/module/cart/controller/cart_controller.dart';

class ItemCheckout extends StatefulWidget {
  ItemCheckout({super.key});

  @override
  State<ItemCheckout> createState() => _ItemCheckoutState();
}

class _ItemCheckoutState extends State<ItemCheckout> {
  int quantity = 0;

  void incrementQuantity() {
    setState(() {
      quantity++;
    });
  }

  void decrementQuantity() {
    setState(() {
      if (quantity > 0) {
        quantity--;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    var quantityController = CartController();
    return Container(
      margin: EdgeInsets.symmetric(vertical: 16),
      height: 116,
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                width: 240,
                child: Row(
                  children: [
                    Image.asset(
                      "assets/images/item8.png",
                      width: 70,
                      height: 80,
                      fit: BoxFit.fill,
                    ),
                    const SizedBox(
                      width: 16.0,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("Sugar free gold"),
                        Text("bottle of 500 pellets"),
                        const SizedBox(
                          height: 22.0,
                        ),
                        Text("Rp 25.000")
                      ],
                    ),
                  ],
                ),
              ),
              Expanded(
                child: Container(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          const Icon(
                            Icons.close,
                            size: 22.0,
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 18.0,
                      ),
                      Container(
                        color: Color(0xffF1FFEA),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            InkWell(
                              onTap: decrementQuantity,
                              child: Container(
                                width: 38,
                                height: 38,
                                decoration: BoxDecoration(
                                  color: greenColor,
                                  shape: BoxShape.circle,
                                ),
                                child: const Padding(
                                  padding: EdgeInsets.all(10),
                                  child: ImageIcon(
                                    AssetImage(
                                      "assets/icon/min_icon.png",
                                    ),
                                    size: 12,
                                    color: Colors.white,
                                  ),
                                ),
                              ),
                            ),
                            Text(quantity.toString()),
                            InkWell(
                              onTap: incrementQuantity,
                              child: Container(
                                width: 38,
                                height: 38,
                                decoration: BoxDecoration(
                                  color: Color(0xff0F3759),
                                  shape: BoxShape.circle,
                                ),
                                child: const Padding(
                                  padding: EdgeInsets.all(10),
                                  child: ImageIcon(
                                    AssetImage(
                                      "assets/icon/add_icon2.png",
                                    ),
                                    size: 12,
                                    color: Colors.white,
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 18.0,
          ),
          Divider()
        ],
      ),
    );
  }
}
