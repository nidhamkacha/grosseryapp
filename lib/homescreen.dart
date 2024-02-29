import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:google_fonts/google_fonts.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  List<String> imagepaths = [
    'assets/images/image-removebg-preview (52) 1.png',
    'assets/images/image-removebg-preview (53) 1.png',
    'assets/images/image-removebg-preview (54) 1.png',
    'assets/images/image-removebg-preview (55) 1.png',
    'assets/images/image-removebg-preview (56) 1.png',
    'assets/images/image-removebg-preview (57) 1.png',
    'assets/images/image-removebg-preview (58) 1.png',
    'assets/images/image-removebg-preview (59) 1.png',
    'assets/images/image-removebg-preview (60) 1.png',
    'assets/images/image-removebg-preview (61) 1.png',
    'assets/images/image-removebg-preview (62) 1.png',
    'assets/images/image-removebg-preview (64) 1.png',
    'assets/images/image-removebg-preview (65) 1.png',
    'assets/images/image-removebg-preview (66) 1.png',
  ];
  List<String> productnames = [
    'Dairy, Br...',
    'Snack & ...',
    'Bakery &...',
    'Instant F...',
    'Tea, Coff...',
    'Fruits & ...',
    'Cold Drin...',
    'Cold Drin...',
    'Cold Drin...',
  ];
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Column(
        children: [
          Container(
            height: 156,
            decoration: BoxDecoration(
                gradient: LinearGradient(colors: [
              Color(0xff971DE2),
              Color(0xffFFE86D),
            ])),
            child: Column(
              children: [
                SizedBox(
                  height: 35,
                ),
                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 30.0),
                      child: Icon(
                        size: 30,
                        Icons.schedule,
                        color: Colors.white,
                      ),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Delivery in 15 minutes",
                          style: GoogleFonts.inter(
                            color: Colors.white,
                            fontSize: 12,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        Text(
                          "H.No. 2834 Street, 784 Sector, Lud...",
                          style: GoogleFonts.inter(
                            color: Colors.white,
                            fontSize: 12,
                            fontWeight: FontWeight.w300,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Container(
                      height: 50,
                      width: 50,
                      decoration: BoxDecoration(
                        color: Colors.black38,
                        shape: BoxShape.circle,
                      ),
                      child: Icon(
                        Icons.shopping_cart_outlined,
                        size: 30,
                        color: Colors.white,
                      ),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Container(
                      height: 50,
                      width: 50,
                      decoration: BoxDecoration(
                        color: Colors.black38,
                        shape: BoxShape.circle,
                      ),
                      child: Icon(
                        Icons.menu,
                        size: 30,
                        color: Colors.white,
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 18,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 25.0),
                  child: Container(
                    height: 42,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Text(
                          "Search for atta, dal, coke and more",
                          style: GoogleFonts.inter(
                            color: Colors.black,
                            fontSize: 14,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                        Icon(
                          Icons.search,
                          size: 30,
                          color: Colors.black38,
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10.0),
            child: Row(
              children: [
                Text(
                  "Shop Popular Categories",
                  style: GoogleFonts.inter(
                    color: Colors.black,
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                SizedBox(
                  width: 100,
                ),
                Text(
                  "View All",
                  style: GoogleFonts.inter(
                    color: Color(0xff1C0D56),
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                SizedBox(
                  width: 2,
                ),
                Icon(Icons.arrow_forward_ios)
              ],
            ),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10.0),
              child: GridView.builder(
                itemCount: 10,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 4,
                    crossAxisSpacing: 10,
                    mainAxisSpacing: 20,
                    mainAxisExtent: 95,
                    childAspectRatio: width / (height / 4)),
                itemBuilder: (context, index) {
                  return Container(
                    // height: 200,
                    width: 92,
                    child: Column(
                      children: [
                        Image.asset(
                          'assets/images/Group 87.png',
                          fit: BoxFit.fill,
                        ),
                        Text("data"),
                      ],
                    ),
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.black38),
                      borderRadius: BorderRadius.circular(10),
                    ),
                  );
                },
              ),
            ),
          )
        ],
      ),
    );
  }
}
