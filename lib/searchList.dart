import 'package:flutter/material.dart';
import 'package:instagram_project/tools.dart';
import 'package:instagram_project/accProfile.dart';


class InstagramSearchList extends StatefulWidget {
  const InstagramSearchList({super.key});

  @override
  State<InstagramSearchList> createState() => _InstagramSearchListState();
}

class _InstagramSearchListState extends State<InstagramSearchList> {
  final List<String> names = [
    'BigRemms', 'Ijeams', 'Isaiah', 'Seyi', 'Micho',
    'stupidHelen', 'Soyombo', 'Cynthia', 'Roselyn', 'Emmanuel',
  ];

  final List<String> usernames = [
    '_BigRemms', '_Ijeams', 'notIsaiah', 'https.Seyi', 'fwMicho',
    '_stupidHelen', 'heisSoyombo', 'dmCynthia', 'lilRoselyn', 'not_Emmanuel',
  ];

  final List<String> imageUrls = [
    'https://qph.cf2.quoracdn.net/main-qimg-23146fe41a9a9fce8566cacfae27267a-pjlq',
    'https://guardian.ng/wp-content/uploads/2024/03/Diana-Russet-.jpg',
    'https://guardian.ng/wp-content/uploads/2024/03/Temiloluwa-Otedola-.png',
    'https://guardian.ng/wp-content/uploads/2024/03/Priscilla-Ojo-.png',
    'https://guardian.ng/wp-content/uploads/2024/03/Diana-Eneje-.png',
    'https://guardian.ng/wp-content/uploads/2021/09/Tuface-Idibia.jpg',
    'https://upload.wikimedia.org/wikipedia/commons/thumb/1/14/Travis_Scott_-_Openair_Frauenfeld_2019_08.jpg/220px-Travis_Scott_-_Openair_Frauenfeld_2019_08.jpg',
    'https://upload.wikimedia.org/wikipedia/commons/thumb/f/fc/Playboi_Carti_%28cropped%29.jpg/220px-Playboi_Carti_%28cropped%29.jpg',
    'https://upload.wikimedia.org/wikipedia/commons/thumb/3/33/Glaston2024_2806_300624_%28158_of_173%29_%2853836776232%29_%28cropped%29.jpg/220px-Glaston2024_2806_300624_%28158_of_173%29_%2853836776232%29_%28cropped%29.jpg',
    'https://upload.wikimedia.org/wikipedia/commons/thumb/4/42/Billie_Eilish_Vogue_2023.jpg/220px-Billie_Eilish_Vogue_2023.jpg',
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: colorBG, 
        body: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: TextField(
                decoration: InputDecoration(
                  hintText: 'Ask Meta AI or search',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(8.0),
                  ),
                  suffixIcon: Icon(Icons.search),
                ),
              ),
            ),
            Expanded(
              child: ListView.builder(
                itemCount: names.length,
                itemBuilder: (context, index) {
                  return Card(
                      color: colorBG,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.zero, 
                      ),
                      elevation: 0.0,
                      margin: EdgeInsets.zero,
                      child: ListTile(
                        onTap: () {
                          Navigator.of(context).push(
                          MaterialPageRoute(
                          builder: (context) => const AccProfile(),
                        ),
                          );
                        },
                        leading: CircleAvatar(
                          backgroundImage: NetworkImage(imageUrls[index]), 
                        ),
                        title: Text(names[index]),
                        subtitle: Text(usernames[index]),
                        trailing: Icon(Icons.cancel),
                      ),
                    );
                  
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
