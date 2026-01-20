import 'package:flutter/material.dart';
import 'OffersScreen.dart'; // make sure these exist
import 'CardsScreen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffF7EEF5),

      // ✅ BODY WITH NAVIGATION
      body: IndexedStack(
        index: _currentIndex,
        children: [
          // 🔹 HOME SCREEN CONTENT (original code)
          SingleChildScrollView(
            padding: const EdgeInsets.all(16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // 🔹 PROFILE HEADER
                Row(
                  children: [
                    Container(
                      padding: const EdgeInsets.all(2),
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        border: Border.all(color: Colors.pink, width: 2),
                      ),
                      child: const CircleAvatar(
                        radius: 24,
                        backgroundImage: NetworkImage(
                          "https://images.unsplash.com/photo-1529626455594-4ff0802cfb7e",
                        ),
                      ),
                    ),
                    const SizedBox(width: 10),
                    const Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Wilson Junior",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 16,
                          ),
                        ),
                        Text("Premium", style: TextStyle(color: Colors.grey)),
                      ],
                    ),
                    const Spacer(),
                    IconButton(
                      onPressed: () {},
                      icon: const Icon(Icons.notifications_none),
                    ),
                    IconButton(
                      onPressed: () {},
                      icon: const Icon(Icons.card_giftcard),
                    ),
                  ],
                ),

                const SizedBox(height: 16),

                // 🔹 SEARCH BAR
                Container(
                  padding: const EdgeInsets.symmetric(horizontal: 14),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(30),
                  ),
                  child: const Row(
                    children: [
                      Icon(Icons.search),
                      SizedBox(width: 10),
                      Expanded(
                        child: TextField(
                          decoration: InputDecoration(
                            hintText: "Search",
                            border: InputBorder.none,
                          ),
                        ),
                      ),
                      Icon(Icons.tune),
                    ],
                  ),
                ),

                const SizedBox(height: 20),

                // 🔹 TOP ICON MENU
                const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    TopIcon(icon: Icons.percent, text: "Earn 100%"),
                    TopIcon(icon: Icons.receipt_long, text: "Tax note"),
                    TopIcon(icon: Icons.star, text: "Premium"),
                    TopIcon(icon: Icons.emoji_events, text: "Challenge"),
                    TopIcon(icon: Icons.more_horiz, text: "More"),
                  ],
                ),

                const SizedBox(height: 24),
                // 🔹 GRADIENT BANNER WITH BUTTON & IMAGE
                Container(
                  height: 160,
                  decoration: BoxDecoration(
                    gradient: const LinearGradient(
                      colors: [Color(0xffD6B4FC), Color(0xffF7B7D8)],
                    ),
                    borderRadius: BorderRadius.circular(26),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(16),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        // Text + Button
                        Flexible(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const Text(
                                "Cash with 100% cashback",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              const SizedBox(height: 12),
                              SizedBox(
                                height: 38,
                                child: ElevatedButton(
                                  onPressed: () {},
                                  style: ElevatedButton.styleFrom(
                                    backgroundColor: Colors.white,
                                    foregroundColor: Colors.pink,
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(20),
                                    ),
                                    padding: const EdgeInsets.symmetric(
                                      horizontal: 20,
                                    ),
                                  ),
                                  child: const Text(
                                    "Get Offer",
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),

                        // Headphone Image
                        ClipRRect(
                          borderRadius: BorderRadius.circular(20),
                          child: Image.network(
                            "https://images.unsplash.com/photo-1505740420928-5e560c06d30e",
                            height: 120,
                            fit: BoxFit.contain,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),

                const SizedBox(height: 24),

                // 🔹 MOST POPULAR
                const Text(
                  "Most popular",
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),

                const SizedBox(height: 12),

                GridView.count(
                  crossAxisCount: 2,
                  shrinkWrap: true,
                  physics: const NeverScrollableScrollPhysics(),
                  crossAxisSpacing: 12,
                  mainAxisSpacing: 12,
                  childAspectRatio: 0.8,
                  children: const [
                    PopularItem(
                      title: "Smart TV",
                      image:
                          "https://images.unsplash.com/photo-1593359677879-a4bb92f829d1",
                      cashback: "20% cashback",
                    ),
                    PopularItem(
                      title: "Shoes",
                      image:
                          "https://images.unsplash.com/photo-1542291026-7eec264c27ff",
                      cashback: "15% cashback",
                    ),
                    PopularItem(
                      title: "Mobile",
                      image:
                          "https://images.unsplash.com/photo-1511707171634-5f897ff02aa9",
                      cashback: "25% cashback",
                    ),
                    PopularItem(
                      title: "Laptop",
                      image:
                          "https://images.unsplash.com/photo-1517336714731-489689fd1ca8",
                      cashback: "18% cashback",
                    ),
                    PopularItem(
                      title: "Headphones",
                      image:
                          "https://images.unsplash.com/photo-1505740420928-5e560c06d30e",
                      cashback: "30% cashback",
                    ),
                    PopularItem(
                      title: "Speaker",
                      image:
                          "https://images.unsplash.com/photo-1608043152269-423dbba4e7e1",
                      cashback: "22% cashback",
                    ),
                  ],
                ),
              ],
            ),
          ),

          // 🔹 OFFERS SCREEN
          const OffersScreen(),

          // 🔹 CARDS SCREEN
          const CardsScreen(),

          // 🔹 Notes placeholder
          const Center(child: Text("Notes Screen")),

          // 🔹 Extract placeholder
          const Center(child: Text("Extract Screen")),
        ],
      ),

      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        currentIndex: _currentIndex,
        onTap: (index) {
          setState(() {
            _currentIndex = index; // navigate to the selected screen
          });
        },
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
          BottomNavigationBarItem(
            icon: Icon(Icons.local_offer),
            label: "Offers",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.credit_card),
            label: "Cards",
          ),
          BottomNavigationBarItem(icon: Icon(Icons.note), label: "Notes"),
          BottomNavigationBarItem(
            icon: Icon(Icons.receipt_long),
            label: "Extract",
          ),
        ],
      ),
    );
  }
}

// 🔹 TOP ICON WIDGET
class TopIcon extends StatelessWidget {
  final IconData icon;
  final String text;

  const TopIcon({super.key, required this.icon, required this.text});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CircleAvatar(
          backgroundColor: Colors.white,
          child: Icon(icon, color: Colors.pink),
        ),
        const SizedBox(height: 6),
        Text(text, style: const TextStyle(fontSize: 12)),
      ],
    );
  }
}

// 🔹 POPULAR ITEM CARD
class PopularItem extends StatelessWidget {
  final String title;
  final String image;
  final String cashback;

  const PopularItem({
    super.key,
    required this.title,
    required this.image,
    required this.cashback,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(18),
      ),
      child: Column(
        children: [
          Expanded(
            child: ClipRRect(
              borderRadius: const BorderRadius.vertical(
                top: Radius.circular(18),
              ),
              child: Image.network(
                image,
                width: double.infinity,
                fit: BoxFit.cover,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(10),
            child: Column(
              children: [
                Text(
                  title,
                  style: const TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 14,
                  ),
                ),
                const SizedBox(height: 4),
                Text(
                  cashback,
                  style: const TextStyle(
                    color: Colors.pink,
                    fontSize: 12,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
