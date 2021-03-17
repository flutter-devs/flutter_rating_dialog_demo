import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:rating_dialog/rating_dialog.dart';

class DemoScreen extends StatefulWidget {
  @override
  _DemoScreenState createState() => _DemoScreenState();
}

class _DemoScreenState extends State<DemoScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.teal[50],
      appBar: AppBar(
        backgroundColor: Colors.black,
          title: Text('Rating Dialog In Flutter'),
        automaticallyImplyLeading: false,
      ),
      body: Container(
        child: Center(
          child: MaterialButton(
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10.0)),
            color: Colors.cyan,
            padding: EdgeInsets.only(left: 30,right: 30),
            child: Text('Rating Dialog',style: TextStyle
              (color: Colors.white,fontSize: 15),
            ),
            onPressed: _showRatingAppDialog,
          ),
        ),
      ),
    );

  }

  void _showRatingAppDialog() {
    final _ratingDialog = RatingDialog(
      ratingColor: Colors.amber,
      title: 'Rating Dialog In Flutter',
      message: 'Rating this app and tell others what you think.'
          ' Add more description here if you want.',
      image: Image.asset("assets/images/devs.jpg",
        height: 100,),
      submitButton: 'Submit',
      onCancelled: () => print('cancelled'),
      onSubmitted: (response) {
        print('rating: ${response.rating}, '
            'comment: ${response.comment}');

        if (response.rating < 3.0) {
          print('response.rating: ${response.rating}');
        } else {
          Container();
        }
      },
    );

    showDialog(
      context: context,
      barrierDismissible: true,
      builder: (context) => _ratingDialog,
    );
  }

}
