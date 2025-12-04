import 'package:flutter/material.dart';
import 'package:untitlewise/widgets/bottom_widget.dart';
import 'package:untitlewise/widgets/small_widget.dart';
import 'package:untitlewise/widgets/big_widget.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.tealAccent,
        title: Row(
          children: [
            Icon(Icons.location_on, color: Colors.green,),
            SizedBox(width: 10,),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Your location",
                  style: TextStyle(fontSize: 10),
                ),
                Row(
                  children: [
                    Text(
                      "San Antione, Tx",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 10,
                      ),
                    ),
                    Icon(Icons.keyboard_arrow_down_rounded),
                  ],
                ),
              ],
            )
          ],
        ),
        actions: [
          CircleAvatar(
            backgroundColor: Colors.white,
            child: Icon(Icons.notifications_none_rounded),
          ),
        ],
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            TextField(
              decoration: InputDecoration(
                hintText: "Search for a servvice",
                prefixIcon: Icon(Icons.search),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(12),
                ),
              ),
            ),
            SizedBox(height: 15),
            Container(
              padding: EdgeInsets.all(15),
              decoration: BoxDecoration(
                color: Colors.teal.shade900,
                borderRadius: BorderRadius.circular(16),
              ),
             child: Row(
               mainAxisAlignment: MainAxisAlignment.spaceBetween,
               children: [
                 Column(
                   crossAxisAlignment: CrossAxisAlignment.start,
                   children: [
                     Text('YOUR SOLUTION,\nONE TAP AWAY',style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 16),),
                     Text('Seamiess Fast & Reliable\nServices at Your Fingertips',style: TextStyle(color: Colors.white),),
                     SizedBox(height: 5,),
              ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.white,
                  foregroundColor: Colors.black,
                  elevation: 0,
                  side: BorderSide(color: Colors.black),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8),
                  ),
                ),
                child: Text('Explore'),
              ),
                   ],
                 ),
                 Image(
                   height: 150,
                     width: 150,
                     image: AssetImage('assets/images/cube.png')),
               ],
             ),
            ),
           SizedBox(height: 15,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Services Categories",
                  style: TextStyle(
                      fontSize: 16, fontWeight: FontWeight.bold),
                ),
                Row(
                  children: [
                    TextButton(
                      onPressed: () {},
                      child: Text("View All", style: TextStyle(color: Colors.teal)),
                    ),
                    Icon(Icons.arrow_forward_ios_sharp,color: Colors.teal,)
                  ],
                ),
              ],
            ),
            SizedBox(height: 20),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
              ServiceCard(icon: Icons.cut_outlined,
                  title: 'Hairdresser'),
                SizedBox(width: 15,),
                ServiceCard(icon: Icons.cleaning_services_outlined,
                    title: 'Cleaning'),
                SizedBox(width: 15,),
                ServiceCard(icon: Icons.format_paint_outlined,
                    title: 'Painting'),
                SizedBox(width: 15,),
                ServiceCard(icon: Icons.local_activity_outlined,
                    title: 'Garding'),
                SizedBox(width: 15,),
                ServiceCard(icon: Icons.local_laundry_service_outlined,
                    title: 'Laundry'),
              ],
            ),
          ),
            SizedBox(height: 15),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Popular Services",
                  style: TextStyle(
                      fontSize: 16, fontWeight: FontWeight.bold),
                ),
                Row(
                  children: [
                    TextButton(
                      onPressed: () {},
                      child: Text("View All", style: TextStyle(color: Colors.teal)),
                    ),
                    Icon(Icons.arrow_forward_ios_sharp,color: Colors.teal,),
                  ],
                ),
              ],
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  ProviderCard(
                    image: "assets/images/garding.jpg",
                    title: "gardinging",
                    rating: 4.8,
                    reviews: 123,
                    price: "\$55 - \$60",
                    providerName: "Alice Brown",
                    providerImage: "assets/images/jardinier.jpg",
                  ),
                  SizedBox(width: 10,),
                  ProviderCard(
                    image: "assets/images/cooking.jpg",
                    title: "cooking",
                    rating: 4.7,
                    reviews: 123,
                    price: "\$45 - \$55",
                    providerName: "Helene Carter",
                    providerImage: "assets/images/cuisinière.jpg",
                  ),
                  SizedBox(width: 10,),
                  ProviderCard(
                    image: "assets/images/laundry.jpg",
                    title: "laundry",
                    rating: 4.5,
                    reviews: 123,
                    price: "\$25 - \$30",
                    providerName: "Paul Smith",
                    providerImage: "assets/images/repasseur.jpg",
                  ),

                ],
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: CustomBottomBar(),
    );
  }
}