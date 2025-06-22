import 'dart:convert';
import 'dart:io';
import 'package:meta/meta.dart';
import 'package:github/model_helpers.dart';
import 'package:github/model/simple-classroom.dart';
import 'package:github/model/simple-classroom.dart';
@immutable
class Simple-classroom {
    Simple-classroom(
        { required this.id,required this.name,required this.archived,required this.url,
         }
    );

    factory Simple-classroom.fromJson(Map<String, dynamic>
        json) {
        return Simple-classroom(
            id: (json['id'] as int).toInt() ,
            name: json['name'] as String ,
            archived: (json['archived'] as bool) ,
            url: json['url'] as String ,
        );
    }

    /// Convenience to create a nullable type from a nullable json object.
    /// Useful when parsing optional fields.
    static Simple-classroom? maybeFromJson(Map<String, dynamic>? json) {
        if (json == null) {
            return null;
        }
        return Simple-classroom.fromJson(json);
    }

    final int  id;
    final String  name;
    final bool  archived;
    final String  url;


    Map<String, dynamic> toJson() {
        return {
            'id': id,
            'name': name,
            'archived': archived,
            'url': url,
        };
    }

    @override
    int get hashCode =>
        Object.hash(
          id,
          name,
          archived,
          url,
        );

    @override
    bool operator ==(Object other) {
        if (identical(this, other)) return true;
        return other is Simple-classroom
            && id == other.id
            && name == other.name
            && archived == other.archived
            && url == other.url
        ;
    }
}
