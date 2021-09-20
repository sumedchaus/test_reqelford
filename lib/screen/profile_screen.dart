import 'package:flutter/material.dart';
import 'package:flutter_shapes/flutter_shapes.dart';
import 'package:test_reqelford/widgets/my_drawer.dart';

class ProfileScreen extends StatelessWidget {
  static final String id = '/profile';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      endDrawer: MyDrawer(),
      appBar: AppBar(
        title: Text("Profile"),
      ),
      body: SingleChildScrollView(
        child: Container(
          color: Colors.deepPurple[100],
          padding: EdgeInsets.all(30.0),
          child: Column(
            children: [
              ProfileCard(
                color: Colors.orange[300],
                color1: Colors.pink[300],
                title: "Demo Student",
                icon: Icons.person,
              ),
              SizedBox(
                height: 15,
              ),
              ProfileCard(
                color: Colors.blue[100],
                color1: Colors.blue[500],
                title: "Reqelford International School",
                icon: Icons.person,
              ),
              SizedBox(
                height: 15,
              ),
              ProfileCard(
                color: Colors.green[100],
                title: "Parents",
                icon: Icons.wc,
                color1: Colors.green[300],
              ),
              SizedBox(
                height: 15,
              ),
              ProfileCard(
                color: Colors.purple[300],
                title: "Address",
                icon: Icons.home,
                color1: Colors.purple[600],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class ProfileCard extends StatelessWidget {
  final Color color;
  final Color color1;
  final String title;
  final IconData icon;

  ProfileCard({this.color, this.icon, this.title, this.color1});

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 10,
      child: CustomPaint(
        painter: MyPainter(),
        child: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [
                color,
                color1,
              ],
            ),
          ),
          padding: EdgeInsets.all(30.0),
          width: double.infinity,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              HeadingProfile(title, icon),
              SizedBox(
                height: 15,
              ),
              Text(
                "Gender",
                textAlign: TextAlign.start,
                style: TextStyle(
                    fontWeight: FontWeight.w500,
                    fontSize: 18.0,
                    color: Colors.grey),
              ),
              SizedBox(
                height: 5,
              ),
              Text(
                "Male",
                textAlign: TextAlign.start,
                style: TextStyle(
                    fontWeight: FontWeight.w500,
                    fontSize: 18.0,
                    color: Colors.white),
              ),
              SizedBox(
                height: 15,
              ),
              Text(
                "Date of Birth",
                textAlign: TextAlign.start,
                style: TextStyle(
                    fontWeight: FontWeight.w500,
                    fontSize: 18.0,
                    color: Colors.grey),
              ),
              SizedBox(
                height: 5,
              ),
              Text(
                "20-Nov-2012",
                textAlign: TextAlign.start,
                style: TextStyle(
                    fontWeight: FontWeight.w500,
                    fontSize: 18.0,
                    color: Colors.white),
              ),
              SizedBox(
                height: 15,
              ),
              Text(
                "Blood Group",
                textAlign: TextAlign.start,
                style: TextStyle(
                    fontWeight: FontWeight.w500,
                    fontSize: 18.0,
                    color: Colors.grey),
              ),
              SizedBox(
                height: 5,
              ),
              Text(
                "O +ve",
                textAlign: TextAlign.start,
                style: TextStyle(
                    fontWeight: FontWeight.w500,
                    fontSize: 18.0,
                    color: Colors.white),
              ),
              SizedBox(
                height: 15,
              ),
              Text(
                "Mobile",
                textAlign: TextAlign.start,
                style: TextStyle(
                    fontWeight: FontWeight.w500,
                    fontSize: 18.0,
                    color: Colors.grey),
              ),
              SizedBox(
                height: 5,
              ),
              Text(
                "5555555555",
                textAlign: TextAlign.start,
                style: TextStyle(
                    fontWeight: FontWeight.w500,
                    fontSize: 18.0,
                    color: Colors.white),
              ),
              SizedBox(
                height: 15,
              ),
              Text(
                "Email",
                textAlign: TextAlign.start,
                style: TextStyle(
                    fontWeight: FontWeight.w500,
                    fontSize: 18.0,
                    color: Colors.grey),
              ),
              SizedBox(
                height: 5,
              ),
              Text(
                "sk@sk.com",
                textAlign: TextAlign.start,
                style: TextStyle(
                    fontWeight: FontWeight.w500,
                    fontSize: 18.0,
                    color: Colors.white),
              ),
              SizedBox(
                height: 15,
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class HeadingProfile extends StatelessWidget {
  final String title;
  final IconData icon;

  HeadingProfile(this.title, this.icon);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Flexible(
          child: Text(
            title,
            textAlign: TextAlign.start,
            style: TextStyle(
                fontWeight: FontWeight.w400,
                fontSize: 26.0,
                color: Colors.white),
          ),
        ),
        Icon(
          icon,
          color: Colors.white,
        ),
      ],
    );
  }
}

class MyPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final height = size.height;
    final width = size.width;
    Paint paint = Paint()..color = Colors.white10;
    paint.color.blue;

    // ..style = PaintingStyle.stroke;

    Shapes shapes = Shapes(
        canvas: canvas,
        radius: 280,
        paint: paint,
        center: Offset(
          width,
          height * 0.35,
        ),
        angle: 0);

    shapes.drawCircle(); // method name
    shapes.drawType(ShapeType.Circle); // enum
    shapes.draw('Circle');

    Paint paint1 = Paint()..color = Colors.white10;
    // ..style = PaintingStyle.stroke;

    Shapes shapes1 = Shapes(
        canvas: canvas,
        radius: 280,
        paint: paint1,
        center: Offset(
          width * 0.5,
          height,
        ),
        angle: 0);

    shapes1.drawCircle(); // method name
    shapes1.drawType(ShapeType.Circle); // enum
    shapes1.draw('Circle'); // string
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return oldDelegate != this;
  }
}
