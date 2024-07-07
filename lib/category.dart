import 'package:flutter/material.dart';
import 'package:test_autimo/learning/learn_main.dart';
import 'package:test_autimo/product_model.dart';
import 'package:test_autimo/games/game_main.dart';
import 'package:test_autimo/routine/CreatePage.dart';


class CategoryList extends StatelessWidget {
  const CategoryList({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
        shrinkWrap: true,
        physics: ScrollPhysics(),
        itemCount: products.length,
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 3, childAspectRatio: 0.85),
        itemBuilder: (context, index) => CategoryCard(
              product: products[index],
            ));
  }
}


// 4 inkwell without button 

class CategoryCard extends StatelessWidget {
  const CategoryCard({
    Key? key,
    required this.product,
  }) : super(key: key);

  final Product product;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 150, // Adjust the width as needed
      child: Card(
        elevation: 2,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15.0),
        ),
        child: InkWell(
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => navigateToPage(product),
              ),
            );
          },
          child: Column(
            children: [
              Image.asset(
                product.image,
                height: 120,
                width: double.infinity,
                fit: BoxFit.cover,
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  product.title,
                  style: const TextStyle(
                    fontSize: 18,
                    color: Colors.black,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget navigateToPage(Product product) {
     if (product.id == 1) {
      return LearnApp();
    } else if (product.id == 2) {
      return GameApp();
    } else if (product.id == 3) {
      return CreatePage();
    } else {
      return CreatePage();
    }
  }
}






/*

3
InkWell

class CategoryCard extends StatelessWidget {
  const CategoryCard({
    Key? key,
    required this.product,
  }) : super(key: key);

  final Product product;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 150, 
      child: Card(
        elevation: 2,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15.0),
        ),
        child: InkWell(
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => navigateToPage(product),
              ),
            );
          },
          child: Column(
            children: [
              Image.asset(
                product.image,
                height: 120,
                width: double.infinity,
                fit: BoxFit.cover,
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  product.title,
                  style: const TextStyle(
                    fontSize: 18,
                    color: Colors.black,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => navigateToPage(product),
                    ),
                  );
                },
                child: const Text('View Details'),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget navigateToPage(Product product) {
    
  }
}


/*
2 dimensions 

class CategoryCard extends StatelessWidget {
  const CategoryCard({
    Key? key,
    required this.product,
  }) : super(key: key);

  final Product product;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 150, // Adjust the width as needed
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Container(
          padding: const EdgeInsets.all(10.0),
          decoration: BoxDecoration(
            color: product.color,
            borderRadius: BorderRadius.circular(15.0),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Expanded(
                child: Image.asset(
                  product.image,
                  fit: BoxFit.cover,
                ),
              ),
              const SizedBox(height: 10),
              Text(
                product.title,
                style: const TextStyle(
                  fontSize: 18,
                  color: Colors.white,
                  fontWeight: FontWeight.w600,
                ),
              ),
              const SizedBox(height: 10),
              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => navigateToPage(product),
                    ),
                  );
                },
                child: const Text('View Details'),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget navigateToPage(Product product) {
    // Navigation logic remains the same as mentioned in the previous response
    // ...
  }
}





/*
1 elevated button with navigations

class CategoryCard extends StatelessWidget {
  const CategoryCard({
    Key? key,
    required this.product,
  }) : super(key: key);

  final Product product;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Container(
        padding: const EdgeInsets.all(10.0),
        decoration: BoxDecoration(
          color: product.color,
          borderRadius: BorderRadius.circular(15.0),
        ),
        child: Column(
          children: [
            Image.asset(
              product.image,
              height: 100,
            ),
            const SizedBox(height: 10),
            Text(
              product.title,
              style: const TextStyle(
                fontSize: 18,
                color: Colors.white,
                fontWeight: FontWeight.w600,
              ),
            ),
            const SizedBox(height: 10),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => navigateToPage(product),
                  ),
                );
              },
              child: const Text('View Details'),
            ),
          ],
        ),
      ),
    );
  }

  Widget navigateToPage(Product product) {
    if (product.id == 1) {
      // Navigate to the corresponding page for Product with id 1
      // Replace `DestinationPage1` with the actual page you want to navigate to
      return DestinationPage1();
    } else if (product.id == 2) {
      // Navigate to the corresponding page for Product with id 2
      // Replace `DestinationPage2` with the actual page you want to navigate to
      return DestinationPage2();
    } else if (product.id == 3) {
      // Navigate to the corresponding page for Product with id 3
      // Replace `DestinationPage3` with the actual page you want to navigate to
      return DestinationPage3();
    } else {
      // Default navigation if the product id doesn't match any specific page
      // Replace `DefaultDestinationPage` with the actual default page you want to navigate to
      return DefaultDestinationPage();
    }
  }
}




/*
0 rosmin


class CategoryCard extends StatelessWidget {
  const CategoryCard({
    Key? key,
    required this.product,
  }) : super(key: key);
  final Product product;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Container(
        padding: const EdgeInsets.all(10.0),
        decoration: BoxDecoration(
            color: product.color, borderRadius: BorderRadius.circular(15.0)),
        child: Column(
          children: [
            Image.asset(
              product.image,
              height: 100,
            ),
            const SizedBox(
              height: 10,
            ),
            Text(
              product.title,
              style: const TextStyle(
                  fontSize: 18,
                  color: Colors.white,
                  fontWeight: FontWeight.w600),
            ),
            const SizedBox(
              height: 10,
            ),
          ],
        ),
      ),
    );
  }
} 

*/ */ */ */