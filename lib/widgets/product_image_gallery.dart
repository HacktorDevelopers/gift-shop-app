import 'package:flutter/material.dart';

class ProductImageGallery extends StatefulWidget {
  ProductImageGallery({@required this.images});
  List<String> images;
  @override
  _ProductImageGalleryState createState() => _ProductImageGalleryState();
}

class _ProductImageGalleryState extends State<ProductImageGallery> {
  int index = 0;
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Flexible(
              flex: 3,
              child: Container(
                child: Image.network(
                  widget.images[index],
                  height: 300,
                ),
              )),
          Flexible(
            flex: 1,
            child: Column(
              children: widget.images
                  .map((f) => InkWell(
                        onTap: () =>
                            setState(() => index = widget.images.indexOf(f)),
                        child: Container(
                          margin: const EdgeInsets.all(8.0),
                          child: CircleAvatar(
                            child: Image.network(f),
                          ),
                        ),
                      ))
                  .toList(),
            ),
          )
        ],
      ),
    );
  }
}
