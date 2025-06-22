import 'dart:convert';
import 'dart:io';
import 'package:meta/meta.dart';
import 'package:github/model_helpers.dart';
import 'package:github/model/content-traffic.dart';
import 'package:github/model/content-traffic.dart';
@immutable
class Content-traffic {
    Content-traffic(
        { required this.path,required this.title,required this.count,required this.uniques,
         }
    );

    factory Content-traffic.fromJson(Map<String, dynamic>
        json) {
        return Content-traffic(
            path: json['path'] as String ,
            title: json['title'] as String ,
            count: (json['count'] as int).toInt() ,
            uniques: (json['uniques'] as int).toInt() ,
        );
    }

    /// Convenience to create a nullable type from a nullable json object.
    /// Useful when parsing optional fields.
    static Content-traffic? maybeFromJson(Map<String, dynamic>? json) {
        if (json == null) {
            return null;
        }
        return Content-traffic.fromJson(json);
    }

    final String  path;
    final String  title;
    final int  count;
    final int  uniques;


    Map<String, dynamic> toJson() {
        return {
            'path': path,
            'title': title,
            'count': count,
            'uniques': uniques,
        };
    }

    @override
    int get hashCode =>
        Object.hash(
          path,
          title,
          count,
          uniques,
        );

    @override
    bool operator ==(Object other) {
        if (identical(this, other)) return true;
        return other is Content-traffic
            && path == other.path
            && title == other.title
            && count == other.count
            && uniques == other.uniques
        ;
    }
}
