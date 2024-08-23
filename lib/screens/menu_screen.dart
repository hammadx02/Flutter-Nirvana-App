import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:nirvana_app/models/menu_model.dart';
import 'package:nirvana_app/utils/app_colors.dart';
import '../widgets/menu_container.dart';

class MenuScreen extends StatefulWidget {
  const MenuScreen({super.key});

  @override
  State<MenuScreen> createState() => _MenuScreenState();
}

class _MenuScreenState extends State<MenuScreen> with TickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> _fadeInAnimation;
  late Animation<Offset> _slideUpAnimation;

  @override
  void initState() {
    _controller = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 2),
    )..forward();

    _fadeInAnimation = CurvedAnimation(
      parent: _controller,
      curve: Curves.easeIn,
    );

    _slideUpAnimation = Tween<Offset>(
      begin: const Offset(0, 0.3),
      end: Offset.zero,
    ).animate(
      CurvedAnimation(
        parent: _controller,
        curve: Curves.easeOut,
      ),
    );
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final List<MenuModel> menuItems = [
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
              FadeTransition(
                opacity: _fadeInAnimation,
                child: SlideTransition(
                  position: _slideUpAnimation,
                  child: Text(
                    'Menu',
                    style: GoogleFonts.jotiOne(
                      fontWeight: FontWeight.w300,
                      fontSize: 24,
                      color: black,
                    ),
                  ),
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
                    mainAxisSpacing: 5,
                    crossAxisSpacing: 20,
                    childAspectRatio: (0.845 / 1.2),
                  ),
                  itemCount: menuItems.length,
                  itemBuilder: (context, index) {
                    final animationDelay = 0.2 * index;
                    final itemController = AnimationController(
                      vsync: this,
                      duration: const Duration(seconds: 2),
                    )..forward();

                    final fadeInAnimation = CurvedAnimation(
                      parent: itemController,
                      curve: Interval(
                        animationDelay,
                        1.0,
                        curve: Curves.easeIn,
                      ),
                    );

                    final slideUpAnimation = Tween<Offset>(
                      begin: const Offset(0, 0.3),
                      end: Offset.zero,
                    ).animate(
                      CurvedAnimation(
                        parent: itemController,
                        curve: Interval(animationDelay, 1.0,
                            curve: Curves.easeOut),
                      ),
                    );
                    return FadeTransition(
                      opacity: fadeInAnimation,
                      child: SlideTransition(
                        position: slideUpAnimation,
                        child: MenuContainer(
                          image: menuItems[index].image,
                          title: menuItems[index].title,
                          price: menuItems[index].price,
                          ingredints: menuItems[index].ingredints,
                        ),
                      ),
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
