import 'dart:convert';
import 'dart:io';
import 'package:meta/meta.dart';
import 'package:github/model_helpers.dart';
import 'package:github/model/simple-classroom-user.dart';
import 'package:github/model/simple-classroom-user.dart';
@immutable
class Simple-classroom-user {
    Simple-classroom-user(
        { required this.id,required this.login,required this.avatar_url,required this.html_url,
         }
    );

    factory Simple-classroom-user.fromJson(Map<String, dynamic>
        json) {
        return Simple-classroom-user(
            id: (json['id'] as int).toInt() ,
            login: json['login'] as String ,
            avatar_url: json['avatar_url'] as String ,
            html_url: json['html_url'] as String ,
        );
    }

    /// Convenience to create a nullable type from a nullable json object.
    /// Useful when parsing optional fields.
    static Simple-classroom-user? maybeFromJson(Map<String, dynamic>? json) {
        if (json == null) {
            return null;
        }
        return Simple-classroom-user.fromJson(json);
    }

    final int  id;
    final String  login;
    final String  avatar_url;
    final String  html_url;


    Map<String, dynamic> toJson() {
        return {
            'id': id,
            'login': login,
            'avatar_url': avatar_url,
            'html_url': html_url,
        };
    }

    @override
    int get hashCode =>
        Object.hash(
          id,
          login,
          avatar_url,
          html_url,
        );

    @override
    bool operator ==(Object other) {
        if (identical(this, other)) return true;
        return other is Simple-classroom-user
            && id == other.id
            && login == other.login
            && avatar_url == other.avatar_url
            && html_url == other.html_url
        ;
    }
}
