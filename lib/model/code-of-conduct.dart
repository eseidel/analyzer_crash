import 'dart:convert';
import 'dart:io';
import 'package:meta/meta.dart';
import 'package:github/model_helpers.dart';
import 'package:github/model/code-of-conduct.dart';
import 'package:github/model/code-of-conduct.dart';
@immutable
class Code-of-conduct {
    Code-of-conduct(
        { required this.key,required this.name,required this.url, this.body,required this.html_url,
         }
    );

    factory Code-of-conduct.fromJson(Map<String, dynamic>
        json) {
        return Code-of-conduct(
            key: json['key'] as String ,
            name: json['name'] as String ,
            url: json['url'] as String ,
            body: json['body'] as String? ,
            html_url: json['html_url'] as String ,
        );
    }

    /// Convenience to create a nullable type from a nullable json object.
    /// Useful when parsing optional fields.
    static Code-of-conduct? maybeFromJson(Map<String, dynamic>? json) {
        if (json == null) {
            return null;
        }
        return Code-of-conduct.fromJson(json);
    }

    final String  key;
    final String  name;
    final String  url;
    final  String? body;
    final String  html_url;


    Map<String, dynamic> toJson() {
        return {
            'key': key,
            'name': name,
            'url': url,
            'body': body,
            'html_url': html_url,
        };
    }

    @override
    int get hashCode =>
        Object.hash(
          key,
          name,
          url,
          body,
          html_url,
        );

    @override
    bool operator ==(Object other) {
        if (identical(this, other)) return true;
        return other is Code-of-conduct
            && key == other.key
            && name == other.name
            && url == other.url
            && body == other.body
            && html_url == other.html_url
        ;
    }
}
