import 'package:flutter/material.dart';
import 'package:instagram_project/messagesdm.dart';
import 'package:instagram_project/tools.dart';
import 'package:instagram_project/story.dart'; 
import 'package:instagram_project/postWidget.dart';


class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  final List<String> names = [
    'BigRemms', 'Ijeams', 'Isaiah', 'Seyi', 'Micho',
    'stupidHelen', 'Soyombo', 'Cynthia', 'Roselyn', 'Emmanuel',
    'SirJoshua', 'SirSheriff', 'Chims', 'flames', 'joggs',
    'Paulo', 'dybala', 'Rida', 'Samson', 'Idara',
  ];

  final List<String> imageUrls = [
    'https://qph.cf2.quoracdn.net/main-qimg-23146fe41a9a9fce8566cacfae27267a-pjlq',
    'https://static01.nyt.com/images/2020/08/09/arts/09burna-boy3/09burna-boy3-mediumSquareAt3X.jpg',
    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSe4a5kGAIzh3rg7QRoyujAbSDQ3v3QlrRxug&s',
    'https://upload.wikimedia.org/wikipedia/commons/thumb/f/fd/Paw_Paw.jpg/220px-Paw_Paw.jpg',
    'https://upload.wikimedia.org/wikipedia/commons/thumb/c/cd/Timini_Portrait.jpg/220px-Timini_Portrait.jpg',
    'https://upload.wikimedia.org/wikipedia/commons/thumb/2/2e/Jim_Iyke.jpg/220px-Jim_Iyke.jpg',
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

  final List<String> location = [
    'Ambassador of rust', 'Always eating', 'Lekki, Lagos Nigeria', 'Available', 'Lagos, Nigeria',
    'Lagos, Nigeria', 'Lagos, Nigeria', 'Lagos, Nigeria', 'Lagos, Nigeria', 'Lagos, Nigeria',
    'Lagos, Nigeria', 'Lagos, Nigeria', 'Lagos, Nigeria', 'Lagos, Nigeria', 'Lagos, Nigeria',
    'Lagos, Nigeria', 'Lagos, Nigeria', 'Lagos, Nigeria', 'Lagos, Nigeria', 'Lagos, Nigeria',
  ];

  Map<int, bool> followStatus = {};

  @override
  void initState() {
    super.initState();
    
    for (int i = 0; i < names.length; i++) {
      followStatus[i] = false; 
    }
  }




  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: colorBG,
      appBar: AppBar(




   backgroundColor: colorBG,
    leading:        Image.asset(
              'assets/instagram.png',
              height: 100,
              width: 175,
            ) ,
    actions: [   IconButton(
                  icon: Icon(
                    Icons.message,
                    color: colorBlack,
                    size: 30,
                  ),
                  onPressed: () {
                    Navigator.of(context).push(
                    MaterialPageRoute(
                    builder: (context) => const Messages(),
                    ),
                    );
                  },
                ),     IconButton(
                  icon: Icon(
                    Icons.notifications,
                    color: colorBlack,
                    size: 30,
                  ),
                  onPressed: () {
                    print('Notification');
                  },
                ),],
    )























    ,
      body: Stack(
        children: [
          ListView(
            children: [
              StoryIG(), 
              SizedBox(height: 0.5),

              for (int i = 0; i < names.length; i++)
                PostWidget(
                  imageUrl: imageUrls[i],
                  username: names[i],
                  location: location[i],
                ),
              
              SizedBox(height: 0.5),
            ],
          ),
       
        ],
      ),
    );
  }
}

