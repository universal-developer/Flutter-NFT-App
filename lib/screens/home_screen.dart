import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:dot_navigation_bar/dot_navigation_bar.dart';
import '../colors.dart';
import '../components/product_card.dart';
import '../components/scrollable_product.dart';
import '../components/top_seller.dart';

bool isFavourite = true;

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  var _selectedTab = _SelectedTab.home;

  void _handleIndexChanged(int i) {
    setState(() {
      _selectedTab = _SelectedTab.values[i];
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
      appBar: AppBar(
        elevation: 0,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            InkWell(
              onTap: () => {
                print('Logo reacts'),
              },
              child: Container(
                child: Row(
                  children: const [
                    Image(
                      image: AssetImage('assets/logo.png'),
                      width: 50,
                    ),
                    Text(
                      'nftApp',
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            IconButton(
              onPressed: () => {},
              icon: const Icon(CupertinoIcons.bell),
              color: Colors.black,
              splashRadius: 20,
            ),
          ],
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding:
              const EdgeInsets.only(top: 30, bottom: 30, left: 30, right: 0),
          child: Column(
            children: [
              const Align(
                alignment: Alignment.topLeft,
                child: Text(
                  'Trending',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                  ),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              SizedBox(
                height: 380,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    ScrollableProduct(
                      image: 'assets/nfts/first_nft.png',
                      itemName: 'Example',
                      creatorName: 'whoAmI',
                      ownerName: 'whoAmI',
                      price: 2.2,
                      isFavorite: false,
                    ),
                    const SizedBox(
                      width: 20,
                    ),
                    ScrollableProduct(
                      image: 'assets/nfts/second_nft.png',
                      itemName: 'Example',
                      creatorName: 'whoAmI',
                      ownerName: 'adadadadda',
                      price: 2.2,
                      isFavorite: false,
                    ),
                    const SizedBox(
                      width: 20,
                    ),
                    ScrollableProduct(
                      image: 'assets/nfts/third_nft.png',
                      itemName: 'Example',
                      creatorName: 'whoAmI',
                      ownerName: 'adadadadda',
                      price: 2.2,
                      isFavorite: false,
                    ),
                    const SizedBox(
                      width: 20,
                    ),
                    ScrollableProduct(
                      image: 'assets/nfts/fourth_nft.png',
                      itemName: 'Example',
                      creatorName: 'whoAmI',
                      ownerName: 'adadadadda',
                      price: 2.2,
                      isFavorite: false,
                    ),
                    const SizedBox(
                      width: 20,
                    ),
                    ScrollableProduct(
                      image: 'assets/nfts/fifth_nft.png',
                      itemName: 'Example',
                      creatorName: 'whoAmI',
                      ownerName: 'adadadadda',
                      price: 2.2,
                      isFavorite: false,
                    ),
                    const SizedBox(
                      width: 30,
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              const Align(
                alignment: Alignment.topLeft,
                child: Text(
                  'Top Seller',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                  ),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Container(
                decoration: BoxDecoration(
                  boxShadow: [
                    BoxShadow(
                      color: greyColor.withOpacity(0.5),
                      spreadRadius: 2,
                      blurRadius: 10,
                      offset: const Offset(0, 5),
                    ),
                  ],
                ),
                height: 75,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    TopSeller(
                      profilePicture: 'assets/nfts/first_nft.png',
                      name: 'universal-developer',
                      price: 100,
                    ),
                    const SizedBox(
                      width: 20,
                    ),
                    TopSeller(
                      profilePicture: 'assets/nfts/second_nft.png',
                      name: 'who am I',
                      price: 500,
                    ),
                    const SizedBox(
                      width: 20,
                    ),
                    TopSeller(
                      profilePicture: 'assets/nfts/third_nft.png',
                      name: 'mememememe',
                      price: 12.2,
                    ),
                    const SizedBox(
                      width: 20,
                    ),
                    TopSeller(
                      profilePicture: 'assets/nfts/sixth_nft.png',
                      name: 'HuHuHuHuHu',
                      price: 6.2,
                    ),
                    const SizedBox(
                      width: 30,
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              const Align(
                alignment: Alignment.topLeft,
                child: Text(
                  'Recent',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                  ),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Align(
                alignment: Alignment.center,
                child: Padding(
                  padding: const EdgeInsets.only(
                    right: 30,
                  ),
                  child: Column(
                    children: [
                      Row(
                        children: [
                          ProductCard(
                              productName: 'someone',
                              productPhoto: 'assets/nfts/first_nft.png',
                              ownerName: 'someone',
                              profilePicture: 'assets/nfts/fourth_nft.png',
                              price: 2.2),
                          const SizedBox(
                            width: 10,
                          ),
                          ProductCard(
                              productName: 'someone',
                              productPhoto: 'assets/nfts/second_nft.png',
                              ownerName: 'someone',
                              profilePicture: 'assets/nfts/third_nft.png',
                              price: 2.2),
                        ],
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      Row(
                        children: [
                          ProductCard(
                              productName: 'someone',
                              productPhoto: 'assets/nfts/fifth_nft.png',
                              ownerName: 'someone',
                              profilePicture: 'assets/nfts/sixth_nft.png',
                              price: 2.2),
                          const SizedBox(
                            width: 10,
                          ),
                          ProductCard(
                              productName: 'someone',
                              productPhoto: 'assets/nfts/third_nft.png',
                              ownerName: 'someone',
                              profilePicture: 'assets/nfts/second_nft.png',
                              price: 2.2),
                        ],
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      Row(
                        children: [
                          ProductCard(
                              productName: 'someone',
                              productPhoto: 'assets/nfts/fourth_nft.png',
                              ownerName: 'someone',
                              profilePicture: 'assets/nfts/second_nft.png',
                              price: 2.2),
                          const SizedBox(
                            width: 10,
                          ),
                          ProductCard(
                              productName: 'someone',
                              productPhoto: 'assets/nfts/second_nft.png',
                              ownerName: 'someone',
                              profilePicture: 'assets/nfts/second_nft.png',
                              price: 2.2),
                        ],
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      Row(
                        children: [
                          ProductCard(
                              productName: 'someone',
                              productPhoto: 'assets/nfts/first_nft.png',
                              ownerName: 'someone',
                              profilePicture: 'assets/nfts/fourth_nft.png',
                              price: 2.2),
                          const SizedBox(
                            width: 10,
                          ),
                          ProductCard(
                              productName: 'someone',
                              productPhoto: 'assets/nfts/sixth_nft.png',
                              ownerName: 'someone',
                              profilePicture: 'assets/nfts/third_nft.png',
                              price: 2.2),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.only(bottom: 10),
        child: DotNavigationBar(
          margin: const EdgeInsets.only(left: 10, right: 10),
          currentIndex: _SelectedTab.values.indexOf(_selectedTab),
          dotIndicatorColor: lightBlueColor,
          unselectedItemColor: Colors.grey[300],
          // enableFloatingNavBar: false,
          onTap: _handleIndexChanged,
          items: [
            /// Home
            DotNavigationBarItem(
              icon: const Icon(Icons.home),
              selectedColor: Colors.black,
            ),

            /// Likes
            DotNavigationBarItem(
              icon: const Icon(CupertinoIcons.square_grid_2x2),
              selectedColor: Colors.black,
            ),

            /// Search
            DotNavigationBarItem(
              icon: const Icon(CupertinoIcons.shopping_cart),
              selectedColor: Colors.black,
            ),

            /// Profile
            DotNavigationBarItem(
              icon: const Icon(Icons.person),
              selectedColor: Colors.black,
            ),
          ],
        ),
      ),
    );
  }
}

enum _SelectedTab { home, favorite, search, person }
