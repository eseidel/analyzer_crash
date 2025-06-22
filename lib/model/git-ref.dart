import 'dart:convert';
import 'dart:io';
import 'package:meta/meta.dart';
import 'package:github/model_helpers.dart';
import 'package:github/model/git-ref.dart';
import 'package:github/model/git-ref_object.dart';
import 'package:github/model/git-ref.dart';
import 'package:github/model/git-ref_object.dart';
@immutable
class Git-ref {
    Git-ref(
        { required this.ref,required this.node_id,required this.url,required this.object,
         }
    );

    factory Git-ref.fromJson(Map<String, dynamic>
        json) {
        return Git-ref(
            ref: json['ref'] as String ,
            node_id: json['node_id'] as String ,
            url: json['url'] as String ,
            object: Git-refObject.fromJson(json['object'] as Map<String, dynamic>) ,
        );
    }

    /// Convenience to create a nullable type from a nullable json object.
    /// Useful when parsing optional fields.
    static Git-ref? maybeFromJson(Map<String, dynamic>? json) {
        if (json == null) {
            return null;
        }
        return Git-ref.fromJson(json);
    }

    final String  ref;
    final String  node_id;
    final String  url;
    final Git-refObject  object;


    Map<String, dynamic> toJson() {
        return {
            'ref': ref,
            'node_id': node_id,
            'url': url,
            'object': object.toJson(),
        };
    }

    @override
    int get hashCode =>
        Object.hash(
          ref,
          node_id,
          url,
          object,
        );

    @override
    bool operator ==(Object other) {
        if (identical(this, other)) return true;
        return other is Git-ref
            && ref == other.ref
            && node_id == other.node_id
            && url == other.url
            && object == other.object
        ;
    }
}
