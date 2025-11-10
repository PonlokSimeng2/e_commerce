import 'package:e_commerce/product_list_page.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _selectedIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });

    if (index == 1) {
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => const ProductListPage()),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Shopper'),
        actions: [
          IconButton(
            icon: const Icon(Icons.search),
            onPressed: () {},
          ),
          IconButton(
            icon: const Icon(Icons.shopping_cart),
            onPressed: () {},
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 200,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: const [
                  BannerCard(
                    imageUrl:
                        'https://lh3.googleusercontent.com/aida-public/AB6AXuApsO8c6GpQpwciWAvtRRXzNTTdtMCyE28MJNzt5rEwzjRywKvIe7M2RFp0C2l9kM5UnuOMzVzpa63U3FrVAc474epxSjFjmKoJh_fOwV6zF7nBRcz_e65ZsSzSJYdeiIMVCGexGKfKP1qhZy1_yqsSZKhyyFR0TK8UKV0asn0yZCfwYELMS2iBsKSOK86TRNuG8mCRjJQQy_oMYLbL5mKRug7IbgGBwN9Sv_uuZkzdvYT6jDAL_cW_SdTaFQv32jARFfx82oyoygAB',
                    title: 'Summer Styles Have Arrived',
                    subtitle: 'Discover the new collection',
                  ),
                  BannerCard(
                    imageUrl:
                        'https://lh3.googleusercontent.com/aida-public/AB6AXuA_3Vg6O4x4xWGepXNoidquseC13mgz2Q8SrEXFzjiv0X97sIUl0ipYBDUWrEYPcn0FrfEDwVAely96UVOqaxgQGPpf-fF7lb7QcVbIMdBRC-Jo1mcm8hYhhUvKxL5Eb15e3CP-qJX9POom_U5mxFNVCQ1Vrn2v0QRg7QJN7Dptd-NIml43PbhPb__fvcfPPeourPayEEHNtg1wKS-ojbPnEfFS6taNJL9lCTSumMNH1XxV6BS8HFq1zL-sI-rfjlf0xQOEdLjPkva3',
                    title: 'New Kicks in Town',
                    subtitle: 'Step up your shoe game',
                  ),
                  BannerCard(
                    imageUrl:
                        'https://lh3.googleusercontent.com/aida-public/AB6AXuAthNIeFbG1tNbaEbeH6GxrQQ05PweQoTm7Uk5DKKmoAJVLlhBgPOhMm1CJW3ySqe-KQ6sFLYbNAw7XU5mtAJRAxpB1QkRqDtwZQFm0foi_fxEDIMn7JM6SR1bQOhLOdBuUrvuOgh6l-APPofcSEg6fh-X-QNrCmIZENpjBOkbjuWkCEkI7utl5DKTmwDRLX3uvX-sLRtN2w04qdAQf-L3PPU2Tvmpz99HSovbkYzfRwW9c4JKMc-yQ9p-SvEuUyUek91gBEvWwCDtR',
                    title: 'Flash Sale: Up to 50% Off',
                    subtitle: 'Limited time only',
                  ),
                ],
              ),
            ),
            const PageIndicator(),
            const Padding(
              padding: EdgeInsets.all(16.0),
              child: Text(
                'Popular Categories',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
            ),
            GridView.count(
              crossAxisCount: 2,
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              children: [
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const ProductListPage()),
                    );
                  },
                  child: const CategoryCard(
                    imageUrl:
                        'https://lh3.googleusercontent.com/aida-public/AB6AXuAyom6dmmfH3XmsYHgfuyHi1PYshI3_73JwnQ-bzIQIChSxQJ4nnABywI_57fPmRIHls4NlG47CeUqaXje9eh7yykSKLz0RBh5f0CnC_kCHLrWqHEFkf7veZeEkhdbmgsyg2jt10Rcl3rsbc4Nx6kns8QGH-tuGURatMynAPVzZVtciwUmgDjMxqJes4t-SfwjkG8MRHZIJIiUdeFvqHMExI2AkFF1JEAYJ0nkKgqDiFBaC0KgPsx40JKrqFEgIUFkfMm4G0uApS5UZ',
                    title: "Men's Fashion",
                  ),
                ),
                const CategoryCard(
                  imageUrl:
                      'https://lh3.googleusercontent.com/aida-public/AB6AXuB4L65pq61LnFCwwq0Y_fAmwLZ791IBxYZ6aUBVnfD5uz2eUEb9nFYZHKKW30_-3nGgB7iUNA-ybVW3kUPJWNUgBmQrNOzE26bdTPlRNYMHMxPZGqj8wMr66QlLbS8swMVLo5ikKDhUTkEK49FkZD1ooHv5x9Fjo4JT0jNmTUTbgy9iZuAzObrwdQE2GLrefjawHzKzCKpbRRyHW9tVjN8Q0JclSUr5VZIsfXwJXhZzERNUwWkoqwG9czU9NMhWXIzeqRMJ0R1IYhsB',
                  title: "Women's Wear",
                ),
                const CategoryCard(
                  imageUrl:
                      'https://lh3.googleusercontent.com/aida-public/AB6AXuDeS_GcJcAMTYGFLkHoXhvlGvZzHHYUNLaJbDgnO4QJagqjyuP1_Myr50cUzSdlY-9U2JWRCMyMotRWMKZEpO0-yOpRtzaGOPdT1aKfufwTTIKhXjuGb_gAplM25cQ-u--vpxDOMIK-epkBbsT8wNCC6UC4fGfzIxlQzNQU6zeIlxsyGOgP8bV1IrUDx42RvgBJU1yISB0EIYqf2yIUQeXaOUN3niNlpfoj6aIWBGat8kk5ey1ArGRjUXAcC4wR0K0usKmr1uKRh4yb',
                  title: 'Footwear',
                ),
                const CategoryCard(
                  imageUrl:
                      'https://lh3.googleusercontent.com/aida-public/AB6AXuCDgY0p9unwJwzJ13sueGgEn5lfybgrTzF5UFDypjjohXibweBnRko7sO4_SyClVVucZSQmM-pA57dlojckwCPkYUjQSJ4R1bbwjH6WXAl3mEcJd_nCU02cl6T_ZqPyCpIhU1POLrsGUuNVZ6W9ZMVnOxxsphD_5SwJ3P-b3EKao9K2h72FWo01E2kzJA-k11KynvwkxOiEY9kQNnwdXOW--KDEY-FvWNo0cvaiK_033mD5UQOO8i1alXVzhlmh8ogdApdG9zfBJXiK',
                  title: 'Accessories',
                ),
              ],
            ),
            const Padding(
              padding: EdgeInsets.all(16.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Deals of the Day',
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                  Chip(
                    label: Text('23:59:01'),
                    avatar: Icon(Icons.timer),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 220,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: const [
                  DealCard(
                    imageUrl:
                        'https://lh3.googleusercontent.com/aida-public/AB6AXuCcY_V2vxBS9SzR8TJcmHrdMOGqsTc1v4SY3ZYmPKLlhGiZPoC_v463Xf_CWsKxzoktd7B-rSDJziRHTGK_55-OnJmvkcr2DtncLqaEWwG4Nx7zj0mGCGL4mXNtUxx1oZ2ssn7pJ5Ap3ja9QeRYqOxcV4OSJpZNvAtBvLvUi3vdpvmcbaxIrIESyT27hSTAQbe3KPvMT71peyEczJu-gIeM_b9XZqDVHhdgTCx2JmLr0HmO7FCYDOnysMKhbHfcJZixIIN0imSo3zmN',
                    title: 'Classic Denim Jacket',
                    price: '\$49.99',
                    originalPrice: '\$79.99',
                  ),
                  DealCard(
                    imageUrl:
                        'https://lh3.googleusercontent.com/aida-public/AB6AXuAJHCs7GptVhIv5fGt_HbW9aIRESxa93mWTx33pztIXDEP-fS1A4h3bRy89yZqwE2TFngSu_ptGD-9f2gbOEuiRpcqzUAWTrMxPGFa_qJCeS3_if-Fp-PDT3IEMopE9rx9YJ8JGgFogNJ8bwP-r2jFYBiooVVfY48pNp6bmLwLDdBXK3Ohw5Qdm4AdHzwCL9rJ84wXKgCCtQ1-1mNK5G5-A-nBpdkhNEkxu7lZWjHedSEt_8tGK7T12W1Sstuu-UR2kRR3vOfLVWoRw',
                    title: 'Silver Wrist Watch',
                    price: '\$120.00',
                    originalPrice: '\$200.00',
                  ),
                  DealCard(
                    imageUrl:
                        'https://lh3.googleusercontent.com/aida-public/AB6AXuDvdZV4T0UPgeArSGtgsPVzD3NR6Wa5o8OQRWSD9QhzsB-H0QS-eppkGBZQN6oV6QAAKOM4XFsTmB3qX54rHqzKLbT1J9aeJSMPpotx35OAbCEUXFgXsRK-bi8rw17dd1WeWBjoOguAz_LsFenoIr4JdtTmXp4pnkRtSM4XTZg8zBgsiENY9RDhF7flhk1FZoWNc-GLW9bKQ58nUT-xwR2Ti6cQyx-oRTv5P8zPF1lwq9v7YHTuB--8RKCpo7Zq9u-8X_JzdkFY8m7a',
                    title: 'Audio Headphones',
                    price: '\$89.50',
                    originalPrice: '\$150.00',
                  ),
                  DealCard(
                    imageUrl:
                        'https://lh3.googleusercontent.com/aida-public/AB6AXuCChoWZsQZV4-ii6CSKCbNsUx8bfuxBDS9HZgF0fH9qLeRmAPpygwCIGwHcdHDi_5lmbi7hIfzikkUdqvdQhf47e-B8Y0c4C-avScr_JxFm3Qv6lugy_c0FUcMz2e1EYHPtrQwRfNJll_VSZFNmoDV4WPKoglk6gcakEGPaQtdZBFjpJTQ7hly_Rl2hVBk_i4xDHk3ZRpGr4JPwXB9HiZMKDskWMhg9RO4bfYcjbNlbXTOgM6I8AR3tSLqm__2ghk2Nb87vE4Wh1cZf',
                    title: 'Leather Backpack',
                    price: '\$65.00',
                    originalPrice: '\$90.00',
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.category),
            label: 'Categories',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.favorite),
            label: 'Wishlist',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Profile',
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.blue,
        unselectedItemColor: Colors.grey,
        onTap: _onItemTapped,
      ),
    );
  }
}

class BannerCard extends StatelessWidget {
  final String imageUrl;
  final String title;
  final String subtitle;

  const BannerCard({
    super.key,
    required this.imageUrl,
    required this.title,
    required this.subtitle,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 300,
      margin: const EdgeInsets.all(8),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16),
        image: DecorationImage(
          image: NetworkImage(imageUrl),
          fit: BoxFit.cover,
        ),
      ),
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(16),
          gradient: const LinearGradient(
            colors: [Colors.black54, Colors.transparent],
            begin: Alignment.bottomCenter,
            end: Alignment.topCenter,
          ),
        ),
        padding: const EdgeInsets.all(16),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              title,
              style: const TextStyle(
                color: Colors.white,
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
            Text(
              subtitle,
              style: const TextStyle(
                color: Colors.white,
                fontSize: 14,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class PageIndicator extends StatelessWidget {
  const PageIndicator({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          width: 16,
          height: 8,
          decoration: BoxDecoration(
            color: Colors.blue,
            borderRadius: BorderRadius.circular(4),
          ),
        ),
        const SizedBox(width: 4),
        Container(
          width: 8,
          height: 8,
          decoration: BoxDecoration(
            color: Colors.grey,
            borderRadius: BorderRadius.circular(4),
          ),
        ),
        const SizedBox(width: 4),
        Container(
          width: 8,
          height: 8,
          decoration: BoxDecoration(
            color: Colors.grey,
            borderRadius: BorderRadius.circular(4),
          ),
        ),
      ],
    );
  }
}

class CategoryCard extends StatelessWidget {
  final String imageUrl;
  final String title;

  const CategoryCard({super.key, required this.imageUrl, required this.title});

  @override
  Widget build(BuildContext context) {
    return Card(
      clipBehavior: Clip.antiAlias,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(16),
      ),
      child: GridTile(
        footer: GridTileBar(
          backgroundColor: Colors.black54,
          title: Text(title),
        ),
        child: Image.network(
          imageUrl,
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}

class DealCard extends StatelessWidget {
  final String imageUrl;
  final String title;
  final String price;
  final String originalPrice;

  const DealCard({
    super.key,
    required this.imageUrl,
    required this.title,
    required this.price,
    required this.originalPrice,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 150,
      child: Card(
        clipBehavior: Clip.antiAlias,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(16),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.network(
              imageUrl,
              height: 120,
              width: double.infinity,
              fit: BoxFit.cover,
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    title,
                    style: const TextStyle(fontWeight: FontWeight.bold),
                    overflow: TextOverflow.ellipsis,
                  ),
                  const SizedBox(height: 4),
                  Row(
                    children: [
                      Text(
                        price,
                        style: const TextStyle(
                          color: Colors.blue,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const SizedBox(width: 4),
                      Text(
                        originalPrice,
                        style: const TextStyle(
                          color: Colors.grey,
                          decoration: TextDecoration.lineThrough,
                        ),
                      ),
                    ],
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

