import 'package:flutter/material.dart';
import 'package:test1/CoffeeItem.dart';
import 'package:test1/FakeData.dart';

class QuickOrderScreen extends StatefulWidget {
  @override
  _QuickOrderScreenState createState() => _QuickOrderScreenState();
}

class _QuickOrderScreenState extends State<QuickOrderScreen>
    with SingleTickerProviderStateMixin {
  List<CoffeeItem> coffees;
  CoffeeItem selectedCoffee;

  @override
  void initState() {
    super.initState();

    coffees = getCoffeeItems();
    selectedCoffee = coffees.first;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Quick Order'),
        // leading: IconButton(
        //   icon: Icon(
        //     Icons.menu,
        //     color: Colors.white,
        //   ),
        // ),
      ),
      body: _body(),
    );
  }

  _body() {
    return Column(
      // mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      // mainAxisSize: MainAxisSize.max,
      children: <Widget>[
        _coffeetype(),
        _coffeelist(),
        _coffeeprice(),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 50.0, vertical: 10.0),
          child: Divider(),
        ),
        _coffeeoptions(),
        _addbutton(),
        _footer(),
      ],
    );
  }

  _coffeetype() {
    return Material(
      color: Theme.of(context).primaryColor,
      child: Padding(
        padding: EdgeInsets.all(10),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            IconButton(
              icon: Image.asset('assets/quickorder1.png'),
              onPressed: () {},
            ),
            IconButton(
              icon: Image.asset('assets/quickorder2.png'),
              onPressed: () {},
            ),
          ],
        ),
      ),
    );
  }

  _coffeelistWidgets() {
    var list = <Widget>[];
    var h = MediaQuery.of(context).size.height / 5;

    coffees.forEach((c) {
      var isSelected = (c == selectedCoffee);

      list.add(AnimatedContainer(
        duration: Duration(milliseconds: 100),
        padding: EdgeInsets.all(isSelected ? 0 : 10),
        child: InkWell(
          child: AnimatedOpacity(
            duration: Duration(milliseconds: 100),
            opacity: isSelected ? 1.0 : 0.5,
            child: Image.asset(
              c.imagefilename,
              height: h,
            ),
          ),
          onTap: () {
            selectedCoffee = c;
            setState(() {});
          },
        ),
      ));
    });

    return list;
  }

  _coffeelist() {
    var h = MediaQuery.of(context).size.height / 5;
    return Container(
        height: h,
        child: SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: _coffeelistWidgets(),
          ),
        ));
  }

  _coffeeprice() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Expanded(
            child: Text(
          selectedCoffee.name,
          textAlign: TextAlign.right,
        )),
        Text('|'),
        Expanded(
            child: Text(
          '\$${selectedCoffee.price.toStringAsFixed(2)}',
          style: TextStyle(color: Theme.of(context).accentColor),
        )),
      ],
    );
  }

  _coffeeoptions() {
    return Text('opts');
  }

  _addbutton() {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 50.0, vertical: 10.0),
      child: Stack(
        alignment: Alignment.center,
        children: <Widget>[
          Divider(),
          RaisedButton(
            child: Text('Add for \$${selectedCoffee.price.toStringAsFixed(2)}'),
            onPressed: () {},
          ),
        ],
      ),
    );
  }

  _footer() {
    return Text('footer');
  }
}
