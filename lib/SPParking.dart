import 'package:flutter/material.dart';
import 'SPBook.dart';

class SPParking extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Sitapaila Parking Details',
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
            color:Colors.black,
          ),
        ),
        backgroundColor: Color.fromARGB(255, 98, 190, 236),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          // Total Slots Button
          _buildTotalSlotsButton(),
          SizedBox(height: 8), // Reduced gap here
          // Available Slots Button
          _buildAvailableSlotsButton(context),
          SizedBox(height: 16), // Maintaining other gaps
          // Map Screenshot
          Expanded(
            child: Image.asset(
              'images/sitapaila.png',
              width: 300,
              height: 300,
            ),

          ),
          SizedBox(height: 16),
          // Book and Cancel Buttons
          _buildButtons(context),
        ],
      ),
    );
  }

  Widget _buildTotalSlotsButton() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 0.0, vertical: 5.0), // Reduced vertical padding,
      child: InkWell(
        onTap: () {}, // Make it unclickable
        child: Card(
          //elevation: 3,
          color: Color.fromARGB(255, 98, 190, 236),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(8),
          ),
          child: Padding(
            padding: EdgeInsets.all(16),
            child: Column(
              children: [
                Text(
                  "Total Slots",
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: 8),
                Text(
                  "15",
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildAvailableSlotsButton(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 3.0, vertical: 5.0), // Reduced vertical padding,
      child: ElevatedButton(
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => SPBook()),
          );
        },
        style: ElevatedButton.styleFrom(
          backgroundColor: Color.fromARGB(255, 98, 190, 236),
          //textStyle: TextStyle(color: Colors.black),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(8),
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Column(
            children: [
              Text(
                "Available Slots",
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                  color:Colors.black,
                ),
              ),
              SizedBox(height: 8),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildButtons(BuildContext context) {
    //take context as a parameter
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          ElevatedButton(
            onPressed: () {
              //book ko function implement
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => SPBook()),
              );
            },
            style: ElevatedButton.styleFrom(
              backgroundColor: Color.fromARGB(255, 98, 190, 236),
              // textStyle: TextStyle(color: Colors.black),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(6),
              ),
              shadowColor: Colors.transparent,
            ),
            child: Text(
                'Book',
             style: TextStyle(
             fontSize: 16,
             fontWeight: FontWeight.bold,
             color:Colors.black,
    ),
            ),
          ),
          ElevatedButton(
            onPressed: () {
              Navigator.pop(context);
              //cancel ko functionality implement
            },
            style: ElevatedButton.styleFrom(
              backgroundColor: Color.fromARGB(255, 98, 190, 236),
              //textStyle: TextStyle(color: Colors.black),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(8),
              ),
              shadowColor: Colors.transparent,
            ),
            child: Text(
              'Cancel',
              style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.bold,
              color:Colors.black,
            ),
            ),
          ),
        ],
      ),
    );
  }
}
