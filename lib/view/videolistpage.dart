import 'package:flutter/material.dart';
import 'package:stardust/model/videopage.dart';

class VideoListPage extends StatelessWidget {
  final List<String> videoUrls = [
    // Add your 6 video URLs here
    'https://firebasestorage.googleapis.com/v0/b/serious-truck-411714.appspot.com/o/F1%20%5BBA03F48%5D.mp4?alt=media&token=f66edf7a-00d0-49ff-9086-6d4089112cd4',
    'https://firebasestorage.googleapis.com/v0/b/serious-truck-411714.appspot.com/o/F2%20%5B7883784%5D.mp4?alt=media&token=7f353025-a4d1-4fd0-8da4-2f29adea10c4',
    'https://firebasestorage.googleapis.com/v0/b/serious-truck-411714.appspot.com/o/F3%20%5B5303368%5D.mp4?alt=media&token=be044efd-9bbd-4919-a16d-8f4b7450e3d9',
    'https://firebasestorage.googleapis.com/v0/b/serious-truck-411714.appspot.com/o/F4%20%5B9AAF50D%5D.mp4?alt=media&token=be58b9f9-c057-442a-9268-765357a019dc',
    'https://firebasestorage.googleapis.com/v0/b/serious-truck-411714.appspot.com/o/F5%20%5B2B4730F%5D.mp4?alt=media&token=f730e85d-2e88-443f-ba6f-e3e7f51884bc',
    'https://firebasestorage.googleapis.com/v0/b/serious-truck-411714.appspot.com/o/InShot_20240219_015709391.mp4?alt=media&token=06a1db0d-2f23-4ca9-8dc7-bdefc93e1e57',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.purple.withOpacity(0.3), // Adjust the opacity value as needed
        title: Text(' '),
      ),

      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/vidlist.jpeg'),
            fit: BoxFit.cover,
          ),
        ),
        child: Stack(
          children: [
            Positioned(
              top: 600,
              left: 120,
              child: _buildVideoButton(context, videoUrls[0], 'Video 1'),
            ),
            Positioned(
              top: 490,
              right: 50,
              child: _buildVideoButton(context, videoUrls[1], 'Video 2'),
            ),
            Positioned(
              top: 370,
              right: 10,
              child: _buildVideoButton(context, videoUrls[2], 'Video 3'),
            ),
            Positioned(
              top: 255,
              right: 50,
              child: _buildVideoButton(context, videoUrls[3], 'Video 4'),
            ),
            Positioned(
              top: 165,
              left: 120,
              child: _buildVideoButton(context, videoUrls[4], 'Video 5'),
            ),
            Positioned(
              top: 50,
              left: 20,
              child: _buildVideoButton(context, videoUrls[5], 'Video 6'),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildVideoButton(BuildContext context, String videoUrl, String label) {
    return ElevatedButton(
      onPressed: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => VideoPage(videoUrl: videoUrl),
          ),
        );
      },
      child: Text(label),
    );
  }
}
