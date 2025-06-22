import 'dart:convert';
import 'dart:io';
import 'package:meta/meta.dart';
import 'package:github/model_helpers.dart';
import 'package:github/model/dependabot-alert-package.dart';
import 'package:github/model/dependabot-alert-package.dart';
@immutable
class Dependabot-alert-package {
    Dependabot-alert-package(
        { required this.ecosystem,required this.name,
         }
    );

    factory Dependabot-alert-package.fromJson(Map<String, dynamic>
        json) {
        return Dependabot-alert-package(
            ecosystem: json['ecosystem'] as String ,
            name: json['name'] as String ,
        );
    }

    /// Convenience to create a nullable type from a nullable json object.
    /// Useful when parsing optional fields.
    static Dependabot-alert-package? maybeFromJson(Map<String, dynamic>? json) {
        if (json == null) {
            return null;
        }
        return Dependabot-alert-package.fromJson(json);
    }

    final String  ecosystem;
    final String  name;


    Map<String, dynamic> toJson() {
        return {
            'ecosystem': ecosystem,
            'name': name,
        };
    }

    @override
    int get hashCode =>
        Object.hash(
          ecosystem,
          name,
        );

    @override
    bool operator ==(Object other) {
        if (identical(this, other)) return true;
        return other is Dependabot-alert-package
            && ecosystem == other.ecosystem
            && name == other.name
        ;
    }
}
