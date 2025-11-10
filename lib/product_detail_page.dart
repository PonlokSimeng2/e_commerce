
import 'package:flutter/material.dart';

class ProductDetailPage extends StatelessWidget {
  final String imageUrl;
  final String productName;
  final String price;

  const ProductDetailPage({
    super.key,
    required this.imageUrl,
    required this.productName,
    required this.price,
  });

  @override
  Widget build(BuildContext context) {
    final Color primaryColor = Color(0xFF0D7FF2);
    final Color backgroundColorLight = Color(0xFFF5F7F8);
    final Color backgroundColorDark = Color(0xFF101922);

    return Scaffold(
      backgroundColor: Theme.of(context).brightness == Brightness.light
          ? backgroundColorLight
          : backgroundColorDark,
      body: SafeArea(
        child: CustomScrollView(
          slivers: [
            SliverAppBar(
              backgroundColor: Colors.transparent,
              leading: Padding(
                padding: const EdgeInsets.all(8.0),
                child: CircleAvatar(
                  backgroundColor: Theme.of(context).brightness == Brightness.light
                      ? backgroundColorLight.withOpacity(0.5)
                      : backgroundColorDark.withOpacity(0.5),
                  child: IconButton(
                    icon: Icon(
                      Icons.arrow_back,
                      color: Theme.of(context).brightness == Brightness.light
                          ? Colors.grey[800]
                          : Colors.white,
                    ),
                    onPressed: () {
                      Navigator.pop(context);
                    },
                  ),
                ),
              ),
              actions: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: CircleAvatar(
                    backgroundColor: Theme.of(context).brightness == Brightness.light
                        ? backgroundColorLight.withOpacity(0.5)
                        : backgroundColorDark.withOpacity(0.5),
                    child: IconButton(
                      icon: Icon(
                        Icons.favorite_border,
                        color: Theme.of(context).brightness == Brightness.light
                            ? Colors.grey[800]
                            : Colors.white,
                      ),
                      onPressed: () {},
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: CircleAvatar(
                    backgroundColor: Theme.of(context).brightness == Brightness.light
                        ? backgroundColorLight.withOpacity(0.5)
                        : backgroundColorDark.withOpacity(0.5),
                    child: IconButton(
                      icon: Icon(
                        Icons.share,
                        color: Theme.of(context).brightness == Brightness.light
                            ? Colors.grey[800]
                            : Colors.white,
                      ),
                      onPressed: () {},
                    ),
                  ),
                ),
              ],
              expandedHeight: 300,
              flexibleSpace: FlexibleSpaceBar(
                background: Image.network(
                  imageUrl,
                  fit: BoxFit.cover,
                ),
              ),
            ),
            SliverToBoxAdapter(
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      productName,
                      style: TextStyle(
                        fontSize: 32,
                        fontWeight: FontWeight.bold,
                        color: Theme.of(context).brightness == Brightness.light
                            ? Colors.grey[900]
                            : Colors.white,
                      ),
                    ),
                    const SizedBox(height: 4),
                    Text(
                      'With Tile Tracking',
                      style: TextStyle(
                        fontSize: 16,
                        color: Theme.of(context).brightness == Brightness.light
                            ? Colors.grey[500]
                            : Colors.grey[400],
                      ),
                    ),
                    const SizedBox(height: 16),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          price,
                          style: TextStyle(
                            fontSize: 28,
                            fontWeight: FontWeight.bold,
                            color: Theme.of(context).brightness == Brightness.light
                                ? Colors.grey[900]
                                : Colors.white,
                          ),
                        ),
                        Row(
                          children: [
                            Icon(Icons.star, color: Colors.yellow[500], size: 20),
                            const SizedBox(width: 4),
                            Text(
                              '4.8',
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Theme.of(context).brightness == Brightness.light
                                    ? Colors.grey[900]
                                    : Colors.white,
                              ),
                            ),
                            const SizedBox(width: 4),
                            Text(
                              '(1,422 reviews)',
                              style: TextStyle(
                                color: Theme.of(context).brightness == Brightness.light
                                    ? Colors.grey[500]
                                    : Colors.grey[400],
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                    const SizedBox(height: 16),
                    Divider(
                      color: Theme.of(context).brightness == Brightness.light
                          ? Colors.grey[200]
                          : Colors.grey[800],
                    ),
                    const SizedBox(height: 16),
                    Text(
                      'Color: Obsidian Black',
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        color: Theme.of(context).brightness == Brightness.light
                            ? Colors.grey[900]
                            : Colors.white,
                      ),
                    ),
                    const SizedBox(height: 12),
                    Row(
                      children: [
                        Container(
                          width: 40,
                          height: 40,
                          decoration: BoxDecoration(
                            color: const Color(0xFF1A1A1A),
                            shape: BoxShape.circle,
                            border: Border.all(
                              color: primaryColor,
                              width: 2,
                            ),
                          ),
                        ),
                        const SizedBox(width: 12),
                        Container(
                          width: 40,
                          height: 40,
                          decoration: const BoxDecoration(
                            color: Color(0xFF6B4F3A),
                            shape: BoxShape.circle,
                          ),
                        ),
                        const SizedBox(width: 12),
                        Container(
                          width: 40,
                          height: 40,
                          decoration: const BoxDecoration(
                            color: Color(0xFF2E4C6D),
                            shape: BoxShape.circle,
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 16),
                    DefaultTabController(
                      length: 3,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          TabBar(
                            isScrollable: true,
                            indicatorColor: primaryColor,
                            labelColor: primaryColor,
                            unselectedLabelColor: Theme.of(context).brightness == Brightness.light
                                ? Colors.grey[500]
                                : Colors.grey[400],
                            tabs: const [
                              Tab(text: 'Description'),
                              Tab(text: 'Specifications'),
                              Tab(text: 'Reviews'),
                            ],
                          ),
                          const SizedBox(height: 16),
                          SizedBox(
                            height: 100,
                            child: TabBarView(
                              children: [
                                Text(
                                  'Experience the perfect blend of style and functionality with the Nomad Slim Wallet. Crafted from premium, sustainably sourced leather, this wallet is designed for the modern individual. Its ultra-slim profile ensures it fits comfortably in any pocket without adding bulk. Featuring an integrated Tile tracker, you\'ll never have to worry about misplacing your wallet again.',
                                  style: TextStyle(
                                    color: Theme.of(context).brightness == Brightness.light
                                        ? Colors.grey[600]
                                        : Colors.grey[300],
                                    height: 1.5,
                                  ),
                                ),
                                Text(
                                  'Specifications content goes here.',
                                  style: TextStyle(
                                    color: Theme.of(context).brightness == Brightness.light
                                        ? Colors.grey[600]
                                        : Colors.grey[300],
                                  ),
                                ),
                                Text(
                                  'Reviews content goes here.',
                                  style: TextStyle(
                                    color: Theme.of(context).brightness == Brightness.light
                                        ? Colors.grey[600]
                                        : Colors.grey[300],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(height: 16),
                    Divider(
                      color: Theme.of(context).brightness == Brightness.light
                          ? Colors.grey[200]
                          : Colors.grey[800],
                    ),
                    const SizedBox(height: 16),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              '4.8',
                              style: TextStyle(
                                fontSize: 40,
                                fontWeight: FontWeight.w900,
                                color: Theme.of(context).brightness == Brightness.light
                                    ? Colors.grey[900]
                                    : Colors.white,
                              ),
                            ),
                            Row(
                              children: List.generate(
                                5,
                                (index) => Icon(
                                  index < 4 ? Icons.star : Icons.star_half,
                                  color: Colors.yellow[500],
                                  size: 18,
                                ),
                              ),
                            ),
                            const SizedBox(height: 4),
                            Text(
                              'Based on 1,422 reviews',
                              style: TextStyle(
                                color: Theme.of(context).brightness == Brightness.light
                                    ? Colors.grey[600]
                                    : Colors.grey[300],
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(width: 32),
                        Expanded(
                          child: Column(
                            children: [
                              _buildRatingRow(context, '5', 0.85, primaryColor),
                              _buildRatingRow(context, '4', 0.09, primaryColor),
                              _buildRatingRow(context, '3', 0.04, primaryColor),
                              _buildRatingRow(context, '2', 0.01, primaryColor),
                              _buildRatingRow(context, '1', 0.01, primaryColor),
                            ],
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 16),
                    _buildReviewItem(
                      context,
                      'https://lh3.googleusercontent.com/aida-public/AB6AXuBVafwg55_RLHEiKquu2H7koIOp4m9v1a2GXliLfauyU03EinxsGysPjNrRkI5kuC9e0FBrAHKcKyyR1k39fx2gDdJY4MnrUI6vDYf9sjug-VA4sTY4pgKW_DnyMM-fQS2MptElSgSSBKAfV7N7AYEabWOHD4N6rky0Re1nDeByMPX2u8g2oyPKtXZ9P-7RdkXH1ZFt8FvdMyC_RDe_COx_nYk83MFI14KPyzxn6XO_bgPER2pcZR46fVv724wkknUwdHys6BiSUHJf',
                      'Alex Johnson',
                      '2 weeks ago',
                      5,
                      'Absolutely love this wallet! It’s incredibly slim and the leather feels amazing. The Tile tracker is a lifesaver.',
                    ),
                    Divider(
                      color: Theme.of(context).brightness == Brightness.light
                          ? Colors.grey[200]
                          : Colors.grey[800],
                    ),
                    _buildReviewItem(
                      context,
                      'https://lh3.googleusercontent.com/aida-public/AB6AXuAx9hRMo0L9x7fq0y7F7Na2h3j6WR7XD_MGPzcMnUKgFNV_M8D3pQL3lZAYhP2U8Vl6AO-65j8uI1itx3fXSXFkP6XHWn7jElzRpq3luobApDPPlttjrO0DWz3FZy0mNccLgUic6mEbQvUIElyGspn1wHG0S1O22KY363FmUIFigID3pAeev5yzAFMCORFsM7hhUn_jmobphHtpDoKixaH8SJxLli4Ti2QCd_By7o2cs2a8JVuoVNXgJVc5v3CcfSHlXLqhFETLNKaC',
                      'Samantha Bee',
                      '1 month ago',
                      4,
                      'Great quality and very stylish. My only wish is that it had a bit more space for cash, but for a minimalist wallet, it\'s perfect.',
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomAppBar(
        color: Theme.of(context).brightness == Brightness.light
            ? backgroundColorLight.withOpacity(0.9)
            : backgroundColorDark.withOpacity(0.9),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: ElevatedButton(
            style: ElevatedButton.styleFrom(
              backgroundColor: primaryColor,
              padding: const EdgeInsets.symmetric(vertical: 16),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(8),
              ),
            ),
            onPressed: () {},
            child: const Text(
              'Add to Cart',
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildRatingRow(BuildContext context, String rating, double percentage, Color primaryColor) {
    return Row(
      children: [
        Text(
          rating,
          style: TextStyle(
            color: Theme.of(context).brightness == Brightness.light
                ? Colors.grey[900]
                : Colors.white,
          ),
        ),
        const SizedBox(width: 8),
        Expanded(
          child: ClipRRect(
            borderRadius: BorderRadius.circular(4),
            child: LinearProgressIndicator(
              value: percentage,
              backgroundColor: Theme.of(context).brightness == Brightness.light
                  ? Colors.grey[200]
                  : Colors.grey[700],
              valueColor: AlwaysStoppedAnimation<Color>(primaryColor),
            ),
          ),
        ),
        const SizedBox(width: 8),
        Text(
          '${(percentage * 100).toInt()}%',
          style: TextStyle(
            color: Theme.of(context).brightness == Brightness.light
                ? Colors.grey[500]
                : Colors.grey[400],
          ),
        ),
      ],
    );
  }

  Widget _buildReviewItem(
    BuildContext context,
    String imageUrl,
    String name,
    String date,
    int rating,
    String review,
  ) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  CircleAvatar(
                    backgroundImage: NetworkImage(imageUrl),
                  ),
                  const SizedBox(width: 12),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        name,
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Theme.of(context).brightness == Brightness.light
                              ? Colors.grey[900]
                              : Colors.white,
                        ),
                      ),
                      Text(
                        date,
                        style: TextStyle(
                          fontSize: 12,
                          color: Theme.of(context).brightness == Brightness.light
                              ? Colors.grey[500]
                              : Colors.grey[400],
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              Row(
                children: List.generate(
                  5,
                  (index) => Icon(
                    index < rating ? Icons.star : Icons.star_border,
                    color: Colors.yellow[500],
                    size: 16,
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(height: 12),
          Text(
            review,
            style: TextStyle(
              color: Theme.of(context).brightness == Brightness.light
                  ? Colors.grey[600]
                  : Colors.grey[300],
              height: 1.5,
            ),
          ),
        ],
      ),
    );
  }
}
