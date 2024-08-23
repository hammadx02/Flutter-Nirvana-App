// import 'package:flutter/material.dart';
// import 'package:google_fonts/google_fonts.dart';
// import 'package:nirvana_app/models/menu_model.dart';
// import 'package:nirvana_app/utils/app_colors.dart';

// import '../widgets/menu_container.dart';

// class MenuScreen extends StatelessWidget {
//   const MenuScreen({super.key});

//   @override
//   Widget build(BuildContext context) {
//     final List<MenuModel> _menuItems = [
//       const MenuModel(
//         image: 'assets/images/melkon.png',
//         title: 'Melkon',
//         price: '15',
//         ingredints: 'Water melon juice, Yakult, Kiwi',
//       ),
//       const MenuModel(
//         image: 'assets/images/mango.png',
//         title: 'Cheezy Mango',
//         price: '12',
//         ingredints: 'Mango, cheese, macchiato cream',
//       ),
//       const MenuModel(
//         image: 'assets/images/almond.png',
//         title: 'Almond Hit',
//         price: '12',
//         ingredints: 'Milk tea, almond, macchiato, bubble',
//       ),
//       const MenuModel(
//         image: 'assets/images/sour.png',
//         title: 'Sour Power',
//         price: '15',
//         ingredints: 'Jasmine tea, passion fruit, atiso flower',
//       ),
//       const MenuModel(
//         image: 'assets/images/splash.png',
//         title: 'Boot Splash',
//         price: '15',
//         ingredints: 'Chocolate mousse, Oreo crumbs, Mint leaf',
//       ),
//       const MenuModel(
//         image: 'assets/images/cactus.png',
//         title: 'Cactus Cooler',
//         price: '15',
//         ingredints: 'Matcha cream, Whipped tooping, Ice cubes',
//       ),
//     ];
//     return Scaffold(
//       body: SafeArea(
//         child: Padding(
//           padding: const EdgeInsets.all(16.0),
//           child: Column(
//             mainAxisAlignment: MainAxisAlignment.start,
//             crossAxisAlignment: CrossAxisAlignment.start,
//             children: [
//               Text(
//                 'Menu',
//                 style: GoogleFonts.jotiOne(
//                   fontWeight: FontWeight.w300,
//                   fontSize: 24,
//                   color: black,
//                 ),
//               ),
//               const SizedBox(
//                 height: 30,
//               ),
//               Expanded(
//                 child: GridView.builder(
//                   gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
//                     crossAxisCount: 2,
//                     mainAxisSpacing: 80,
//                     crossAxisSpacing: 20,
//                     childAspectRatio: (268 / 164)
//                   ),
//                   itemBuilder: (context, index) {
//                     return MenuContainer(
//                       image: _menuItems[index].image,
//                       title: _menuItems[index].title,
//                       price: _menuItems[index].price,
//                       ingredints: _menuItems[index].ingredints,
//                     );
//                   },
//                 ),
//               ),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:nirvana_app/models/menu_model.dart';
import 'package:nirvana_app/utils/app_colors.dart';
import '../widgets/menu_container.dart';

class MenuScreen extends StatelessWidget {
  const MenuScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final List<MenuModel> _menuItems = [
      const MenuModel(
        image: 'assets/images/melkon.png',
        title: 'Melkon',
        price: '15',
        ingredints: 'Water melon juice, Yakult, Kiwi',
      ),
      const MenuModel(
        image: 'assets/images/mango.png',
        title: 'Cheezy Mango',
        price: '12',
        ingredints: 'Mango, cheese, macchiato cream',
      ),
      const MenuModel(
        image: 'assets/images/almond.png',
        title: 'Almond Hit',
        price: '12',
        ingredints: 'Milk tea, almond, macchiato, bubble',
      ),
      const MenuModel(
        image: 'assets/images/sour.png',
        title: 'Sour Power',
        price: '15',
        ingredints: 'Jasmine tea, passion fruit, atiso flower',
      ),
      const MenuModel(
        image: 'assets/images/splash.png',
        title: 'Boot Splash',
        price: '15',
        ingredints: 'Chocolate mousse, Oreo crumbs, Mint leaf',
      ),
      const MenuModel(
        image: 'assets/images/cactus.png',
        title: 'Cactus Cooler',
        price: '15',
        ingredints: 'Matcha cream, Whipped topping, Ice cubes',
      ),
    ];

    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Menu',
                style: GoogleFonts.jotiOne(
                  fontWeight: FontWeight.w300,
                  fontSize: 24,
                  color: black,
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Expanded(
                child: GridView.builder(
                  shrinkWrap: true,
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    mainAxisSpacing: 5, // Reduced spacing
                    crossAxisSpacing: 20, // Reduced spacing
                    childAspectRatio: (0.845/ 1.2), // Adjusted aspect ratio
                  ),
                  itemCount: _menuItems.length,
                  itemBuilder: (context, index) {
                    return MenuContainer(
                      image: _menuItems[index].image,
                      title: _menuItems[index].title,
                      price: _menuItems[index].price,
                      ingredints: _menuItems[index].ingredints,
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
