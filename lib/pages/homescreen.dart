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
  var data = [
    {
      "imagepath": 'assets/images/image-removebg-preview (53) 1.png',
      "productnames": 'Dairy, Br...',
    },
    {
      "imagepath": 'assets/images/image-removebg-preview (54) 1.png',
      "productnames": 'Snack & ...',
    },
    {
      "imagepath": 'assets/images/image-removebg-preview (52) 1.png',
      "productnames": 'Bakery &...',
    },
    {
      "imagepath": 'assets/images/image-removebg-preview (61) 1.png',
      "productnames": 'Instant F...',
    },
    {
      "imagepath": 'assets/images/image-removebg-preview (58) 1.png',
      "productnames": 'Dairy, Br...',
    },
    {
      "imagepath": 'assets/images/image-removebg-preview (58) 1.png',
      "productnames": 'Tea, Coff...',
    },
    {
      "imagepath": 'assets/images/image-removebg-preview (59) 1.png',
      "productnames": 'Fruits & ...',
    },
    {
      "imagepath": 'assets/images/image-removebg-preview (60) 1.png',
      "productnames": 'Cold Drin...',
    },
    {
      "imagepath": 'assets/images/image-removebg-preview (62) 1.png',
      "productnames": 'Meat',
    },
    {
      "imagepath": 'assets/images/image-removebg-preview (64) 1.png',
      "productnames": 'Baby Care',
    },
    {
      "imagepath": 'assets/images/image-removebg-preview (65) 1.png',
      "productnames": 'Pet Care',
    },
    {
      "imagepath": 'assets/images/image-removebg-preview (66) 1.png',
      "productnames": 'Atta, Ric...',
    },
  ];
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
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
                      color: Colors.white,
                      height: 42,
                      child: TextField(
                        decoration: InputDecoration(
                          labelText: 'Search for atta, dal, coke and more',
                          border: OutlineInputBorder(),
                          suffixIcon: Icon(Icons.search),
                        ),
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
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: SizedBox(
                height: 420,
                child: GridView(
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 4,
                    crossAxisSpacing: 10,
                    mainAxisSpacing: 20,
                    mainAxisExtent: 100,
                  ),
                  children: [
                    ...data.map((e) => Container(
                          height: 200,
                          width: 92,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Image.asset(
                                e["imagepath"].toString(),
                                fit: BoxFit.cover,
                                scale: 3,
                              ),
                              Text(e["productnames"].toString()),
                            ],
                          ),
                          decoration: BoxDecoration(
                            border: Border.all(color: Colors.black38),
                            borderRadius: BorderRadius.circular(10),
                          ),
                        ))
                  ],
                ),
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
                          ),
                        ],
                      ),
                    ),
                    Image.asset('assets/images/mixfruits.png')
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 28,
            ),
            Container(
              height: 60,
              width: double.infinity,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  TextButton(
                    onPressed: () {
                      // Respond to button press
                    },
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Icon(
                          Icons.home_outlined,
                          size: 25,
                          color: Colors.green,
                        ),
                        Text(
                          "Home",
                          style: GoogleFonts.inter(
                            color: Color(0xff188806),
                            fontSize: 12,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ],
                    ),
                  ),
                  TextButton(
                    onPressed: () {
                      // Respond to button press
                    },
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Icon(
                          Icons.storefront_sharp,
                          size: 25,
                          color: Colors.black,
                        ),
                        Text(
                          "Shop",
                          style: GoogleFonts.inter(
                            color: Colors.black,
                            fontSize: 12,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ],
                    ),
                  ),
                  TextButton(
                    onPressed: () {
                      // Respond to button press
                    },
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Icon(
                          Icons.location_on_outlined,
                          size: 25,
                          color: Colors.black,
                        ),
                        Text(
                          "Stores",
                          style: GoogleFonts.inter(
                            color: Colors.black,
                            fontSize: 12,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ],
                    ),
                  ),
                  TextButton(
                    onPressed: () {
                      // Respond to button press
                    },
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Icon(
                          Icons.shopping_basket_outlined,
                          size: 25,
                          color: Colors.black,
                        ),
                        Text(
                          "Cart",
                          style: GoogleFonts.inter(
                            color: Colors.black,
                            fontSize: 12,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ],
                    ),
                  ),
                  TextButton(
                    onPressed: () {
                      // Respond to button press
                    },
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Icon(
                          Icons.person_outline_outlined,
                          size: 25,
                          color: Colors.black,
                        ),
                        Text(
                          "Profile",
                          style: GoogleFonts.inter(
                            color: Colors.black,
                            fontSize: 12,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
