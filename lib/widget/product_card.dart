import 'package:flutter/material.dart';

class ProductCard extends StatelessWidget {

  final bool readOnly;

  const ProductCard({
    Key? key,
    this.readOnly = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 16,
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
                color: Colors.lightBlue[200],
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
                    color: Theme.of(context).colorScheme.secondary,
                    fontWeight: FontWeight.bold
                  ),
                ),
              ),
            ),
            Container(
              padding: const EdgeInsets.all(5),
              child: Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(10),
                    child: Visibility(
                      visible: !readOnly,
                      child: IconButton(
                        icon: Icon(
                          Icons.remove, 
                          color: Theme.of(context).primaryColor,
                        ),
                        onPressed: () => debugPrint, 
                      ),
                    ),
                  ),
                  const Text("1"),
                  Padding(
                    padding: const EdgeInsets.all(10),
                    child: Visibility(
                      visible: !readOnly,
                      child: IconButton(
                        icon: Icon(
                          Icons.add,
                          color: Theme.of(context).primaryColor,
                        ),
                        onPressed: () => debugPrint, 
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}