import 'dart:convert';

import 'package:dart_async/modelos/user_types_mais_facil.dart';

// toMap, fromMap, toJson e fromJson criados pelo plugin
// Dart Data Class Generator
class UserMaisFacil {
  final String id;
  final String name;
  final String userName;
  final List<UserTypesMaisFacil> userTypes;

  UserMaisFacil({
    required this.id,
    required this.name,
    required this.userName,
    required this.userTypes,
  });

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'name': name,
      'username': userName,
      'user_types': userTypes.map((x) => x.toMap()).toList(),
    };
  }

  factory UserMaisFacil.fromMap(Map<String, dynamic> map) {
    return UserMaisFacil(
      id: map['id'],
      name: map['name'],
      userName: map['username'],
      userTypes: List<UserTypesMaisFacil>.from(
        map['user_types']?.map((x) => UserTypesMaisFacil.fromMap(x)) ??
            const [],
      ),
    );
  }

  String toJson() => json.encode(toMap());

  factory UserMaisFacil.fromJson(String source) =>
      UserMaisFacil.fromMap(json.decode(source));

  @override
  String toString() {
    return 'UserMaisFacil(id: $id, name: $name, userName: $userName, userTypes: $userTypes)';
  }
}
