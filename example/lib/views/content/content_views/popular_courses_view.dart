import 'package:contra_ui/contra_ui.dart';
import 'package:example/views/content/content.dart';
import 'package:example/views/content/popular_courses_item.dart';
import 'package:flutter/material.dart';

class PopularCoursesView extends StatefulWidget {
  const PopularCoursesView({Key? key}) : super(key: key);

  @override
  _PopularCoursesViewState createState() => _PopularCoursesViewState();
}

class _PopularCoursesViewState extends State<PopularCoursesView> {
  List<Author> authors = [];
  List<AuthorText> subjects = [];

  @override
  void initState() {
    super.initState();
    authors.add(
      Author(
          designation: 'Panet Designer',
          name: 'Bill Rizer',
          path: '../assets/icons/ic_avatar_2.svg'),
    );
    authors.add(Author(
        name: "Bill Rizer",
        designation: "Planet Designer",
        path: "../assets/icons/ic_avatar.svg"));
    authors.add(Author(
        name: "Konami",
        designation: "Xenon Creator",
        path: "../assets/icons/ic_avatar_2.svg"));
    authors.add(Author(
        name: "Hard Cops",
        designation: "Bill Rizer",
        path: "../assets/icons/ic_avatar_3.svg"));
    authors.add(Author(
        name: "Rogue Corp",
        designation: "Lancy Neo",
        path: "../assets/icons/ic_avatar.svg"));
    authors.add(Author(
        name: " Genbei Yagy ",
        designation: "Planet Designer",
        path: "../assets/icons/ic_avatar_2.svg"));
    subjects.add(AuthorText(
        hour: "2hrs",
        subject: "British English",
        backgroundColor: ContraColor.lightening_yellow));
    subjects.add(AuthorText(
        hour: "2hrs",
        subject: "Electronics",
        backgroundColor: ContraColor.flamingo));
    subjects.add(AuthorText(
        hour: "2hrs",
        subject: "Cooking",
        backgroundColor: ContraColor.persian_blue));
    subjects.add(AuthorText(
        hour: "2hrs",
        subject: "British English",
        backgroundColor: ContraColor.caribbean_color));
    subjects.add(AuthorText(
        hour: "2hrs",
        subject: "British English",
        backgroundColor: ContraColor.pink_salomn));
    subjects.add(AuthorText(
        hour: "2hrs",
        subject: "British English",
        backgroundColor: ContraColor.lightening_yellow));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: ContraAppBar(
        height: 180,
        title: ContraHeader(
          firstText: 'Popular',
          secondText: 'Courses',
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: 230,
              child: ListView.builder(
                itemCount: subjects.length,
                shrinkWrap: true,
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) {
                  return PopularCourseAuthorItem(author: subjects[index]);
                },
              ),
            ),
            Column(
              children: [
                Padding(
                  padding: EdgeInsets.only(left: 24, right: 24, top: 24),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      ContraText(
                        text: 'Popular Teacher',
                        fontSize: 15,
                        textColor: ContraColor.santas_gray_10,
                        fontWeight: FontWeight.bold,
                        alignment: Alignment.centerLeft,
                        textAlign: TextAlign.left,
                      ),
                      ContraText(
                        text: 'See all',
                        fontSize: 15,
                        textColor: ContraColor.flamingo,
                        fontWeight: FontWeight.bold,
                        alignment: Alignment.centerLeft,
                        textAlign: TextAlign.left,
                      ),
                    ],
                  ),
                ),
                ListView.builder(
                  padding: EdgeInsets.all(24.0),
                  shrinkWrap: true,
                  physics: NeverScrollableScrollPhysics(),
                  itemCount: authors.length,
                  itemBuilder: (BuildContext context, int index) {
                    return PopularCoursesItem(author: authors[index]);
                  },
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
