import 'package:flutter/material.dart';
import 'package:awesome_extensions/awesome_extensions.dart';

class AvatarExample extends StatelessWidget {
  const AvatarExample({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Avatar'),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            10.0.heightBox,
            Row(
              children: [
                const AvatarImage(
                    backgroundImage: NetworkImage(
                        'https://mdbootstrap.com/img/Photos/Avatars/img%20%281%29.jpg'),
                    shape: AvatarImageShape.circle),
                10.0.widthBox,
                const AvatarImage(
                    backgroundImage: NetworkImage(
                        'https://mdbootstrap.com/img/Photos/Avatars/img%20%281%29.jpg'),
                    shape: AvatarImageShape.square),
                10.0.widthBox,
                const AvatarImage(
                    backgroundImage: NetworkImage(
                        'https://mdbootstrap.com/img/Photos/Avatars/img%20%281%29.jpg'),
                    shape: AvatarImageShape.standard),
              ],
            ),

            10.0.heightBox,

            Row(
              children: [
                const AvatarImage(
                  backgroundImage: NetworkImage(
                      'https://mdbootstrap.com/img/Photos/Avatars/img%20%281%29.jpg'),
                  shape: AvatarImageShape.standard,
                  size: ImageSize.large,
                  backgroundColor: Colors.red,
                  child: Text('Lucky'),
                ),
                10.0.widthBox,
                const AvatarImage(
                  shape: AvatarImageShape.standard,
                  child: Text('JP'),
                ),
                10.0.widthBox,
                const AvatarImage(
                  shape: AvatarImageShape.circle,
                  backgroundColor: Colors.red,
                  child: Text('JP'),
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
