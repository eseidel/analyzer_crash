import 'dart:convert';
import 'dart:io';
import 'package:meta/meta.dart';
import 'package:github/model_helpers.dart';
import 'package:github/model/simple-classroom-organization.dart';
import 'package:github/model/simple-classroom-organization.dart';
@immutable
class Simple-classroom-organization {
    Simple-classroom-organization(
        { required this.id,required this.login,required this.node_id,required this.html_url,required this.name,required this.avatar_url,
         }
    );

    factory Simple-classroom-organization.fromJson(Map<String, dynamic>
        json) {
        return Simple-classroom-organization(
            id: (json['id'] as int).toInt() ,
            login: json['login'] as String ,
            node_id: json['node_id'] as String ,
            html_url: json['html_url'] as String ,
            name: json['name'] as String ,
            avatar_url: json['avatar_url'] as String ,
        );
    }

    /// Convenience to create a nullable type from a nullable json object.
    /// Useful when parsing optional fields.
    static Simple-classroom-organization? maybeFromJson(Map<String, dynamic>? json) {
        if (json == null) {
            return null;
        }
        return Simple-classroom-organization.fromJson(json);
    }

    final int  id;
    final String  login;
    final String  node_id;
    final String  html_url;
    final String  name;
    final String  avatar_url;


    Map<String, dynamic> toJson() {
        return {
            'id': id,
            'login': login,
            'node_id': node_id,
            'html_url': html_url,
            'name': name,
            'avatar_url': avatar_url,
        };
    }

    @override
    int get hashCode =>
        Object.hash(
          id,
          login,
          node_id,
          html_url,
          name,
          avatar_url,
        );

    @override
    bool operator ==(Object other) {
        if (identical(this, other)) return true;
        return other is Simple-classroom-organization
            && id == other.id
            && login == other.login
            && node_id == other.node_id
            && html_url == other.html_url
            && name == other.name
            && avatar_url == other.avatar_url
        ;
    }
}
