import 'package:flutter/material.dart';
import 'package:instagram_project/tools.dart';

class lcs extends StatefulWidget {
  const lcs({super.key});

  @override
  State<lcs> createState() => _lcsState();
}

class _lcsState extends State<lcs> {
  bool _isLiked = false;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(8.0),
      decoration: BoxDecoration(
        color: colorBG,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          GestureDetector(
            onDoubleTap: (){
              setState(() {
                _isLiked = !_isLiked;
              });
            },
            child: IconButton(
              icon: Icon(
                _isLiked ? Icons.favorite : Icons.favorite_border,
                color: _isLiked ? Colors.red : colorBlack,
                ),
              onPressed: () {
                print('Like');
              },
            ),
          ),
          IconButton(
            icon: Icon(Icons.comment_outlined, color: colorBlack),
            onPressed: () {
              print('Comment');
            },
          ),
          IconButton(
            icon: Icon(Icons.ios_share, color: colorBlack),
            onPressed: () {
              print('Share');
            },
          ),
        ],
      ),
    );
  }
}