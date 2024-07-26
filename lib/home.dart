
import 'package:flutter/material.dart';

class cart extends StatefulWidget {
  const cart({super.key});

  @override
  State<cart> createState() => _cartState();
}

class _cartState extends State<cart> {
  final List<String> imagePaths=[
    'assets/images/im1.jpg',
    'assets/images/im4.jpg',
    'assets/images/im2.jpg',
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 100,
     
        
  title: Row( 
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children: [
      IconButton(
        icon: Icon(Icons.menu),
        onPressed: () {
          
        },
      ),
      SizedBox(width: 10,),

      Expanded(
        
        child: TextField(
          
          
          decoration: InputDecoration(
            filled: true,
            fillColor: Colors.grey[300],

            prefixIcon: Image.asset('assets/images/logodd.jpg',width: 20, height: 20,),
            suffixIcon: Icon(Icons.search),
            hintText: "Search here",
            border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10))
            
          ),

          
        ),
      ),
      IconButton(
        icon: Icon(Icons.notifications_active_outlined),
        onPressed: () {
          
        },
      ),
    ],
  ),
),

body: SingleChildScrollView(
  child: Column(
    children: [
      Container(height: 200,
              child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: imagePaths.length,
              itemBuilder: (context, index) {
                return Container(
                  height: 180,
                  width: 280,
                  margin: EdgeInsets.all(10.0),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15.0),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black26,
                        blurRadius: 10.0,
                        offset: Offset(0, 5),
                      ),
                    ],
                  ),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(15.0),
                    child: Image.asset(
                      imagePaths[index],
                      fit: BoxFit.cover,
                    ),
                  ),
                );
              },
            ),
            ),
  
  
            //SizedBox(height: 15,),

            Container(
                  height: 300,
                  width: 800,
                  
                  child: Image.asset('assets/images/center.png')),
            
           

          Container(
            width: 800,
            height: 100,
            child: Image.asset('assets/images/head.png'),
          ),
          Stack(
          children: [
            Container(
              color: Colors.lightBlueAccent, 
              height: 200,
              width: 800,
              
              // Sky blue color
              //width: double.infinity,
              //height: double.infinity,
              
            ),
             SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  Container(
                    width: 200,
                    height: 200,
                    child: Image.asset('assets/images/m1.png'),
                     
                  ),
                  Container(
                    width: 200,
                    height: 200,
                    child: Image.asset('assets/images/m2.png'),
                    
                  ),
                  Container(
                    width: 200,
                    height: 200,
                    child: Image.asset('assets/images/m3.png'),
                   color: Colors.blue,
                  ),
                  
                ],
              ),
            ),
           
          ],
        ),
    ],
    
  
  
  ),
),
      


      bottomNavigationBar: BottomNavigationBar(
        
        items: const [
        BottomNavigationBarItem(
            icon: Icon(Icons.home,color: Colors.red,),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.category_outlined),
            label: 'Category',
          ),
           BottomNavigationBarItem(
            icon: Icon(Icons.shopping_cart_outlined),
            label: 'Cart',
          ),
          // BottomNavigationBarItem(icon: ImageIcon(Image.asset(name)),
          // label: 'Profile',
          
          // )
          
          //  BottomNavigationBarItem(
          //   icon: Icon(Icons.person_3_outlined),
          //   label: 'Profile',
          // ),

        
        ],
        

        ),
      

      
      
      



  );
  
    
  }
}