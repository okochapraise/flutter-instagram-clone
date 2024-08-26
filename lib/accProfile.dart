import 'package:flutter/material.dart';
import 'package:instagram_project/tools.dart';

class AccProfile extends StatelessWidget {
  const AccProfile({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: ProfileScreen(index: 0), // Pass the index here
    );
  }
}

class ProfileScreen extends StatelessWidget {
  final int index; // Added index parameter

  ProfileScreen({required this.index}); // Constructor to receive the index

  final List<String> names = [
    'BigRemms', 'Ijeams', 'Isaiah', 'Seyi', 'Micho',
    'stupidHelen', 'Soyombo', 'Cynthia', 'Roselyn', 'Emmanuel',
    'SirJoshua', 'SirSheriff', 'Chims', 'flames', 'joggs',
    'Paulo', 'dybala', 'Rida', 'Samson', 'Idara',
  ];

  final List<String> bioTwo = [
    "Dreamer", "Reader", "Traveler", "Coffee Lover", "Artist",
    "Explorer", "Dog Mom", "Music Fan", "Sushi Lover", "Plant Parent",
    "Innovator", "Fitness Buff", "Movie Enthusiast", "Wine Taster",
    "Sunset Chaser", "Karaoke Star", "Adventurer", "Photographer",
    "Shopaholic", "Gamer"
  ];

  

  final List<String> bio = [
    "Teacher", "Doctor", "Engineer", "Nurse", "Accountant", "Lawyer", "Chef", "Architect",
    "Scientist", "Artist", "Writer", "Mechanic", "Pilot",
    "Software Developer", "Farmer", "Electrician", "Designer", "Pharmacist", "Journalist", "Teacher"
  ];

  final List<String> imageUrls = [
    'https://qph.cf2.quoracdn.net/main-qimg-23146fe41a9a9fce8566cacfae27267a-pjlq',
    'https://upload.wikimedia.org/wikipedia/commons/thumb/1/15/Faces_at_AMVCA_2020_46.jpg/220px-Faces_at_AMVCA_2020_46.jpg',
    'https://upload.wikimedia.org/wikipedia/commons/thumb/e/ec/Karim_Benzema_wearing_Real_Madrid_home_kit_2021-2022.jpg/220px-Karim_Benzema_wearing_Real_Madrid_home_kit_2021-2022.jpg',
    'https://upload.wikimedia.org/wikipedia/commons/thumb/5/5d/20160604_AUT_NED_8876_%28cropped%29.jpg/220px-20160604_AUT_NED_8876_%28cropped%29.jpg',
    'https://upload.wikimedia.org/wikipedia/commons/thumb/b/bf/Luka_Modric_Interview_2021_%28cropped%29.jpg/220px-Luka_Modric_Interview_2021_%28cropped%29.jpg',
    'https://upload.wikimedia.org/wikipedia/commons/thumb/b/ba/Falz.png/230px-Falz.png',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(names[index]),
        backgroundColor: colorBG,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            _buildProfileHeader(),
            _buildProfileInfo(),
            _buildActionButtons(),
            _buildPostsGrid(),
          ],
        ),
      ),
    );
  }

  Widget _buildProfileHeader() {
    return Container(
      padding: EdgeInsets.all(16),
      decoration: BoxDecoration(
        border: Border(
          bottom: BorderSide(color: Colors.grey[300]!, width: 1),
        ),
      ),
      child: Row(
        children: [
          CircleAvatar(
            radius: 50,
            backgroundImage: NetworkImage(imageUrls[index]),
          ),
          SizedBox(width: 16),
          Expanded(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                _buildProfileStat('Posts', '6'),
                _buildProfileStat('Followers', '420'),
                _buildProfileStat('Following', '180'),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildProfileStat(String label, String count) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          count,
          style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
        ),
        Text(
          label,
          style: TextStyle(color: colorBlack),
        ),
      ],
    );
  }

  Widget _buildProfileInfo() {
    return Container(
      padding: EdgeInsets.all(16),
      alignment: Alignment.centerLeft,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            names[index],
            style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
          ),
          SizedBox(height: 8),
          Text(
            bio[index],
            style: TextStyle(color: colorBlack),
          ),
          SizedBox(height: 8),
          Text(
            bioTwo[index],
          ),
        ],
      ),
    );
  }

  Widget _buildActionButtons() {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 8),
      child: Row(
        children: [
          Expanded(
            child: ElevatedButton(
              onPressed: () {
                
              },
              style: ElevatedButton.styleFrom(
                foregroundColor: colorBlack,
              ),
              child: Text('Follow'),
            ),
          ),
          SizedBox(width: 8),
          ElevatedButton(
            onPressed: () {
              
            },
            style: ElevatedButton.styleFrom(
              foregroundColor: colorBlack,
            ),
            child: Text('Share Profile'),
          ),
        ],
      ),
    );
  }

  Widget _buildPostsGrid() {
    return GridView.builder(
      shrinkWrap: true,
      physics: NeverScrollableScrollPhysics(),
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 3,
        crossAxisSpacing: 1,
        mainAxisSpacing: 1,
      ),
      itemCount: imageUrls.length, 
      itemBuilder: (context, index) {
        return Image.network(
          imageUrls[index]
        );
      },
    );
  }
}
