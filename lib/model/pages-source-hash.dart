import 'dart:convert';
import 'dart:io';
import 'package:meta/meta.dart';
import 'package:github/model_helpers.dart';
import 'package:github/model/pages-source-hash.dart';
import 'package:github/model/pages-source-hash.dart';
@immutable
class Pages-source-hash {
    Pages-source-hash(
        { required this.branch,required this.path,
         }
    );

    factory Pages-source-hash.fromJson(Map<String, dynamic>
        json) {
        return Pages-source-hash(
            branch: json['branch'] as String ,
            path: json['path'] as String ,
        );
    }

    /// Convenience to create a nullable type from a nullable json object.
    /// Useful when parsing optional fields.
    static Pages-source-hash? maybeFromJson(Map<String, dynamic>? json) {
        if (json == null) {
            return null;
        }
        return Pages-source-hash.fromJson(json);
    }

    final String  branch;
    final String  path;


    Map<String, dynamic> toJson() {
        return {
            'branch': branch,
            'path': path,
        };
    }

    @override
    int get hashCode =>
        Object.hash(
          branch,
          path,
        );

    @override
    bool operator ==(Object other) {
        if (identical(this, other)) return true;
        return other is Pages-source-hash
            && branch == other.branch
            && path == other.path
        ;
    }
}
