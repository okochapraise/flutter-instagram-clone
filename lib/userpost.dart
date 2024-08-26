import 'package:flutter/material.dart';
import 'package:instagram_project/postWidget.dart'; 

class Userpost extends StatefulWidget {
  const Userpost({super.key});

  @override
  State<Userpost> createState() => _UserpostState();
}

class _UserpostState extends State<Userpost> {
  final List<String> imageUrls = [
    'https://qph.cf2.quoracdn.net/main-qimg-23146fe41a9a9fce8566cacfae27267a-pjlq',
    'https://upload.wikimedia.org/wikipedia/commons/thumb/1/10/Actor_in_Gbomo_Gbomo_Express.png/220px-Actor_in_Gbomo_Gbomo_Express.png',
    'https://upload.wikimedia.org/wikipedia/commons/thumb/4/45/Richard_Mofe-Damijo.png/220px-Richard_Mofe-Damijo.png',
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


  final List<String> usernames = [
    'BigRemms', 'Ijeams', 'Isaiah', 'Seyi', 'Micho',
    'stupidHelen', 'Soyombo', 'Cynthia', 'Roselyn', 'Emmanuel',
    'SirJoshua', 'SirSheriff', 'Chims', 'flames', 'joggs',
    'Paulo', 'dybala', 'Rida', 'Samson', 'Idara',
  ];

  final List<String> locations = [
    'Ambassador of rust', 'Always eating', 'Lekki, Lagos Nigeria', 'Available', 'Lagos, Nigeria',
    'Lagos, Nigeria', 'Lagos, Nigeria', 'Lagos, Nigeria', 'Lagos, Nigeria', 'Lagos, Nigeria',
    'Lagos, Nigeria', 'Lagos, Nigeria', 'Lagos, Nigeria', 'Lagos, Nigeria', 'Lagos, Nigeria',
    'Lagos, Nigeria', 'Lagos, Nigeria', 'Lagos, Nigeria', 'Lagos, Nigeria', 'Lagos, Nigeria',
  ];

  @override
  Widget build(BuildContext context) {
    return ConstrainedBox(
      constraints: BoxConstraints(maxHeight: 500), 
      child: ListView.builder(
        itemCount: imageUrls.length,
        itemBuilder: (context, index) {
          return PostWidget(
            imageUrl: imageUrls[index],
            username: usernames[index],
            location: locations[index],
          );
        },
      ),
    );
  }
}
