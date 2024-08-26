import 'package:flutter/material.dart';
import 'package:instagram_project/searchList.dart';

class SearchScreen extends StatefulWidget {
  const SearchScreen({super.key});

  @override
  _SearchScreenState createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {
  // final TextEditingController _searchController = TextEditingController();
  // List<String> _searchResults = [];

  
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
    'https://upload.wikimedia.org/wikipedia/commons/thumb/d/dd/Darey_Portrait_9169.jpg/220px-Darey_Portrait_9169.jpg',
    'https://upload.wikimedia.org/wikipedia/commons/thumb/c/c9/BasketMouth_at_AMVCA_2020_63_%28cropped%29.jpg/220px-BasketMouth_at_AMVCA_2020_63_%28cropped%29.jpg',
    'https://upload.wikimedia.org/wikipedia/commons/thumb/2/25/Nancy_Isime_at_AMVCA_2020_24.jpg/220px-Nancy_Isime_at_AMVCA_2020_24.jpg',
    'https://upload.wikimedia.org/wikipedia/commons/thumb/9/92/Timi_Dakolo_%28cropped%29.png/220px-Timi_Dakolo_%28cropped%29.png',
    'https://upload.wikimedia.org/wikipedia/commons/thumb/1/15/Faces_at_AMVCA_2020_46.jpg/220px-Faces_at_AMVCA_2020_46.jpg',
    'https://upload.wikimedia.org/wikipedia/commons/thumb/e/ec/Karim_Benzema_wearing_Real_Madrid_home_kit_2021-2022.jpg/220px-Karim_Benzema_wearing_Real_Madrid_home_kit_2021-2022.jpg',
    'https://upload.wikimedia.org/wikipedia/commons/thumb/5/5d/20160604_AUT_NED_8876_%28cropped%29.jpg/220px-20160604_AUT_NED_8876_%28cropped%29.jpg',
    'https://upload.wikimedia.org/wikipedia/commons/thumb/b/bf/Luka_Modric_Interview_2021_%28cropped%29.jpg/220px-Luka_Modric_Interview_2021_%28cropped%29.jpg',
    'https://upload.wikimedia.org/wikipedia/commons/thumb/b/ba/Falz.png/230px-Falz.png',
    'https://upload.wikimedia.org/wikipedia/commons/4/40/Kanayo.jpg',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Flexible(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: TextField(
           onChanged: null,
           onTap: () {
             Navigator.of(context).push(
             MaterialPageRoute(
             builder: (context) => const InstagramSearchList(),
              ),
             );
           },
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
              child: GridView.builder(
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 3,
                      crossAxisSpacing: 1,
                      mainAxisSpacing: 1,
                    ),
                    itemCount: 20, 
                    itemBuilder: (context, index) {
                      return Image.network(
              imageUrls[index]
                      );
                    },
                  ),
            )
          ],
            
          
        ),
      ),
    );
  }
}
