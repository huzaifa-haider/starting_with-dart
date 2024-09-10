

import 'package:flutter/material.dart';
import 'package:starting_with_dart/main.dart';

List<Widget> getButtonList(BuildContext context) {
  return [

    ElevatedButton(
      child: Text("Go to splash screen"),
      onPressed: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => splashScreen()),
        );
      },
    ),
    ElevatedButton(
      child: Text("ContainerDecuration"),
      onPressed: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => containerDecuration()),
        );
      },
    ),
    ElevatedButton(
      child: Text("ExpendedWidget"),
      onPressed: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => ExpendedWidgets()),
        );
      },
    ),
    ElevatedButton(
      child: Text("MarginPadding"),
      onPressed: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => MarginAndPadding()),
        );
      },
    ),
    ElevatedButton(
      child: Text("ListTile"),
      onPressed: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => listTitle()),
        );
      },
    ),
    ElevatedButton(
      child: Text("Circle Avetar"),
      onPressed: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => circleAvetar()),
        );
      },
    ),
    ElevatedButton(
      child: Text("CustomFont"),
      onPressed: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => customFont()),
        );
      },
    ),
    ElevatedButton(
      child: Text("Style And Theme"),
      onPressed: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => styleAndTheme()),
        );
      },
    ),
    ElevatedButton(
      child: Text("CardWidget"),
      onPressed: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => cardWidget()),
        );
      },
    ),
    ElevatedButton(
      child: Text("inputTextField"),
      onPressed: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => inputTextField()),
        );
      },
    ),
    ElevatedButton(
      child: Text("gridView"),
      onPressed: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => gridView()),
        );
      },
    ),
    ElevatedButton(
      child: Text("callbackFunction"),
      onPressed: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => callbackFunction()),
        );
      },
    ),
    ElevatedButton(
      child: Text("custom widget"),
      onPressed: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => customWidget()),
        );
      },
    ),
    ElevatedButton(
      child: Text("stack widget"),
      onPressed: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => stackWidget()),
        );
      },
    ),
    ElevatedButton(
      child: Text("custom widget btn for customization"),
      onPressed: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => customWidget1()),
        );
      },
    ),
    ElevatedButton(
      child: Text("wrap widget"),
      onPressed: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => wrapWidget()),
        );
      },
    ),

    ElevatedButton(
      child: Text("sizeBox widget"),
      onPressed: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => sizeBoxWidget()),
        );
      },
    ),
    ElevatedButton(
      child: Text("richText widget"),
      onPressed: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => richTextWidget()),
        );
      },
    ),

    ElevatedButton(
      child: Text("icon widget/ fontAwsome icon"),
      onPressed: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => iconWidget()),
        );
      },
    ),
    ElevatedButton(
      child: Text("Positioned widget"),
      onPressed: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => positionedWidget()),
        );
      },
    ),
    ElevatedButton(
      child: Text("StateFull widget"),
      onPressed: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => stateFullWidget()),
        );
      },
    ),
    ElevatedButton(
      child: Text("Calculator"),
      onPressed: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => calculator()),
        );
      },
    ),
    ElevatedButton(
      child: Text("ConstraintBox"),
      onPressed: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => constraintBox()),
        );
      },
    ),
    ElevatedButton(
      child: Text("rangeSlider"),
      onPressed: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => rangeSlider()),
        );
      },
    ),
    ElevatedButton(
        child: Text('animatedWidget'),
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => animateContainer()),
          );
        }
    ),

    ElevatedButton(
        child: Text('animatedOpacity'),
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => animatedOpacity()),
          );
        }
    ),

    ElevatedButton(
        child: Text('Cross Fade'),
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => crossFade()),
          );
        }
    ),

    ElevatedButton(
        child: Text('Hero Animation'),
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => heroAnimation()),
          );
        }
    ),

    ElevatedButton(
        child: Text('ListWheelScrollView'),
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => listWheel()),
          );
        }
    ),







  ];
}