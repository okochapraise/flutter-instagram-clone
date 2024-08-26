import 'package:flutter/material.dart';
import 'package:cached_network_image/cached_network_image.dart'; 
import 'package:instagram_project/tools.dart';

class StoryIG extends StatefulWidget {
  const StoryIG({super.key});

  @override
  State<StoryIG> createState() => _StoryIGState();
}

class _StoryIGState extends State<StoryIG> {
  final List<String> names = [
    'BigRemms', 'Ijeams', 'Isaiah', 'Seyi', 'Micho',
    'stupidHelen', 'Soyombo', 'Cynthia', 'Roselyn', 'Emmanuel',
    'SirJoshua', 'SirSheriff', 'Chims', 'flames', 'joggs',
    'Paulo', 'dybala', 'Rida', 'Samson', 'Idara',
  ];

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


  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 150,
      child: SizedBox(
       
          child: ConstrainedBox(
            constraints: BoxConstraints(maxHeight: 200),
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              padding: EdgeInsets.all(10.0),
              itemCount: names.length,
              itemBuilder: (context, index) {
                return Container(
                  width: 100,
                  margin: EdgeInsets.only(right: 10.0),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        
                        CachedNetworkImage(
                          imageUrl: imageUrls[index],
                          imageBuilder: (context, imageProvider) => CircleAvatar(
                            radius: 35,
                            backgroundColor: Colors.purple,
                            child: CircleAvatar(
                              radius: 30,
                              backgroundImage: imageProvider,
                              backgroundColor: colorGrey, 
                            ),
                          ),
                          placeholder: (context, url) => CircleAvatar(
                            radius: 35,
                            backgroundColor: colorGrey,
                            child: CircularProgressIndicator(), 
                          ),
                          errorWidget: (context, url, error) => CircleAvatar(
                            radius: 35,
                            backgroundColor: colorGrey,
                            child: Icon(Icons.error, color: Colors.red), // Error icon
                          ),
                        ),
                        SizedBox(height: 6.0),
                        Text(
                          names[index],
                          style: TextStyle(
                            fontSize: 12,
                            fontWeight: FontWeight.bold,
                          ),
                          textAlign: TextAlign.center,
                        ),
                      ],
                    ),
                  
                );
              },
            ),
          ),
        
      ),
    );
  }
}
