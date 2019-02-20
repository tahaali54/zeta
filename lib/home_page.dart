import 'package:flutter/material.dart';
import 'package:zeta/login_page.dart';

class HomePage extends StatelessWidget {
  int _selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        bottomNavigationBar: BottomNavigationBar(
          items: <BottomNavigationBarItem>[
            BottomNavigationBarItem(
                icon: Icon(Icons.dashboard), title: Text('Dashboard')),
            BottomNavigationBarItem(
                icon: Icon(Icons.input), title: Text('Deposit')),
            BottomNavigationBarItem(
                icon: Icon(Icons.arrow_forward), title: Text('Send')),
          ],
          currentIndex: _selectedIndex,
          fixedColor: Theme.of(context).primaryColor,
          onTap: (int index) => {},
        ),
        backgroundColor: Colors.white,
        appBar: AppBar(
          actions: <Widget>[
            IconButton(
              color: Colors.black,
              icon: Icon(Icons.account_circle),
              onPressed: () {
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(builder: (context) => LoginPage()),
                );
              },
            ),
          ],
          elevation: 0.0,
          backgroundColor: Colors.white,
          title: Center(
            child: Container(
              alignment: Alignment(0.25, 0),
              height: 24,
              child: Image.asset("assets/logo.png"),
            ),
          ),
          bottom: PreferredSize(
            preferredSize: Size.fromHeight(152.0),
            child: Column(
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.only(bottom: 20.0),
                  child: Text(
                    'BALANCE',
                    style: TextStyle(color: Color.fromARGB(255, 74, 69, 91)),
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    CircleAvatar(
                      backgroundImage: AssetImage("assets/flag.png"),
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 4.0),
                    ),
                    Text(
                      'PKR',
                      style: TextStyle(
                          color: Theme.of(context).primaryColor,
                          fontSize: 16.0),
                    )
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 8.0, bottom: 16.0),
                  child: Text(
                    '1550.00',
                    style: TextStyle(
                        color: Theme.of(context).primaryColor,
                        fontWeight: FontWeight.bold,
                        fontSize: 24.0),
                  ),
                ),
              ],
            ),
          ),
        ),
        body: Column(
          children: <Widget>[
            Row(
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.only(left: 16.0),
                  child: Text(
                    'Transactions',
                    style:
                        TextStyle(fontWeight: FontWeight.bold, fontSize: 16.0),
                  ),
                ),
                Expanded(
                  child: Container(),
                ),
                FlatButton(
                  child: Text(
                    'SEE ALL',
                    style: TextStyle(
                        color: Theme.of(context).primaryColor,
                        fontWeight: FontWeight.bold),
                  ),
                  onPressed: () {},
                )
              ],
            ),
            Divider(height: 0.0),
            Row(
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.only(left: 16.0),
                  child: Icon(
                    Icons.access_time,
                    color: Theme.of(context).accentColor,
                  ),
                ),
                Expanded(
                  child: ListTile(
                    title: Row(
                      children: <Widget>[
                        Text('Taha Ali +923092330290'),
                        Expanded(
                          child: Container(),
                        ),
                        Text('PKR -10.00')
                      ],
                    ),
                    subtitle: Row(
                      children: <Widget>[
                        Text('18 Feb 19 21:01'),
                        Expanded(
                          child: Container(),
                        ),
                        Text('Send')
                      ],
                    ),
                  ),
                ),
              ],
            ),
            Divider(height: 0.0),
            Row(
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.only(left: 16.0),
                  child: Icon(
                    Icons.check,
                    color: Colors.green,
                  ),
                ),
                Expanded(
                  child: ListTile(
                    title: Row(
                      children: <Widget>[
                        Text('MASTERCARD *7003'),
                        Expanded(
                          child: Container(),
                        ),
                        Text('PKR 15.00')
                      ],
                    ),
                    subtitle: Row(
                      children: <Widget>[
                        Text('17 Feb 19 00:0'),
                        Expanded(
                          child: Container(),
                        ),
                        Text('Deposit')
                      ],
                    ),
                  ),
                ),
              ],
            ),
            Divider(height: 0.0),
          ],
        ),
      ),
    );
  }
}
