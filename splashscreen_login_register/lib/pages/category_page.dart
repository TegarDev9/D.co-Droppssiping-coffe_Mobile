import 'package:flutter/material.dart';
import 'package:collapsible_sidebar/collapsible_sidebar.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:line_icons/line_icons.dart';
import 'package:login_register/pages/pages.dart';
import 'package:login_register/shared/shared.dart';
import 'package:login_register/widget/product_card.dart';

void main() {
  runApp(const CategoryPage());
}

class CategoryPage extends StatelessWidget {
  const CategoryPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: CollapsibleSideBar(),
    );
  }
}

class CollapsibleSideBar extends StatefulWidget {
  const CollapsibleSideBar({Key? key}) : super(key: key);

  @override
  State<CollapsibleSideBar> createState() => _CollapsibleSideBarState();
}

class _CollapsibleSideBarState extends State<CollapsibleSideBar> {
  late List<CollapsibleItem> _items;
  late String _title;

  @override
  void initState() {
    super.initState();
    _items = _generateItems;
    _title = _items.firstWhere((item) => item.isSelected).text;
  }

  List<CollapsibleItem> get _generateItems {
    return [
      /// Search
      CollapsibleItem(
        text: 'Recommendation',
        icon: Icons.recommend_sharp,
        onPressed: () => setState(() => _title = 'Recomendation'),
      ),

      /// Dashboard
      CollapsibleItem(
          text: 'Best Seller',
          icon: Icons.sell_rounded,
          onPressed: () => setState(
                () => _title = 'Best Seller',
              ),
          isSelected: true),

      /// Team
      CollapsibleItem(
        text: 'Lowest Price',
        icon: LineIcons.buyNLarge,
        onPressed: () => setState(
          () => _title = 'Lowest Price',
        ),
      ),

      /// Chat
      CollapsibleItem(
        text: 'Highest Price',
        icon: LineIcons.buysellads,
        onPressed: () => setState(
          () => _title = 'Highest Price',
        ),
      ),

      /// Followers
      CollapsibleItem(
        text: 'Recents',
        icon: Icons.recent_actors_rounded,
        onPressed: () => setState(
          () => _title = 'Recents',
        ),
      ),

      /// Sign Out'
      CollapsibleItem(
        text: 'Sign Out',
        icon: LineIcons.alternateSignOut,
        onPressed: () => setState(
          () => _title = 'Logout',
        ),
      ),
    ];
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          backgroundColor: const Color(0xffE6E9EE),
          body: CollapsibleSidebar(
            screenPadding: 10.0,
            duration: const Duration(milliseconds: 200),
            curve: Curves.fastOutSlowIn,
            onHoverPointer: SystemMouseCursors.click,
            onTitleTap: () {
              ScaffoldMessenger.of(context).showSnackBar(
                  const SnackBar(content: Text('Dropshipper Coffee')));
            },
            showToggleButton: true,
            borderRadius: 30,
            title: "Dropshipper Coffee",
            titleBack: true,
            titleStyle: GoogleFonts.lato(fontSize: 22),
            unselectedIconColor: Color.fromARGB(97, 255, 255, 255),
            unselectedTextColor: Colors.white38,
            selectedIconBox: Color.fromARGB(155, 206, 184, 17),
            selectedIconColor: const Color(0xffffffff),
            selectedTextColor: const Color(0xffffffff),
            toggleTitleStyle:
                GoogleFonts.oxygen(fontWeight: FontWeight.w400, fontSize: 20),
            textStyle:
                GoogleFonts.oxygen(fontWeight: FontWeight.w400, fontSize: 18),
            sidebarBoxShadow: [],
            backgroundColor: Color.fromARGB(191, 187, 108, 12),
            body: _body(),
            items: _items,
          )),
    );
  }

  Stack _body() {
    return Stack(children: [
      Positioned(
        right: -40,
        top: 90,
        child: RotationTransition(
            turns: const AlwaysStoppedAnimation(90 / 360),
            child: SizedBox(
              width: 200,
              height: 60,
              child: Center(
                child: FittedBox(
                  child: Text(
                    _title,
                    style: GoogleFonts.oxanium(
                      fontSize: 35,
                      color: Color.fromARGB(255, 206, 184, 17),
                    ),
                  ),
                ),
              ),
            )),
      ),
    ]);
  }
}
