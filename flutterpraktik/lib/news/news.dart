import 'package:flutter/material.dart';

class news_1 extends StatelessWidget {
  const news_1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red,
        title: Text('news'),
      ),
      body: SingleChildScrollView(
        child: Container(
          child: Column(
            children: [
              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Text('berita hari ini'),
                  ),
                  Text('pertandingan hari ini'),
                ],
              ),
              Container(
                margin: EdgeInsets.all(10),
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.pink, width: 1.5),
                ),
                child: Column(
                  children: [
                    const Image(
                      image: NetworkImage(
                        'https://www.bing.com/th?id=OIP.O9-IjsO6t-Lxt7gOA2RGOAHaHa&w=206&h=206&c=8&rs=1&qlt=90&o=6&pid=3.1&rm=2',
                      ),
                    ),
                    const Text(
                      'messi mendekati palmerias',
                      style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                    ),
                    Container(
                      color: Colors.red,
                      padding: const EdgeInsets.only(top: 20, bottom: 20, left: 10),
                      alignment: Alignment.centerLeft,
                      child: const Text(
                        'tramsfer',
                        style: TextStyle(fontSize: 20),
                      ),
                    ),
                  ],
                ),
              ),

              const SizedBox(
                height: 10,
              ),
              
              // halaman 1

              Container(
                decoration: BoxDecoration(
                    border: Border.all(color: Colors.orange, width: 1.5)),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    const Row(
                      children: [
                        Image(
                          image: NetworkImage(
                              'https://th.bing.com/th/id/R.a3dfd25534bac245febea2d272a64a20?rik=A%2bNDUx86UtXOUQ&riu=http%3a%2f%2fstatic2.businessinsider.com%2fimage%2f59c57a1325acc25f258b4c48-1190-625%2fthe-doomsday-clock-has-moved-back-to-its-most-alarming-position-in-the-symbols-71-year-history.jpg&ehk=q47vMLVYpRy1PfcKnKJU%2fFdGf1rMmPIAKWq3oWxYk%2fw%3d&risl=&pid=ImgRaw&r=0'),
                          width: 150,
                        ),
                        Text(
                          'Nuklir meledak pada tanggal 10 november \n jadi surabaya \n tidak jadi merdeka, hidup opmmm',
                          style: TextStyle(fontSize: 10),
                        ),
                      ],
                    ),
                    Container(
                      decoration: BoxDecoration(
                          border: Border.all(color: Colors.orange, width: 1.5)),
                      alignment: Alignment.bottomLeft,
                      padding: EdgeInsets.only(left: 10),
                      child: const Column(
                        children: [
                          Text(
                            'aku bwu ',
                            textAlign: TextAlign.start,
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ),

              const SizedBox(height: 10,),
              // halaman 2
                  Container(
                decoration: BoxDecoration(
                    border: Border.all(color: Colors.orange, width: 1.5)),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    const Row(
                      children: [
                        Image(
                          image: NetworkImage(
                              'https://th.bing.com/th/id/R.a3dfd25534bac245febea2d272a64a20?rik=A%2bNDUx86UtXOUQ&riu=http%3a%2f%2fstatic2.businessinsider.com%2fimage%2f59c57a1325acc25f258b4c48-1190-625%2fthe-doomsday-clock-has-moved-back-to-its-most-alarming-position-in-the-symbols-71-year-history.jpg&ehk=q47vMLVYpRy1PfcKnKJU%2fFdGf1rMmPIAKWq3oWxYk%2fw%3d&risl=&pid=ImgRaw&r=0'),
                          width: 150,
                        ),
                        Text(
                          'Nuklir meledak pada tanggal 10 november \n jadi surabaya \n tidak jadi merdeka, hidup opmmm',
                          style: TextStyle(fontSize: 10),
                        ),
                      ],
                    ),
                    Container(
                      decoration: BoxDecoration(
                          border: Border.all(color: Colors.orange, width: 1.5)),
                      alignment: Alignment.bottomLeft,
                      padding: EdgeInsets.only(left: 10),
                      child: const Column(
                        children: [
                          Text(
                            'aku bwu ',
                            textAlign: TextAlign.start,
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
