import 'package:flutter/material.dart';

class ViewTwo extends StatefulWidget {
  const ViewTwo({super.key});

  @override
  State<ViewTwo> createState() => _ViewTwoState();
}

class _ViewTwoState extends State<ViewTwo> {
  @override
  Widget build(BuildContext context) {
    List images = [
      'images/1.jpg',
      'images/2.jpg',
      'images/3.jpg',
    ];

    List names = [
      'Jubin Nautiyal',
      'Atif Aslam',
      'Arjit Singh',
    ];

    List songs = [
      '200+ Songs',
      '150+ Songs',
      '250+ Songs',
    ];

    List bollwood = [
      'images/im.jpg',
      'images/ab.jpg',
      'images/ram.jpg',
      'images/sa.jpg',
      'images/sh.jpg',
    ];

    return Scaffold(
      appBar: AppBar(
        leading: const Icon(
          Icons.menu,
          color: Colors.black,
        ),
        actions: const [
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 25.0),
            child: Icon(
              Icons.search,
              color: Colors.black,
            ),
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15.0),
        child: ListView(physics: const BouncingScrollPhysics(), children: [
          const SizedBox(
            height: 60,
          ),
          const Text(
            'Rocking Week',
            style: TextStyle(
                color: Colors.orange,
                fontSize: 50,
                fontWeight: FontWeight.bold),
          ),
          Text(
            '2024 Top Songs Hang On',
            style: TextStyle(
              fontSize: 20,
              color: Colors.black.withOpacity(0.5),
            ),
          ),
          const SizedBox(
            height: 30,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Text(
                'Explore',
                style: TextStyle(
                    fontSize: 40,
                    color: Colors.black,
                    fontWeight: FontWeight.bold),
              ),
              Icon(
                Icons.local_fire_department,
                size: 30,
                color: Colors.black.withOpacity(0.5),
              )
            ],
          ),
          const SizedBox(
            height: 30,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Text(
                'Recommended',
                style: TextStyle(
                    color: Colors.orange,
                    fontSize: 20,
                    fontWeight: FontWeight.bold),
              ),
              Text(
                'Show 2024',
                style: TextStyle(
                  fontSize: 15,
                  color: Colors.black.withOpacity(0.5),
                ),
              ),
              Text(
                'New Songs',
                style: TextStyle(
                  fontSize: 15,
                  color: Colors.black.withOpacity(0.5),
                ),
              )
            ],
          ),
          const SizedBox(
            height: 30,
          ),
          SizedBox(
            height: 300,
            child: ListView.builder(
                shrinkWrap: true,
                physics: const BouncingScrollPhysics(),
                scrollDirection: Axis.horizontal,
                itemCount: 3,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.only(left: 13),
                    child: Column(
                      children: [
                        Container(
                          height: 220,
                          width: 180,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(14),
                            color: Colors.red,
                            image: DecorationImage(
                              fit: BoxFit.cover,
                              image: AssetImage(
                                images[index],
                              ),
                            ),
                          ),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        Text(
                          names[index],
                          style: const TextStyle(
                              fontSize: 20, fontWeight: FontWeight.bold),
                        ),
                        Text(
                          songs[index],
                          style: TextStyle(
                            fontSize: 15,
                            color: Colors.black.withOpacity(0.7),
                          ),
                        ),
                      ],
                    ),
                  );
                }),
          ),
          const Padding(
            padding: EdgeInsets.only(left: 12),
            child: Row(
              children: [
                Text(
                  'Top Songs',
                  style: TextStyle(
                      fontSize: 30,
                      color: Colors.black,
                      fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  width: 5,
                ),
                Icon(
                  Icons.music_note,
                  color: Colors.orange,
                  size: 25,
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 30,
          ),
          ListView.builder(
              itemCount: bollwood.length,
              shrinkWrap: true,
              physics: const BouncingScrollPhysics(),
              itemBuilder: (context, index) {
                return Container(
                  margin: const EdgeInsets.all(7),
                  height: 250,
                  width: 200,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                      image:
                          DecorationImage(
                            fit: BoxFit.cover,
                              image: AssetImage(bollwood[index]))),
                );
              })
        ]),
      ),
    );
  }
}
