import 'dart:convert';
import 'dart:io';
import 'package:meta/meta.dart';
import 'package:github/model_helpers.dart';
import 'package:github/model/classroom.dart';
import 'package:github/model/simple-classroom-organization.dart';
import 'package:github/model/classroom.dart';
import 'package:github/model/simple-classroom-organization.dart';
@immutable
class Classroom {
    Classroom(
        { required this.id,required this.name,required this.archived,required this.organization,required this.url,
         }
    );

    factory Classroom.fromJson(Map<String, dynamic>
        json) {
        return Classroom(
            id: (json['id'] as int).toInt() ,
            name: json['name'] as String ,
            archived: (json['archived'] as bool) ,
            organization: Simple-classroom-organization.fromJson(json['organization'] as Map<String, dynamic>) ,
            url: json['url'] as String ,
        );
    }

    /// Convenience to create a nullable type from a nullable json object.
    /// Useful when parsing optional fields.
    static Classroom? maybeFromJson(Map<String, dynamic>? json) {
        if (json == null) {
            return null;
        }
        return Classroom.fromJson(json);
    }

    final int  id;
    final String  name;
    final bool  archived;
    final Simple-classroom-organization  organization;
    final String  url;


    Map<String, dynamic> toJson() {
        return {
            'id': id,
            'name': name,
            'archived': archived,
            'organization': organization.toJson(),
            'url': url,
        };
    }

    @override
    int get hashCode =>
        Object.hash(
          id,
          name,
          archived,
          organization,
          url,
        );

    @override
    bool operator ==(Object other) {
        if (identical(this, other)) return true;
        return other is Classroom
            && id == other.id
            && name == other.name
            && archived == other.archived
            && organization == other.organization
            && url == other.url
        ;
    }
}
