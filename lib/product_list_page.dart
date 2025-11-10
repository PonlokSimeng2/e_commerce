import 'package:e_commerce/product_detail_page.dart';
import 'package:flutter/material.dart';

class ProductListPage extends StatelessWidget {
  const ProductListPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: [
                Expanded(
                  child: ElevatedButton.icon(
                    icon: const Icon(Icons.swap_vert),
                    label: const Text('Sort'),
                    onPressed: () {},
                  ),
                ),
                const SizedBox(width: 8),
                Expanded(
                  child: ElevatedButton.icon(
                    icon: const Icon(Icons.tune),
                    label: const Text('Filter'),
                    onPressed: () {},
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: GridView.count(
              crossAxisCount: 2,
              childAspectRatio: 0.6,
              children: const [
                ProductCard(
                  imageUrl:
                      'https://lh3.googleusercontent.com/aida-public/AB6AXuBHCWW9iVe92x8GnG-nLF_j4jTSaEuv-kx7QGxQztnPdDD1YlFLJsZB6Id3i2hs20K9IJNO28OkOLymkRmkPMZ-JEJEOCT0xKa09u_fgny3UTZv8CaRvC0B849ZSEKOI_ko4XonyKuG38jegO-bIyBnHw2EjbgMoI4huMlgj10DTcE0lmNUQq4V_k5y5_uw3UG5Q929QPDLqEyl6HuTfUsjLcpKQpU6fYc6GlvxOYZqVQN8viYgOWHnHt-Knda1PCO6GvFEfb6e9Ind',
                  title: 'Classic Crew Neck',
                  price: '\$19.99',
                  isFavorite: false,
                ),
                ProductCard(
                  imageUrl:
                      'https://lh3.googleusercontent.com/aida-public/AB6AXuDifuOcuj7ljJn1u2aQJSiJ5f4FIc3IUu86CSnu-LRqgwMtY7bZKc8a0HitSTBILjBRqm9Km5yVf3edP5CDhSf-LaS1WnII3XtnZ0cXyOpUIg56apZK2sooBVcHZoeLbK7tVmU-AQhvO2YIezDli_MdCZLr0G7WsGMrDhCSexVB2OzCuWYkwtyIYYUIMFanRnxqhEpucbyi_z3VzVwufgZyr7DVy65OMnpDH-xzlDRfxIiksvdQKAJM55CFQfeUHqbU70jBXfzNno4J',
                  title: 'V-Neck Basic Tee',
                  price: '\$24.50',
                  isFavorite: true,
                ),
                ProductCard(
                  imageUrl:
                      'https://lh3.googleusercontent.com/aida-public/AB6AXuD-4p3eeUxzk1CbGkN7MHfx2bQyN53t5tjopaGy0uNLKFZK5_wRG16RWKpXF4uGH3i9orsKgnK2PdxPQ5guGztz0Y8z0zVEFBINFFSjA34eSLRgr82XbBQcpstg9xzOKOxOKm2cBy_7ByZ7NrrrhXUb_3o6RL5oR-N1TcBX_Ml7DFUHeeHCZvNNaA1jDy0GBa95-YGgJZJB5Cy0OJ-5KTXOmpNIhd6tfWJQKkzKGieuQoeNVyvkyoPEzDgtdRy30qIU1SwDBd_MaXB5',
                  title: 'Graphic Print Tee',
                  price: '\$29.99',
                  isFavorite: false,
                ),
                ProductCard(
                  imageUrl:
                      'https://lh3.googleusercontent.com/aida-public/AB6AXuDkWRDdVi2LOXccep-DkVhZ0kGeFM6KHRD9SssSJcvAFsQcNkVcRKxW1okvGbuuktBzIXwtxt2VSABANOElQcBgl1BqB1jL2Vm-1p1IDLnd7AIoZxtlkDGIHJceTp8R5D53rvohs2a3lpQwCqSOgcKgTw36dkpj-czJn61DPtmDVwidRgM1pLp50oVD_no2pz0Zzh-kxVch1XcoqRM6qzTEzO-f26iqnx1rark4g8byKcqE-RFZlSnlJqAcFZxMt3i6MTh8g4p1TvJy',
                  title: 'Striped Cotton Tee',
                  price: '\$22.00',
                  isFavorite: false,
                ),
                ProductCard(
                  imageUrl:
                      'https://lh3.googleusercontent.com/aida-public/AB6AXuBFO7wUnqxhKsgXyQRkWp16eJxo6RGP-FD5HIgoeSfyGr9lMVP6f9uOmdAf29fvZNQnjzBiHP9t5YIbDmJVU4cY01PoQ_N-uT538kLmeVDR624dFxtp-kB72EHYJfR2w6WS6fwMKbWmCd0-Z4hIGWbM4UcRPu9d59Vw4Ewfw-KX7awj7zFqC3HEBwwghN5l-vHXKMGIpFT-x6EfAVnEuCKQFQFAqbQngEWEL-Dvpf-PIHdkt4P0IsN05utw-_PprjYg6RHJlBj7bKYf',
                  title: 'Long Sleeve Henley',
                  price: '\$32.00',
                  isFavorite: false,
                ),
                ProductCard(
                  imageUrl:
                      'https://lh3.googleusercontent.com/aida-public/AB6AXuDwujP8jvUVtEWNlZhKGxToYyYONCtbARr4ay6VNFX6Iv6GZPgP_zqVOMdQaZYtQsdxseBpbXVNBhm27ESpMmpxYq-iNquM46aIg7CwOd3MX47aasdhLCdyM4A7UA3yjX17ug80F0GaCtcBLzXsrpl-9Yx8mS25jC5lie1I4PY0eFJeNjHuad__TLoLGpBd1alDdihNMkZfEBFPNFosmAsidmYIv6vm3JU-Az41_QBmnHErhANSP2ub_t8UdjfH2CbGH_-D3bvgZvN1',
                  title: 'Pocket Tee',
                  price: '\$21.50',
                  isFavorite: true,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class ProductCard extends StatelessWidget {
  final String imageUrl;
  final String title;
  final String price;
  final bool isFavorite;

  const ProductCard({
    super.key,
    required this.imageUrl,
    required this.title,
    required this.price,
    required this.isFavorite,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => ProductDetailPage(
              imageUrl: imageUrl,
              productName: title,
              price: price,
            ),
          ),
        );
      },
      child: Card(
        clipBehavior: Clip.antiAlias,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            AspectRatio(
              aspectRatio: 3 / 4,
              child: Stack(
                children: [
                  Image.network(
                    imageUrl,
                    fit: BoxFit.cover,
                    width: double.infinity,
                  ),
                  Positioned(
                    top: 8,
                    right: 8,
                    child: CircleAvatar(
                      backgroundColor: Colors.black38,
                      child: IconButton(
                        icon: Icon(
                          isFavorite ? Icons.favorite : Icons.favorite_border,
                          color: Colors.white,
                        ),
                        onPressed: () {},
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    title,
                    style: const TextStyle(fontWeight: FontWeight.bold),
                  ),
                  Text(price),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
