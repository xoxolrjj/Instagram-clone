import 'package:equatable/equatable.dart';


class User extends Equatable {
  final String profileUrl;
  final String nameUrl;
  final String captionUrl;

  User(
      {required this.profileUrl,
      required this.nameUrl,
      required this.captionUrl});

  @override
  List<Object?> get props => [this.profileUrl, this.nameUrl, this.captionUrl];
}
