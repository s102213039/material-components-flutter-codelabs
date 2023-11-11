import 'package:flutter/material.dart';

import 'model/product.dart';

class Backdrop extends StatefulWidget {
  final Category currentCategory;
  final Widget frontLayer;
  final Widget backLayer;
  final Widget frontTitle;
  final Widget backTitle;

  const Backdrop(
      {required this.currentCategory,
      required this.frontLayer,
      required this.backLayer,
      required this.frontTitle,
      required this.backTitle,
      Key? key})
      : super(key: key);

  @override
  _BackdropState createState() => _BackdropState();
}

class _BackdropState extends State<Backdrop>
    with SingleTickerProviderStateMixin {
  final GlobalKey _backdropKey = GlobalKey(debugLabel: 'Backdrop');

  Widget _buildStack() {
    return Stack(
      key: _backdropKey,
      children: [
        widget.backLayer,
        widget.frontLayer,
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    var appBar = AppBar(
      elevation: 0.0,
      titleSpacing: 0.0,
      leading: Icon(Icons.menu),
      title: Text('SHRINE'),
      actions: [
        IconButton(
          onPressed: () {},
          icon: Icon(
            Icons.search,
            semanticLabel: 'search',
          ),
        ),
        IconButton(
          onPressed: () {},
          icon: Icon(
            Icons.tune,
            semanticLabel: 'filter',
          ),
        ),
      ],
    );

    return Scaffold(
      appBar: appBar,
      body: _buildStack(),
    );
  }
}
