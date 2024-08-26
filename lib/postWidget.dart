import 'package:flutter/material.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:instagram_project/like_comment_share.dart'; 

class PostWidget extends StatefulWidget {
  final String imageUrl;
  final String username;
  final String location;

  const PostWidget({
    required this.imageUrl,
    required this.username,
    required this.location,
  });

  @override
  _PostWidgetState createState() => _PostWidgetState();
}

class _PostWidgetState extends State<PostWidget> {
  final List<String> names = [
    'BigRemms', 'Ijeams', 'Isaiah', 'Seyi', 'Micho',
    'stupidHelen', 'Soyombo', 'Cynthia', 'Roselyn', 'Emmanuel',
    'SirJoshua', 'SirSheriff', 'Chims', 'flames', 'joggs',
    'Paulo', 'dybala', 'Rida', 'Samson', 'Idara',
  ];

  late Map<int, bool> followStatus;
  int? selectedUserIndex; 

  @override
  void initState() {
    super.initState();
    followStatus = { for (int i = 0; i < names.length; i++) i: false };
    selectedUserIndex = names.indexOf(widget.username);
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // User info
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8.0),
            child: Row(
              children: [
                CircleAvatar(
                  backgroundImage: CachedNetworkImageProvider(widget.imageUrl), 
                ),
                SizedBox(width: 8),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(widget.username, style: TextStyle(fontWeight: FontWeight.bold)),
                    Text(widget.location, style: TextStyle(color: Colors.grey)),
                  ],
                ),
                Spacer(), 
                TextButton(
                  style: TextButton.styleFrom(padding: EdgeInsets.zero),
                  onPressed: () {
                    setState(() {
                      followStatus[selectedUserIndex!] = !(followStatus[selectedUserIndex!] ?? false);
                    });
                  },
                  child: Text(
                    (followStatus[selectedUserIndex!] ?? false) ? 'Follow' : 'Following',
                    style: TextStyle(color: Colors.black, fontSize: 12),
                  ),
                ),
                SizedBox(width: 4),
                IconButton(
                  color: Colors.black,
                  iconSize: 18,
                  icon: Icon(Icons.more_horiz),
                  onPressed: () => print('Would be updated'),
                ),
              ],
            ),
          ),
          SizedBox(height: 8),
          // Post image
          CachedNetworkImage(
            imageUrl: widget.imageUrl,
            fit: BoxFit.cover,
            placeholder: (context, url) => Center(child: CircularProgressIndicator()),
            errorWidget: (context, url, error) => Icon(Icons.error),
          ),
          // Actions (like, comment, share)
          Row(
            children: [
              lcs()
            ],
          ),
          // Post description
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8.0),
            child: Text('Post description here...'),
          ),
        ],
      ),
    );
  }
}
