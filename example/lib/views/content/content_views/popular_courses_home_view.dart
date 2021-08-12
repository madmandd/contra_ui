import 'package:contra_ui/contra_ui.dart';
import 'package:example/views/content/content_views/popular_courses_view.dart';
import 'package:flutter/material.dart';

class PopularCoursesHomeView extends StatefulWidget {
  const PopularCoursesHomeView({Key? key}) : super(key: key);

  @override
  _PopularCoursesHomeViewState createState() => _PopularCoursesHomeViewState();
}

class _PopularCoursesHomeViewState extends State<PopularCoursesHomeView> {
  int _currentIndex = 0;

  final List<Widget> _childrenWidgets = [
    PopularCoursesView(),
    PopularCoursesView(),
    PopularCoursesView(),
    PopularCoursesView()
  ];

  void _onTap(int index) {
    setState(() {
      _currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: _childrenWidgets.elementAt(_currentIndex),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
          BottomNavigationBarItem(icon: Icon(Icons.search), label: "Search"),
          BottomNavigationBarItem(icon: Icon(Icons.chat_bubble), label: "Chat"),
          BottomNavigationBarItem(icon: Icon(Icons.info), label: "About"),

        ],
        onTap: _onTap,
        currentIndex: _currentIndex,
        selectedItemColor: ContraColor.wood_smoke,
        unselectedItemColor: ContraColor.trout,
        showSelectedLabels: true,
        showUnselectedLabels: true,
        selectedIconTheme: IconThemeData(color: ContraColor.wood_smoke, opacity: 1),
        unselectedIconTheme: IconThemeData(color: ContraColor.trout, opacity: 0.6),
        selectedLabelStyle: TextStyle(
          color: ContraColor.wood_smoke,
          fontSize: 12,
          fontWeight: FontWeight.w800,
        ),
        unselectedLabelStyle: TextStyle(
          color: ContraColor.trout,
          fontSize: 12,
          fontWeight: FontWeight.w800,
        ),
      ),
    );
  }
}
