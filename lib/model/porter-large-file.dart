import 'dart:convert';
import 'dart:io';
import 'package:meta/meta.dart';
import 'package:github/model_helpers.dart';
import 'package:github/model/porter-large-file.dart';
import 'package:github/model/porter-large-file.dart';
@immutable
class Porter-large-file {
    Porter-large-file(
        { required this.ref_name,required this.path,required this.oid,required this.size,
         }
    );

    factory Porter-large-file.fromJson(Map<String, dynamic>
        json) {
        return Porter-large-file(
            ref_name: json['ref_name'] as String ,
            path: json['path'] as String ,
            oid: json['oid'] as String ,
            size: (json['size'] as int).toInt() ,
        );
    }

    /// Convenience to create a nullable type from a nullable json object.
    /// Useful when parsing optional fields.
    static Porter-large-file? maybeFromJson(Map<String, dynamic>? json) {
        if (json == null) {
            return null;
        }
        return Porter-large-file.fromJson(json);
    }

    final String  ref_name;
    final String  path;
    final String  oid;
    final int  size;


    Map<String, dynamic> toJson() {
        return {
            'ref_name': ref_name,
            'path': path,
            'oid': oid,
            'size': size,
        };
    }

    @override
    int get hashCode =>
        Object.hash(
          ref_name,
          path,
          oid,
          size,
        );

    @override
    bool operator ==(Object other) {
        if (identical(this, other)) return true;
        return other is Porter-large-file
            && ref_name == other.ref_name
            && path == other.path
            && oid == other.oid
            && size == other.size
        ;
    }
}
