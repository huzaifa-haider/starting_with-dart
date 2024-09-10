import 'dart:async';
import 'dart:ui';

import 'package:flutter/material.dart';
import 'colors.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:starting_with_dart/ui_helper/util.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:starting_with_dart/widgets/rounded_btn.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:starting_with_dart/NaviBottons.dart';

void main() {
  runApp(FlutterApp());
}

//change theme for global styles.
class FlutterApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "My flutter App",
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
        appBarTheme: AppBarTheme(color: Colors.lightGreen),
        textTheme: TextTheme(
          displaySmall: TextStyle(fontSize: 21, fontWeight: FontWeight.bold),
          displayMedium: TextStyle(fontSize: 25, fontWeight: FontWeight.w500),
          displayLarge: TextStyle(fontSize: 30, fontWeight: FontWeight.w700),
        ),
      ),
      home: splashScreen(),
    );
  }
}

class DashBoardScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('DashBorad'),
      ),
      body: Container(
        color: Colors.blue.shade50,
        child: ElevatedButton(
          child: Text("Second Activity"),
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => secondScreen()),
            );
          },
        ),
      ),
    );
  }
}

class secondScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Navigation Screen'),
      ),
      body: ListView.builder(
        itemBuilder: (contex, index) => getButtonList(context)[index],
        itemCount: getButtonList(context).length,
        scrollDirection: Axis.vertical,
      ),
    );
  }
}

class splashScreen extends StatefulWidget {
  @override
  State<splashScreen> createState() => _splashScreenState();
}

class _splashScreenState extends State<splashScreen> {
  @override
  void initState() {
    super.initState();
    Timer(Duration(seconds: 2), () {
      Navigator.pushReplacement(
          context,
          MaterialPageRoute(
            builder: (context) => DashBoardScreen(),
          ));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: secondaryColor,
      body: Stack(
        children: [
          // Positioned widget to place the SVG in the top left corner
          Positioned(
            top: 0,
            left: 0,
            child: Container(
              width: 150,
              height: 150,
              child: SvgPicture.asset('assets/images/semiCircle.svg'),
            ),
          ),
          // Center widget to center the text in the middle of the screen
          Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'mentor',
                      style: TextStyle(
                        color: primaryColor,
                        fontSize: 50,
                        fontWeight: FontWeight.w900,
                      ),
                    ),
                    Text(
                      'me',
                      style: TextStyle(
                        color: Colors.yellow,
                        fontSize: 50,
                        fontWeight: FontWeight.w900,
                      ),
                    ),
                  ],
                ),
                Text(
                  'connect. ask. learn',
                  style: TextStyle(
                    color: primaryColor,
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class containerDecuration extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      width: double.infinity,
      height: double.infinity,
      color: Colors.blue.shade50,
      child: Center(
        child: Container(
          width: 150,
          height: 150,
          //color: Colors.blueGrey
          //use color in Box decuration.
          decoration: BoxDecoration(
            color: Colors.blueGrey,
            borderRadius: BorderRadius.circular(20),
            border: Border.all(
              width: 2,
              color: Colors.black,
            ),
            boxShadow: [
              BoxShadow(
                blurRadius: 51,
                spreadRadius: 10,
                color: Colors.grey,
              )
            ],

            //shape: BoxShape.circle
            //remove border radious for that
          ),
        ),
      ),
    ));
  }
}

class circularImage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
      child: Container(
        width: 200,
        height: 200,
      ),
    ));
  }
}

//Expended Widget
//if we want to use all available space.
//we can use flex value for weight of spacific container.
class ExpendedWidgets extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Padding(
      padding: EdgeInsets.only(top: 30),
      child: Row(
        children: [
          Expanded(
            flex: 1,
            child: Container(
              width: 50,
              height: 70,
              color: Colors.orange,
            ),
          ),
          Expanded(
            flex: 2,
            child: Container(
              width: 50,
              height: 70,
              color: Colors.green,
            ),
          ),
          Expanded(
            flex: 3,
            child: Container(
              width: 50,
              height: 70,
              color: Colors.red,
            ),
          ),
          Expanded(
            flex: 4,
            child: Container(
              width: 50,
              height: 70,
              color: Colors.blue,
            ),
          ),
        ],
      ),
    ));
  }
}

//Margin And Padding
class MarginAndPadding extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
            margin: EdgeInsets.all(
                40), //only come widget hold property of margin, like container.
            color: Colors.grey,
            child: Padding(
              padding: const EdgeInsets.only(
                  top: 20), //padding can be used in any widget.
              child: Text(
                'Hello World',
                style: TextStyle(fontSize: 25, color: Colors.white),
              ),
            )));
  }
}

class listTitle extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var nameArr = [
      "ali",
      "umar",
      "danial",
      "ali",
      "umar",
      "danial",
      "ali",
      "umar",
      "danial",
      "ali",
      "umar",
      "danial",
      "ali",
      "umar",
      "danial",
    ];

    return Scaffold(
        appBar: AppBar(
          backgroundColor: Theme.of(context).colorScheme.inversePrimary,
          title: Text('some'),
        ),
        body: ListView.separated(
          itemBuilder: (context, index) {
            return ListTile(
              leading: Text('${index + 1}'),
              title: Text(nameArr[index]),
              subtitle: Text('Number'),
              trailing: Icon(Icons.add),
            );
          },
          itemCount: nameArr.length,
          separatorBuilder: (context, index) {
            return Divider(
              height: 20,
              thickness: 1,
            );
          },
        ));
  }
}

class circleAvetar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text('Circle avetar'),
      ),
      body: Center(
        child: CircleAvatar(
          child: Text('Hi sir'),
          backgroundImage: AssetImage('assets/images/img.png'),
          radius: 50,
        ),
      ),
    );
  }
}

//create folder like we have created for image.

class customFont extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
          child: Text(
        'Hello font checking',
        style: TextStyle(fontFamily: 'FontMain'),
      )),
    );
  }
}

//uses theme in very first class of this project
// Also we can do this by creating folder in lib/ui_helper
class styleAndTheme extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Style And Theme'),
      ),
      body: Column(
        children: [
          Text(
            'Text 1',
            style: Theme.of(context).textTheme.displayLarge,
          ),
          Text(
            'Text 2',
            style: Theme.of(context).textTheme.displayMedium,
          ),
          Text(
            'Text 3',
            style: Theme.of(context).textTheme.displaySmall,
          ),
          Text(
            'Text adding extra style after theme',
            style: Theme.of(context)
                .textTheme
                .displayLarge!
                .copyWith(color: Colors.orange),
          ),
          Text(
            'using a function in file',
            style: mTextStyle70(),
          ),
          Text(
            'with param fun',
            style: mTextStyleWithDefaultParam(
                textColor: Colors.blue, fontWeight: FontWeight.bold),
          ),
        ],
      ),
    );
  }
}

//used for shadow and enhanced ui
//elevated content
class cardWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
        body: Center(
      child: Card(
        elevation: 20,
        color: Colors.blue,
        shadowColor: Colors.green,
        child: Padding(
          padding: EdgeInsets.all(8.0),
          child: Text(
            "Hello",
            style: TextStyle(fontSize: 20),
          ),
        ),
      ),
    ));
  }
}

class inputTextField extends StatelessWidget {
  var emailText = TextEditingController();
  var passText = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Input Text Field'),
      ),
      body: Center(
          child: Container(
              width: 300,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  TextField(
                    controller: emailText,
                    decoration: InputDecoration(
                        hintText: 'Enter Email',
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(15)),
                        focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(15),
                            borderSide:
                                BorderSide(color: Colors.deepOrange, width: 2)),
                        suffixText: "username exits",
                        prefixIcon: Icon(Icons.email)),
                  ),
                  Container(
                    height: 20,
                  ),
                  passwordField(),
                  ElevatedButton(
                      onPressed: () {
                        String uEmail = emailText.text.toString();
                        String uPass = passText.text.toString();
                        print(uPass);
                        Fluttertoast.showToast(
                          msg: 'email: ' + uEmail + '\npassword: ' + uPass,
                          toastLength: Toast.LENGTH_LONG,
                          gravity: ToastGravity.CENTER,
                        );
                      },
                      child: Text('Login')),
                ],
              ))),
    );
  }
}

class passwordField extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return myStateOfPassField();
  }
}

class myStateOfPassField extends State<passwordField> {
  var obsecureCheck = true;
  @override
  Widget build(BuildContext context) {
    return TextField(
      //keyboardType: TextInputType.phone,
      obscureText: obsecureCheck,
      //obscuringCharacter: '&',
      decoration: InputDecoration(
        hintText: 'Enter Password',
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(15),
        ),
        focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(20),
            borderSide: BorderSide(color: Colors.deepOrange, width: 2)),
        suffixIcon: IconButton(
          icon: Icon(
            Icons.remove_red_eye,
            color: Colors.deepOrange,
          ),
          onPressed: () {
            if (obsecureCheck) {
              obsecureCheck = false;
            } else {
              obsecureCheck = true;
            }
            setState(() {});
          },
        ),
      ),
    );
  }
}

class gridView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GridView.count(
        crossAxisCount: 4,
        crossAxisSpacing: 10,
        mainAxisSpacing: 10,
        children: [
          Container(
            color: Color(0xFF036673),
          ),
          Container(
            color: Color.fromARGB(255, 244, 23, 40),
          ),
          Container(
            color: Colors.yellow,
          ),
          Container(
            color: Colors.grey,
          ),
          Container(
            color: Colors.blue,
          ),
          Container(
            color: Colors.grey,
          ),
          Container(
            color: Colors.black,
          ),
        ],
      ),
    );
  }
}

class callbackFunction extends StatelessWidget {
  callback() {
    print('hello');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('callback Function'),
      ),
      body: ElevatedButton(
        child: Text('clickme!1'),
        onPressed: callback,
      ),
    );
  }
}

//////////////////////////////////    Custom Widget started...    //////////////////////

class customWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('custom Widget'),
      ),
      body: Container(
        child: Column(
          children: [
            categoryItem(),
            contactsItems(),
            subCatItem(),
            bottomMenu(),
          ],
        ),
      ),
    );
  }
}

class categoryItem extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 2,
      child: Container(
        height: 200,
        color: Colors.blue,
        child: ListView.builder(
          itemBuilder: (contex, index) => Padding(
            padding: const EdgeInsets.all(8.0),
            child: SizedBox(
              width: 70,
              child: CircleAvatar(
                backgroundColor: Colors.green,
              ),
            ),
          ),
          itemCount: 10,
          scrollDirection: Axis.horizontal,
        ),
      ),
    );
  }
}

class contactsItems extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 4,
      child: Container(
        child: ListView.builder(
            itemBuilder: (contex, index) => ListTile(
                  leading: CircleAvatar(),
                  title: Text('Name'),
                  subtitle: Text('Mob No ${index + 1}'),
                  trailing: Icon(Icons.delete),
                )),
        color: Colors.orange,
        height: 400,
      ),
    );
  }
}

class subCatItem extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 1,
      child: Container(
        child: ListView.builder(
          itemBuilder: (context, index) => Padding(
            padding: const EdgeInsets.all(11.0),
            child: Container(
              width: 200,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Colors.blue,
              ),
            ),
          ),
          itemCount: 10,
          scrollDirection: Axis.horizontal,
        ),
        color: Colors.grey,
        height: 70,
      ),
    );
  }
}

class bottomMenu extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 1,
      child: Container(
        child: GridView.count(
          crossAxisCount: 3,
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                width: 20,
                color: Colors.blue,
              ),
            ),
          ],
        ),
        color: Colors.green,
        height: 70,
      ),
    );
  }
}

////////////////////////    custom widget ends          //////////////////

//stack widget
//to overlay widget on one anther...
//like relative layout in android
//we can get linear pattern by column and row and relative with the help of stack

class stackWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Stack widget'),
      ),
      body: Container(
        width: 300,
        height: 300,
        child: Stack(
          children: [
            Container(
              width: 200,
              height: 200,
              color: Colors.blue,
            ),
            Positioned(
              left: 20,
              top: 20,
              child: Container(
                width: 200,
                height: 200,
                color: Colors.green,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

//customwidget
//first create folder in lib name as widgets
class customWidget1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('cusomeWidget'),
      ),
      body: RoundedButton(
        btnName: 'clickme',
        textStyle: TextStyle(fontSize: 20),
        callback: () {
          print('clicked');
        },
      ),
    );
  }
}

//wrap widget
//used to encounter overflow problem without scrollwidget

class wrapWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("wrap widget"),
      ),
      body: Wrap(
        //direction: Axis.vertical,
        spacing: 11,
        runSpacing: 11,
        children: [
          Container(
            width: 70,
            height: 70,
            color: Colors.blue,
          ),
          Container(
            width: 70,
            height: 70,
            color: Colors.grey,
          ),
          Container(
            width: 70,
            height: 70,
            color: Colors.yellow,
          ),
          Container(
            width: 70,
            height: 70,
            color: Colors.pink,
          ),
          Container(
            width: 70,
            height: 70,
            color: Colors.black,
          ),
          Container(
            width: 70,
            height: 70,
            color: Colors.orange,
          ),
          Container(
            width: 70,
            height: 70,
            color: Colors.blue,
          ),
          Container(
            width: 70,
            height: 70,
            color: Colors.grey,
          ),
          Container(
            width: 70,
            height: 70,
            color: Colors.yellow,
          ),
          Container(
            width: 70,
            height: 70,
            color: Colors.pink,
          ),
          Container(
            width: 70,
            height: 70,
            color: Colors.black,
          ),
          Container(
            width: 70,
            height: 70,
            color: Colors.orange,
          ),
          Container(
            width: 70,
            height: 70,
            color: Colors.blue,
          ),
          Container(
            width: 70,
            height: 70,
            color: Colors.grey,
          ),
        ],
      ),
    );
  }
}

//when we use only width and height of container not other properties
//sizeBox.expended for max width of parent
//sizeBox.shrink for min width of parent
//sizeBox.square for equal len and width.

class sizeBoxWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('SizeBox'),
      ),
      body: Center(
        child: SizedBox(
          width: 200,
          height: 150,
          child: ElevatedButton(
            onPressed: () {},
            child: Text("click me"),
          ),
        ),
      ),
    );
  }
}

//if we want to change style of text in same row
class richTextWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Rich Text"),
      ),
      body: Center(
        child: RichText(
          text: TextSpan(
            style: TextStyle(color: Colors.grey, fontSize: 20),
            children: [
              TextSpan(text: 'Hello '),
              TextSpan(
                  text: ' welcome',
                  style: TextStyle(
                      color: Colors.blue,
                      fontWeight: FontWeight.bold,
                      fontSize: 30)),
              TextSpan(text: ' to'),
              TextSpan(
                  text: ' Flutter',
                  style: TextStyle(
                      color: Colors.orange,
                      fontWeight: FontWeight.bold,
                      fontSize: 45,
                      fontFamily: 'FontMain')),
            ],
          ),
        ),
      ),
    );
  }
}

//Icons
//include font awsome icons and also icons provided by flutter
//for font Awsome icon we will add dependancy in pubspec.yaml and then pubget
//

class iconWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Icons /font Awsom icons'),
      ),
      body: Center(
          child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(
            Icons.access_alarms,
            size: 100,
            color: Colors.green,
          ),
          FaIcon(
            FontAwesomeIcons.youtube,
            color: Colors.red,
          )
        ],
      )),
    );
  }
}

class positionedWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('positioned widget'),
      ),
      body: Container(
        width: double.infinity,
        height: double.infinity,
        color: Colors.blueGrey,
        child: Stack(
          children: [
            Positioned(
              bottom: 11,
              right: 11,
              child: Container(
                width: 100,
                height: 100,
                color: Colors.white,
              ),
            )
          ],
        ),
      ),
    );
  }
}

//stateless and statefull widgets
//shortcut for creating basic code is 1st write stateless widget and alt+ Enter of stateless and then
//select convert to statefullWidget.

class stateFullWidget extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return myStateOfStateFullWidget();
  }
}

class myStateOfStateFullWidget extends State<stateFullWidget> {
  var count = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("statefull demo"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Count: $count',
              style: TextStyle(fontSize: 25),
            ),
            ElevatedButton(
                onPressed: () {
                  count++;
                  setState(() {
                    //we can write above count++ code in it or leave it blank
                  });
                },
                child: Text('increment'))
          ],
        ),
      ),
    );
  }
}

/////////////////////       calculator      ////////////////////

class calculator extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return calculatorState();
  }
}

class calculatorState extends State<calculator> {
  var num1 = TextEditingController();
  var num2 = TextEditingController();
  var result = "";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Calculator'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Result:' + result,
              style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
            ),
            SizedBox(
              width: 300,
              child: TextField(
                keyboardType: TextInputType.number,
                controller: num1,
                decoration: InputDecoration(
                    hintText: 'Enter Number 1',
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                    )),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: SizedBox(
                width: 300,
                child: TextField(
                  keyboardType: TextInputType.number,
                  controller: num2,
                  decoration: InputDecoration(
                      hintText: 'Enter Number 2',
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10))),
                ),
              ),
            ),
            Wrap(
              spacing: 10,
              runSpacing: 10,
              children: [
                ElevatedButton(
                    onPressed: () {
                      result = (int.parse(num1.text.toString()) +
                              int.parse(num2.text.toString()))
                          .toString();
                      setState(() {});
                    },
                    child: Text('Add (+)')),
                ElevatedButton(
                    onPressed: () {
                      result = (int.parse(num1.text.toString()) -
                              int.parse(num2.text.toString()))
                          .toString();
                      setState(() {});
                    },
                    child: Text('Subtract (-)')),
                ElevatedButton(
                    onPressed: () {
                      result = (int.parse(num1.text.toString()) /
                              int.parse(num2.text.toString()))
                          .toString();
                      setState(() {});
                    },
                    child: Text('Divide (/)')),
                ElevatedButton(
                    onPressed: () {
                      result = (int.parse(num1.text.toString()) *
                              int.parse(num2.text.toString()))
                          .toStringAsFixed(2)
                          .toString();
                      setState(() {});
                    },
                    child: Text('Multiply (x)')),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

//for min and max height and width
class constraintBox extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Constraint Box'),
      ),
      body: Center(
        child: ConstrainedBox(
            constraints: BoxConstraints(
                minHeight: 100, maxHeight: 200, minWidth: 100, maxWidth: 200),
            child: Text(
              'HelloWorldHelloWorldHelloWorldHelloWorldHelloWorldHelloWorldHelloWorld',
              style: TextStyle(fontSize: 25),
            )),
      ),
    );
  }
}

//passing data from one screen to another can be done using constructor

class dataPassing extends StatelessWidget {
  var dataFromPrevious;
  dataPassing(this.dataFromPrevious);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Data Passing'),
      ),
    );
  }
}

//Range slider

class rangeSlider extends StatefulWidget {
  @override
  State<rangeSlider> createState() => _rangeSliderState();
}

class _rangeSliderState extends State<rangeSlider> {
  RangeValues values = RangeValues(0, 100);
  @override
  Widget build(BuildContext context) {
    RangeLabels labels =
        RangeLabels(values.start.toString(), values.end.toString());
    return Scaffold(
        appBar: AppBar(
          title: Text('Range Slider'),
        ),
        body: RangeSlider(
          values: values,
          labels: labels,
          divisions: 100,
          min: 0,
          max: 100,
          activeColor: Colors.green,
          inactiveColor: Colors.green.shade100,
          onChanged: (newValue) {
            values = newValue;
            //getting value
            print(
                'first value ${newValue.start} second value: ${newValue.end}');

            setState(() {});
          },
        ));
  }
}

//animation in container

class animateContainer extends StatefulWidget {
  @override
  State<animateContainer> createState() => _animateContainerState();
}

class _animateContainerState extends State<animateContainer> {
  var _width = 200.0;
  var _height = 100.0;
  bool animated = true;
  var _bgColor = Colors.grey;

  BoxDecoration get _boxDecoration => BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: _bgColor,
      );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Animated Container'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            AnimatedContainer(
              width: _width,
              height: _height,
              duration: Duration(seconds: 2),
              decoration: _boxDecoration,
              curve: Curves.slowMiddle,
            ),
            ElevatedButton(
              child: Text('Animate'),
              onPressed: () {
                setState(() {
                  if (animated) {
                    _height = 200.0;
                    _width = 100.0;
                    _bgColor = Colors.red;
                  } else {
                    _height = 100.0;
                    _width = 200.0;
                    _bgColor = Colors.grey;
                  }
                  animated = !animated;
                });
              },
            )
          ],
        ),
      ),
    );
  }
}

class animatedOpacity extends StatefulWidget {
  @override
  State<animatedOpacity> createState() => _animatedOpacityState();
}

class _animatedOpacityState extends State<animatedOpacity> {
  var _boxWidth = 100.0;
  var _boxHeight = 100.0;
  var myOpacity = 1.0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            AnimatedOpacity(
              opacity: myOpacity, duration: Duration(seconds: 1),
              curve: Curves.linear, //obacity values between 1 and 0.0
              child: Container(
                width: _boxWidth,
                height: _boxHeight,
                color: Colors.blue,
              ),
            ),
            ElevatedButton(
                onPressed: () {
                  myOpacity = 0.0;
                  setState(() {});
                },
                child: Text('Close')),
            ElevatedButton(
                onPressed: () {
                  setState(() {
                    myOpacity = 1.0;
                  });
                },
                child: Text('Open'))
          ],
        ),
      ),
    );
  }
}

//if we want to animate multiple widgets one after disapearing of other.

class crossFade extends StatefulWidget {
  @override
  State<crossFade> createState() => _crossFadeState();
}

class _crossFadeState extends State<crossFade> {
  bool isFirst = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Cross Fade'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            AnimatedCrossFade(
              duration: Duration(seconds: 2),
              firstChild: Container(
                width: 300,
                height: 300,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(150),
                  color: Colors.green,
                ),
              ),
              secondChild: CircleAvatar(
                backgroundImage: AssetImage('assets/images/crops.jpg'),
                radius: 100,
              ),
              crossFadeState: isFirst
                  ? CrossFadeState.showFirst
                  : CrossFadeState.showSecond,
              sizeCurve: Curves.fastOutSlowIn,
              firstCurve: Curves.easeInOut,
              secondCurve: Curves.bounceInOut,
            ),
            Padding(
              padding: const EdgeInsets.only(top: 10),
              child: ElevatedButton(
                  onPressed: () {
                    setState(() {
                      if (isFirst) {
                        isFirst = false;
                      } else {
                        isFirst = true;
                      }
                    });
                  },
                  child: Text('animate')),
            )
          ],
        ),
      ),
    );
  }
}

class heroAnimation extends StatelessWidget {
  var path = 'assets/images/crops.jpg';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Hero Animation'),
      ),
      body: Container(
        child: Center(
          child: InkWell(
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => detailedPage(path.toString())));
            },
            child: Hero(
              tag: 'background',
              child: Image.asset(
                path,
                width: 100,
                height: 100,
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class detailedPage extends StatelessWidget {
  var myPath;
  detailedPage(this.myPath);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Details'),
      ),
      body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: BoxDecoration(color: Color(0x83000000)),
        child: Center(
          child: Hero(
            tag: 'background',
            child: Image.asset(myPath),
          ),
        ),
      ),
    );
  }
}

//listWheel scrollView
//3D list
class listWheel extends StatelessWidget {
  var indexArr = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('ListWheel ScrollView'),
      ),
      body: ListWheelScrollView(
        itemExtent: 150,
        children: indexArr
            .map(
              (value) => Padding(
                padding: const EdgeInsets.all(10),
                child: Container(
                  child: Center(
                      child: Text(
                    '$value',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                        fontWeight: FontWeight.bold),
                  )),
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: Colors.blue,
                    borderRadius: BorderRadius.circular(20),
                  ),
                ),
              ),
            )
            .toList(),
      ),
    );
  }
}
