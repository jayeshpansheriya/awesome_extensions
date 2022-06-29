import 'package:flutter/material.dart';
import 'package:awesome_extensions/awesome_extensions.dart';

class AvatarExample extends StatelessWidget {
  const AvatarExample({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Avatar'),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            10.0.heightBox,
            Row(
              children: [
                AvatarImage(
                    backgroundImage: NetworkImage(
                        'https://mdbootstrap.com/img/Photos/Avatars/img%20%281%29.jpg'),
                    shape: AvatarImageShape.circle),
                10.0.widthBox,
                AvatarImage(
                    backgroundImage: NetworkImage(
                        'https://mdbootstrap.com/img/Photos/Avatars/img%20%281%29.jpg'),
                    shape: AvatarImageShape.square),
                10.0.widthBox,
                AvatarImage(
                    backgroundImage: NetworkImage(
                        'https://mdbootstrap.com/img/Photos/Avatars/img%20%281%29.jpg'),
                    shape: AvatarImageShape.standard),
              ],
            ),

            10.0.heightBox,

            Row(
              children: [
                AvatarImage(
                  backgroundImage: NetworkImage(
                      'https://mdbootstrap.com/img/Photos/Avatars/img%20%281%29.jpg'),
                  shape: AvatarImageShape.standard,
                  size: ImageSize.large,
                  child: Text('Lucky'),
                  backgroundColor: Colors.red,
                ),
                10.0.widthBox,
                AvatarImage(
                  shape: AvatarImageShape.standard,
                  child: Text('JP'),
                ),
                10.0.widthBox,
                AvatarImage(
                  shape: AvatarImageShape.circle,
                  child: Text('JP'),
                  backgroundColor: Colors.red,
                  // borderRadius: BorderRadius.circular(10),
                ),
              ],
            ),

            10.0.heightBox,
            // Avatar(
            //   image: Image.asset('images/avatar.jpeg', scale: 2),
            //   width: 75,
            //   height: 75,
            // ),
            // 10.0.heightBox,
            // Avatar(
            //   image: Image.asset('images/avatar.jpeg', scale: 2.4),
            //   width: 50,
            //   height: 50,
            // ),
            // 10.0.heightBox,
            // Avatar(
            //   color: Color(0xFFD13438),
            //   text: 'CE',
            //   textStyle: TextStyle(fontSize: 17, color: Colors.white),
            // ),
            // 10.0.heightBox,
            // Avatar(
            //   color: Color(0xFF881798),
            //   width: 50,
            //   height: 50,
            //   radius: 5,
            //   text: 'CE',
            //   textStyle: TextStyle(fontSize: 17, color: Colors.white),
            // ),
          ],
        ),
      ),
    );
  }
}
