import 'dart:convert';
import 'dart:io';
import 'package:meta/meta.dart';
import 'package:github/model_helpers.dart';
import 'package:github/model/gitignore-template.dart';
import 'package:github/model/gitignore-template.dart';
@immutable
class Gitignore-template {
    Gitignore-template(
        { required this.name,required this.source,
         }
    );

    factory Gitignore-template.fromJson(Map<String, dynamic>
        json) {
        return Gitignore-template(
            name: json['name'] as String ,
            source: json['source'] as String ,
        );
    }

    /// Convenience to create a nullable type from a nullable json object.
    /// Useful when parsing optional fields.
    static Gitignore-template? maybeFromJson(Map<String, dynamic>? json) {
        if (json == null) {
            return null;
        }
        return Gitignore-template.fromJson(json);
    }

    final String  name;
    final String  source;


    Map<String, dynamic> toJson() {
        return {
            'name': name,
            'source': source,
        };
    }

    @override
    int get hashCode =>
        Object.hash(
          name,
          source,
        );

    @override
    bool operator ==(Object other) {
        if (identical(this, other)) return true;
        return other is Gitignore-template
            && name == other.name
            && source == other.source
        ;
    }
}
