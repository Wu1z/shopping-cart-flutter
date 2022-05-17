import 'package:flutter/material.dart';

class ProductCard extends StatelessWidget {

  final bool readOnly;
  final VoidCallback? onPressed;

  const ProductCard({
    Key? key,
    this.readOnly = false,
    this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 0,
      color: Theme.of(context).colorScheme.background,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10),
      ),
      child: Padding(
        padding: const EdgeInsets.all(10),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              height: 100,
              width: 100,
              decoration: BoxDecoration(
                color: Theme.of(context).colorScheme.secondary,
                borderRadius: BorderRadius.circular(10)
              ),
            ),
            Flexible(
              child: Container(
                padding: const EdgeInsets.all(10),
                child: Text(
                  "Nome produto",
                  style: TextStyle(
                    fontSize: 16,
                    color: Theme.of(context).colorScheme.onSurfaceVariant,
                    fontWeight: FontWeight.bold
                  ),
                ),
              ),
            ),
            Container(
              padding: const EdgeInsets.all(5),
              child: Padding(
                padding: const EdgeInsets.all(10),
                child: Visibility(
                  visible: !readOnly,
                  child: IconButton(
                    icon: Icon(
                      Icons.add, 
                      color: Theme.of(context).colorScheme.primary,
                    ),
                    onPressed: onPressed, 
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}