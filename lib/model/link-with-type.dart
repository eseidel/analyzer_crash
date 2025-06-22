import 'dart:convert';
import 'dart:io';
import 'package:meta/meta.dart';
import 'package:github/model_helpers.dart';
import 'package:github/model/link-with-type.dart';
import 'package:github/model/link-with-type.dart';
@immutable
class Link-with-type {
    Link-with-type(
        { required this.href,required this.type,
         }
    );

    factory Link-with-type.fromJson(Map<String, dynamic>
        json) {
        return Link-with-type(
            href: json['href'] as String ,
            type: json['type'] as String ,
        );
    }

    /// Convenience to create a nullable type from a nullable json object.
    /// Useful when parsing optional fields.
    static Link-with-type? maybeFromJson(Map<String, dynamic>? json) {
        if (json == null) {
            return null;
        }
        return Link-with-type.fromJson(json);
    }

    final String  href;
    final String  type;


    Map<String, dynamic> toJson() {
        return {
            'href': href,
            'type': type,
        };
    }

    @override
    int get hashCode =>
        Object.hash(
          href,
          type,
        );

    @override
    bool operator ==(Object other) {
        if (identical(this, other)) return true;
        return other is Link-with-type
            && href == other.href
            && type == other.type
        ;
    }
}
