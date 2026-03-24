import 'package:flutter/material.dart';

class MainDashboard extends StatelessWidget {
  const MainDashboard({super.key}); // Added const for best practice

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFE8EEF7),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const SizedBox(height: 60),

              // Categories Row
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: Row(
                  children: [
                    buildCategoryItem(Icons.all_inbox_sharp, "GENERAL"),
                    buildCategoryItem(Icons.shopping_cart_outlined, "GROCERY"),
                    buildCategoryItem(
                      Icons.headset_mic_outlined,
                      "ELECTRONICS",
                    ),
                    buildCategoryItem(
                      Icons.brunch_dining_outlined,
                      "COSMETICS",
                    ),
                  ],
                ),
              ),

              const SizedBox(height: 20),

              // Main Featured Card
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Container(
                  width: double.infinity,
                  padding: const EdgeInsets.all(15),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Column(
                    children: [
                      const Text(
                        "Silicone material, soft and elastic easy to handle",
                        style: TextStyle(fontSize: 15, color: Colors.grey),
                      ),
                      Image.asset('assets/images/img.png'),
                      const SizedBox(height: 10),
                    ],
                  ),
                ),
              ),

              const SizedBox(height: 25),
              const Text(
                "POPULAR ITEMS",
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  letterSpacing: 1.1,
                ),
              ),
              const SizedBox(height: 15),

              // Fixed Popular Items Row
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 15),
                child: Row(
                  children: [
                    Expanded(
                      child: buildPopularItem(
                        "Xiaomi Mi Smart Band 7 Pro",
                        Colors.white,
                        Colors.black,
                        'assets/images/img.png',
                      ),
                    ),
                    const SizedBox(width: 15),
                    Expanded(
                      child: buildPopularItem(
                        "HeadSet Wireless Ultra",
                        const Color(0xFF121212),
                        Colors.white,
                        'assets/images/headphone.png',
                        isDark: false,
                      ),
                    ),
                  ],
                ),
              ),

              const SizedBox(height: 20),

              // Status Buttons
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 15),
                child: Row(
                  children: [
                    Expanded(
                      child: buildStatusButton(
                        "HOT\nSALES",
                        const Color(0xFF00BCD4),
                      ),
                    ),
                    const SizedBox(width: 15),
                    Expanded(
                      child: buildStatusButton(
                        "NEW\nARRIVALS",
                        const Color(0xFFF48FB1),
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 100),
            ],
          ),
        ),
      ),
      bottomNavigationBar: buildCustomBottomBar(),
    );
  }

  // Helper Methods
  Widget buildCategoryItem(IconData icon, String title) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8),
      child: Column(
        children: [
          Container(
            padding: const EdgeInsets.all(12),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(15),
              border: Border.all(color: Colors.black, width: 1.2),
            ),
            child: Icon(icon, size: 35, color: Colors.black),
          ),
          const SizedBox(height: 5),
          Text(
            title,
            style: const TextStyle(fontSize: 10, fontWeight: FontWeight.bold),
          ),
        ],
      ),
    );
  }

  Widget buildPopularItem(
    String title,
    Color bgColor,
    Color textColor,
    String imagePath, {
    bool isDark = false,
  }) {
    return Container(
      padding: const EdgeInsets.all(15),
      decoration: BoxDecoration(
        color: bgColor,
        borderRadius: BorderRadius.circular(20),
      ),
      child: Column(
        children: [
          Image.asset(
            imagePath,
            height: 80,
            fit: BoxFit.contain,
            errorBuilder: (context, error, stackTrace) => Icon(
              Icons.image_outlined,
              size: 80,
              color: isDark ? Colors.white54 : Colors.grey,
            ),
          ),
          const SizedBox(height: 10),
          Text(
            title,
            textAlign: TextAlign.center,
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
            style: TextStyle(
              fontSize: 11,
              fontWeight: FontWeight.bold,
              color: textColor,
            ),
          ),
        ],
      ),
    );
  }




  Widget buildStatusButton(String text, Color color) {
    return Container(
      height: 90,
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(15),
      ),
      alignment: Alignment.center,
      child: Text(
        text,
        textAlign: TextAlign.center,
        style: const TextStyle(
          color: Colors.white,
          fontWeight: FontWeight.bold,
          fontSize: 16,
        ),
      ),
    );
  }

  Widget buildCustomBottomBar() {
    return Stack(
      alignment: Alignment.bottomCenter,
      children: [
        Container(
          height: 70,
          margin: const EdgeInsets.only(bottom: 10, left: 10, right: 10),
          decoration: BoxDecoration(
            color: const Color(0xFF1A1C2E),
            borderRadius: BorderRadius.circular(35),
          ),
          child: const Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              SizedBox(width: 50),
              Icon(Icons.grid_view_rounded, color: Colors.white54),
              Icon(Icons.shopping_cart_outlined, color: Colors.white54),
              Icon(Icons.favorite_border, color: Colors.white54),
              Icon(Icons.person_outline, color: Colors.white54),
            ],
          ),
        ),
        Positioned(
          left: 25,
          bottom: 25,
          child: CircleAvatar(
            radius: 30,
            backgroundColor: const Color(0xFF1A1C2E),
            child: CircleAvatar(
              radius: 25,
              backgroundColor: Colors.white,
              child: Icon(
                Icons.home_filled,
                color: Colors.blueGrey[900],
                size: 30,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
