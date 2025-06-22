import 'dart:convert';
import 'dart:io';
import 'package:meta/meta.dart';
import 'package:github/model_helpers.dart';
import 'package:github/model/nullable-community-health-file.dart';
import 'package:github/model/nullable-community-health-file.dart';
@immutable
class Nullable-community-health-file {
    Nullable-community-health-file(
        { required this.url,required this.html_url,
         }
    );

    factory Nullable-community-health-file.fromJson(Map<String, dynamic>
        json) {
        return Nullable-community-health-file(
            url: json['url'] as String ,
            html_url: json['html_url'] as String ,
        );
    }

    /// Convenience to create a nullable type from a nullable json object.
    /// Useful when parsing optional fields.
    static Nullable-community-health-file? maybeFromJson(Map<String, dynamic>? json) {
        if (json == null) {
            return null;
        }
        return Nullable-community-health-file.fromJson(json);
    }

    final String  url;
    final String  html_url;


    Map<String, dynamic> toJson() {
        return {
            'url': url,
            'html_url': html_url,
        };
    }

    @override
    int get hashCode =>
        Object.hash(
          url,
          html_url,
        );

    @override
    bool operator ==(Object other) {
        if (identical(this, other)) return true;
        return other is Nullable-community-health-file
            && url == other.url
            && html_url == other.html_url
        ;
    }
}
