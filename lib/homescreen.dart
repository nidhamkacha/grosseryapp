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
    'assets/images/image-removebg-preview (53) 1.png',
    'assets/images/image-removebg-preview (54) 1.png',
    'assets/images/image-removebg-preview (52) 1.png',
    'assets/images/image-removebg-preview (61) 1.png',
    'assets/images/image-removebg-preview (58) 1.png',
    'assets/images/image-removebg-preview (58) 1.png',
    'assets/images/image-removebg-preview (59) 1.png',
    'assets/images/image-removebg-preview (60) 1.png',
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
    'Meat',
    'Baby Care',
    'Cleaning ...',
    'Pet Care',
    'Atta, Ric...',
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
          SizedBox(
            height: 30,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10.0),
            child: GridView.builder(
              shrinkWrap: true,
              padding: EdgeInsets.zero,
              itemCount: productnames.length,
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 4,
                crossAxisSpacing: 10,
                mainAxisSpacing: 20,
                mainAxisExtent: 110,
              ),
              itemBuilder: (context, index) {
                return Container(
                  height: 200,
                  width: 92,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Image.asset(
                        imagepaths[index],
                        fit: BoxFit.cover,
                        scale: 3,
                      ),
                      Text(productnames[index]),
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
          SizedBox(
            height: 36,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: Container(
              height: 129,
              width: double.infinity,
              decoration: BoxDecoration(
                  color: Color.fromARGB(255, 243, 219, 101),
                  borderRadius: BorderRadius.circular(10)),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 12.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Row(
                          children: [
                            Text(
                              "Fresh",
                              style: GoogleFonts.inter(
                                color: Colors.black,
                                fontSize: 18,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                            SizedBox(
                              width: 5,
                            ),
                            Text(
                              "Fruits",
                              style: GoogleFonts.inter(
                                color: Colors.black,
                                fontSize: 18,
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                          ],
                        ),
                        Text(
                          "Get Upto  30% Off",
                          style: GoogleFonts.inter(
                            color: Colors.black,
                            fontSize: 12,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                        TextButton(
                          onPressed: () {
                            // Respond to button press
                          },
                          style: ButtonStyle(
                            backgroundColor: MaterialStateProperty.all<Color>(
                                Color(0xff188806)),
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                "Order Now",
                                style: GoogleFonts.inter(
                                  color: Colors.white,
                                  fontSize: 12,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                              Icon(
                                Icons.arrow_forward_rounded,
                                size: 18,
                                color: Colors.white,
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                  Image.asset('assets/images/mixfruits.png')
                ],
              ),
            ),
          ),
          
        ],
      ),
    );
  }
}
