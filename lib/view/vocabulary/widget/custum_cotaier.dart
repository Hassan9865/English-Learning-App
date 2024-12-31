import 'package:flutter/material.dart';

class CustumCotaier extends StatelessWidget {
  final String title;
  final void Function()? ontap;
  const CustumCotaier({super.key, required this.title, this.ontap});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 18, right: 18, top: 10, bottom: 10),
      child: Container(
        height: MediaQuery.of(context).size.height / 3,
        // width: MediaQuery.of(context).size.width / 13,
        decoration: BoxDecoration(
          // color: Colors.grey,
          borderRadius: BorderRadius.circular(30),
          gradient: LinearGradient(
            colors: [
              const Color.fromARGB(255, 106, 169, 208),
              const Color.fromARGB(255, 210, 215, 219)
            ],
            begin: Alignment.topCenter,
            end: Alignment.bottomRight,
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              title,
              style: TextStyle(
                fontSize: MediaQuery.of(context).size.width / 11,
                fontWeight: FontWeight.bold,
              ),
              textAlign: TextAlign.center,
            ),
            SizedBox(
              height: 10,
            ),
            IconButton(
              onPressed: ontap,
              icon: Icon(
                Icons.volume_up_outlined,
                color: Colors.black45,
                size: MediaQuery.of(context).size.width / 13,
              ),
            )
          ],
        ),
      ),
    );
  }
}
