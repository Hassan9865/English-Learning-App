import 'package:flutter/material.dart';

class CustomCard extends StatelessWidget {
  final String title;
  final String description;
  final String? imageUrl;
  const CustomCard(
      {super.key,
      required this.title,
      required this.description,
      this.imageUrl});

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
      elevation: 5,
      child: Container(
        width: MediaQuery.of(context).size.width * 0.8,
        // height: MediaQuery.of(context).size.height / 8,
        decoration: BoxDecoration(
          border: Border.all(
            color: Colors.deepPurple,
            width: 2.0,
          ),
          borderRadius: BorderRadius.circular(15),
          // image: DecorationImage(
          //   // image: AssetImage(imageUrl) ,
          //   fit: BoxFit.cover,
          //   colorFilter: ColorFilter.mode(
          //       Colors.black.withOpacity(0.3), BlendMode.darken),
          // ),
        ),
        child: Padding(
          padding: EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                title,
                style: TextStyle(
                    color: Colors.deepPurple,
                    fontSize: MediaQuery.of(context).size.width / 16,
                    fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.width / 50,
              ),
              Text(
                description,
                style: TextStyle(
                  color: Colors.black,
                  fontSize: MediaQuery.of(context).size.width / 20,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

  // Widget _buildCard({
  //   required String title,
  //   required String description,
  //   required String imageUrl,
  // }) {
  //   return Card(
  //     shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
  //     elevation: 5,
  //     child: Container(
  //       width: 250,
  //       decoration: BoxDecoration(
  //         borderRadius: BorderRadius.circular(15),
  //         image: DecorationImage(
  //           image: AssetImage(
  //             imageUrl,
  //           ),
  //           fit: BoxFit.cover,
  //           colorFilter: ColorFilter.mode(
  //               Colors.black.withOpacity(0.3), BlendMode.darken),
  //         ),
  //       ),
  //       child: Padding(
  //         padding: EdgeInsets.all(16.0),
  //         child: Column(
  //           mainAxisAlignment: MainAxisAlignment.center,
  //           crossAxisAlignment: CrossAxisAlignment.start,
  //           children: [
  //             Text(
  //               title,
  //               style: TextStyle(
  //                   color: Colors.amber,
  //                   fontSize: MediaQuery.of(context).size.width / 16,
  //                   fontWeight: FontWeight.bold),
  //             ),
  //             SizedBox(height: 8),
  //             Text(
  //               description,
  //               style: TextStyle(
  //                 color: Colors.white,
  //                 fontSize: MediaQuery.of(context).size.width / 16,
  //               ),
  //             ),
  //           ],
  //         ),
  //       ),
  //     ),
  //   );