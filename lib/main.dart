import 'package:flutter/material.dart';

void main() => runApp(PhotoGalleryApp());

class PhotoGalleryApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: PhotoGallery(),
    );
  }
}

class PhotoGallery extends StatelessWidget {
  MySnackBar(message, context) {
    return ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text(message),
        duration: Duration(seconds: 1),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Photo Gallery"),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
              child: Text(
                'Welcome to My Photo Gallery!',
                style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
              child: TextField(
                decoration: InputDecoration(
                    hintText: 'Search for Photos...',
                    border: OutlineInputBorder()),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
              child: GridView.count(
                mainAxisSpacing: 20,
                crossAxisSpacing: 10,
                crossAxisCount: 3,
                shrinkWrap: true,
                children: [
                  InkWell(
                    child: Column(
                      children: [
                        Expanded(
                          child: Image(
                            fit: BoxFit.cover,
                            width: 100,
                            image: NetworkImage(
                                'https://www.rd.com/wp-content/uploads/2021/04/GettyImages-988013222-scaled-e1618857975729.jpg'),
                          ),
                        ),
                        SizedBox(height: 5),
                        Text('Photo 0'),
                      ],
                    ),
                    onTap: () {
                      MySnackBar('Photo 0', context);
                    },
                  ),
                  InkWell(
                    child: Column(
                      children: [
                        Expanded(
                          child: Image(
                            fit: BoxFit.cover,
                            width: 100,
                            image: NetworkImage(
                                'https://i.ytimg.com/vi/l7OznJMvldM/oar2.jpg?sqp=-oaymwEVCJUDENAFSFryq4qpAwcIARUAAIhC&rs=AOn4CLDH7DNnGaaQVS-YzMRG4A_FbBQ9KQ'),
                          ),
                        ),
                        SizedBox(height: 5),
                        Text('Photo 1'),
                      ],
                    ),
                    onTap: () {
                      MySnackBar('Photo 1', context);
                    },
                  ),
                  InkWell(
                    child: Column(
                      children: [
                        Expanded(
                          child: Image(
                            fit: BoxFit.cover,
                            width: 100,
                            image: NetworkImage(
                                'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQJKZCojz9DCdBD6Q33rohTB9rmD0VUko8DzCjSEgAsCgQc3syYN3e3_dOeKbed4awRIPk&usqp=CAU'),
                          ),
                        ),
                        SizedBox(height: 5),
                        Text('Photo 2'),
                      ],
                    ),
                    onTap: () {
                      MySnackBar('Photo 2', context);
                    },
                  ),
                  InkWell(
                    child: Column(
                      children: [
                        Expanded(
                          child: Image(
                            fit: BoxFit.cover,
                            width: 100,
                            image: NetworkImage(
                                'https://e0.pxfuel.com/wallpapers/189/572/desktop-wallpaper-cute-baby-cat-baby-inocent-cute-cat-adorable-cat.jpg'),
                          ),
                        ),
                        SizedBox(height: 5),
                        Text('Photo 3'),
                      ],
                    ),
                    onTap: () {
                      MySnackBar('Photo 3', context);
                    },
                  ),
                  InkWell(
                    child: Column(
                      children: [
                        Expanded(
                          child: Image(
                            fit: BoxFit.cover,
                            width: 100,
                            image: NetworkImage(
                                'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQJT75f8VxlvQnzxJKWcKMjRfBI7Gd_YiWq13kF-nlTdO5HhR1GMfr7tMqY9eneTXVDb1Y&usqp=CAU'),
                          ),
                        ),
                        SizedBox(height: 5),
                        Text('Photo 4'),
                      ],
                    ),
                    onTap: () {
                      MySnackBar('Photo 4', context);
                    },
                  ),
                  InkWell(
                    child: Column(
                      children: [
                        Expanded(
                          child: Image(
                            fit: BoxFit.cover,
                            width: 100,
                            image: NetworkImage(
                                'https://cdn.pixabay.com/photo/2014/03/29/09/17/cat-300572_1280.jpg'),
                          ),
                        ),
                        SizedBox(height: 5),
                        Text('Photo 5'),
                      ],
                    ),
                    onTap: () {
                      MySnackBar('Photo 5', context);
                    },
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 5),
              child: ListTile(
                leading: CircleAvatar(
                  backgroundImage: NetworkImage(
                      'https://images.pexels.com/photos/45201/kitty-cat-kitten-pet-45201.jpeg?cs=srgb&dl=pexels-pixabay-45201.jpg&fm=jpg'),
                ),
                title: Text('Photo 1'),
                subtitle: Text('Description for Photo 1'),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 5),
              child: ListTile(
                leading: CircleAvatar(
                  backgroundImage: NetworkImage(
                      'https://www.rd.com/wp-content/uploads/2019/11/cat-10-e1573844975155.jpg'),
                ),
                title: Text('Photo 2'),
                subtitle: Text('Description for Photo 2'),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 5),
              child: ListTile(
                leading: CircleAvatar(
                  backgroundImage: NetworkImage(
                      'https://img.freepik.com/premium-photo/there-is-white-cat-with-blue-eyes-looking-up-generative-ai_902846-26861.jpg'),
                ),
                title: Text('Photo 3'),
                subtitle: Text('Description for Photo 3'),
              ),
            ),
          ],
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.upload),
        onPressed: () {
          MySnackBar('Photo Uploaded Successfully!', context);
        },
      ),
    );
  }
}
