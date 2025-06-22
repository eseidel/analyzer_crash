import 'dart:convert';
import 'dart:io';
import 'package:meta/meta.dart';
import 'package:github/model_helpers.dart';
import 'package:github/model/code-of-conduct-simple.dart';
import 'package:github/model/code-of-conduct-simple.dart';
@immutable
class Code-of-conduct-simple {
    Code-of-conduct-simple(
        { required this.url,required this.key,required this.name,required this.html_url,
         }
    );

    factory Code-of-conduct-simple.fromJson(Map<String, dynamic>
        json) {
        return Code-of-conduct-simple(
            url: json['url'] as String ,
            key: json['key'] as String ,
            name: json['name'] as String ,
            html_url: json['html_url'] as String ,
        );
    }

    /// Convenience to create a nullable type from a nullable json object.
    /// Useful when parsing optional fields.
    static Code-of-conduct-simple? maybeFromJson(Map<String, dynamic>? json) {
        if (json == null) {
            return null;
        }
        return Code-of-conduct-simple.fromJson(json);
    }

    final String  url;
    final String  key;
    final String  name;
    final String  html_url;


    Map<String, dynamic> toJson() {
        return {
            'url': url,
            'key': key,
            'name': name,
            'html_url': html_url,
        };
    }

    @override
    int get hashCode =>
        Object.hash(
          url,
          key,
          name,
          html_url,
        );

    @override
    bool operator ==(Object other) {
        if (identical(this, other)) return true;
        return other is Code-of-conduct-simple
            && url == other.url
            && key == other.key
            && name == other.name
            && html_url == other.html_url
        ;
    }
}
