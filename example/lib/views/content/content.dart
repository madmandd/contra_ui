import 'dart:ui';

class InviteDetail {
  final String name;
  final String designation;
  final String profile;
  final bool isInvited;

  const InviteDetail({
    required this.name,
    required this.designation,
    required this.profile,
    required this.isInvited,
  });
}

class User {
  final String name;
  final String designation;
  final String profile;
  final Color backgroundColor;
  final Color textColor;

  const User({
    required this.name,
    required this.designation,
    required this.profile,
    required this.textColor,
    required this.backgroundColor,
  });
}


class Author {
  final String designation;
  final String name;
  final String path;

  const Author({required this.designation, required this.name, required this.path});
}

class AuthorText {
  final String subject;
  final String hour;
  final Color backgroundColor;

  const AuthorText({ required this.backgroundColor, required this.hour, required this.subject });
}