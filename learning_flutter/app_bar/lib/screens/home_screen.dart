import 'package:flutter/material.dart';

const PRIMARY = "primary";
const WHITE = "white";
const SECONDARY = "secondary";

// with this we make agile the color change and avoid erros

const Map<String, Color> myColors = {
  PRIMARY: Color.fromRGBO(226, 115, 138, 1),
  WHITE: Colors.white,
  SECONDARY: Color.fromRGBO(247, 225, 227, 1),
}; // thats a similar way to a dictionary on python, but we have to specify the type of data we will map

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _myAppBar(),
      backgroundColor: myColors[PRIMARY],
      body: _Body(),
    );
  }
}

Widget _myAppBar() {
  return PreferredSize(
    preferredSize: Size.fromHeight(70),
    //create Heighht and give a infinite width
    child: AppBar(
      backgroundColor: myColors[WHITE],
      elevation: 0,
      leading: Padding(
        padding: const EdgeInsets.only(
          top: 15,
          left: 15,
        ),
        child: IconButton(
          icon: Icon(
            Icons.menu,
            color: myColors[PRIMARY],
            size: 30,
          ),
          onPressed: () => print("Menu pressed"),
        ),
      ), //all info inmaterial.io
      actions: [
        Padding(
          padding: const EdgeInsets.only(
            top: 15,
            right: 15,
          ),
          child: IconButton(
            onPressed: () => print("Search pressed"),
            icon: Icon(
              Icons.search,
              color: myColors[PRIMARY],
              size: 30,
            ),
          ),
        ),
      ],
    ),
  );
}

class _Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
          flex: 7,
          child: Container(
            // color: myColors[WHITE],color must be inside the decoration, boxdecoration if not we will get a error
            width: double.infinity,
            // it prevents that the size of the container be modify by adjust
            decoration: BoxDecoration(
              color: myColors[WHITE],
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(40),
                bottomRight: Radius.circular(40),
              ),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(
                    left: 30.0,
                    // top: 10.0,
                    bottom: 20.0,
                  ),
                  child: Text(
                    'Cosmetics that Everyone loves!',
                    style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                      letterSpacing: 1.2,
                    ),
                  ),
                ),
                Expanded(
                  child: LayoutBuilder(
                    // layour builder gives us information to create a layour it have a constrainss variable with the information fo height and width
                    builder:
                        (BuildContext context, BoxConstraints constraints) {
                      // we can just pass context, constraints with any name, flutter will pas it
                      return Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          _ImageTitle(
                            height: constraints.maxHeight * .85,
                            price: 15.00,
                            imagePath: 'assets/images/makeup1.png',
                            favoriteCallBack: () =>
                                print('1rst makeup favorited'),
                            addCallBack: () => print('1rst makeup added'),
                          ),
                          Column(
                            children: [
                              _ImageTitle(
                                height: constraints.maxHeight * .37,
                                price: 75.00,
                                imagePath: 'assets/images/makeup2.png',
                                favoriteCallBack: () =>
                                    print('2nd makeup favorited'),
                                addCallBack: () => print('2nd makeup added'),
                              ),
                              SizedBox(
                                height: 8,
                              ),
                              _ImageTitle(
                                height: constraints.maxHeight * .37,
                                price: 55.00,
                                imagePath: 'assets/images/makeup3.png',
                                favoriteCallBack: () =>
                                    print('3rd makeup favorited'),
                                addCallBack: () => print('3rd makeup added'),
                              ),
                            ],
                          ),
                        ],
                      );
                    },
                  ),
                ),
              ],
            ),
          ),
        ),
        Expanded(
          flex: 3,
          child: Container(),
        ),
      ],
    );
  }
}

class _ImageTitle extends StatelessWidget {
  @override
  final double height;
  final double price;
  final String imagePath;
  final Function favoriteCallBack;
  final Function addCallBack;

  const _ImageTitle({
    Key key,
    @required this.height,
    @required this.price,
    @required this.imagePath,
    @required this.favoriteCallBack,
    @required this.addCallBack,
  }) : super(key: key);

  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image(
              height: height,
              image: AssetImage(imagePath),
            ),
            Padding(
              padding: const EdgeInsets.only(
                top: 15,
              ),
              child: IconButton(
                onPressed: favoriteCallBack,
                icon: Icon(
                  Icons.favorite_border,
                  color: myColors[PRIMARY],
                  size: 25,
                ),
              ),
            )
          ],
        ),
        SizedBox(
          height: 5,
        ),
        Row(
          children: [
            Text(
              '\$$price',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(
              //just a empty box
              width: 20,
            ),
            InkWell(
              //wrap any windgets we want into a button
              onTap: addCallBack,
              child: Container(
                decoration: BoxDecoration(
                  color: myColors[SECONDARY],
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(8),
                    topRight: Radius.circular(8),
                    bottomLeft: Radius.circular(8),
                    bottomRight: Radius.circular(15),
                  ),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(5.0),
                  child: Icon(
                    Icons.add,
                    color: myColors[PRIMARY],
                    size: 15,
                  ),
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
