import 'dart:convert';
import 'dart:io';
import 'package:meta/meta.dart';
import 'package:github/model_helpers.dart';
import 'package:github/model/issues/update_request_labels_inner.dart';
import 'package:github/model/issues/update_request_labels_inner.dart';
@immutable
class Issues&#x2F;updateRequestLabelsInner {
    Issues&#x2F;updateRequestLabelsInner(
        {  this.id, this.name, this.description, this.color,
         }
    );

    factory Issues&#x2F;updateRequestLabelsInner.fromJson(Map<String, dynamic>
        json) {
        return Issues&#x2F;updateRequestLabelsInner(
            id: (json['id'] as int?).toInt() ,
            name: json['name'] as String? ,
            description: json['description'] as String? ,
            color: json['color'] as String? ,
        );
    }

    /// Convenience to create a nullable type from a nullable json object.
    /// Useful when parsing optional fields.
    static Issues&#x2F;updateRequestLabelsInner? maybeFromJson(Map<String, dynamic>? json) {
        if (json == null) {
            return null;
        }
        return Issues&#x2F;updateRequestLabelsInner.fromJson(json);
    }

    final  int? id;
    final  String? name;
    final  String? description;
    final  String? color;


    Map<String, dynamic> toJson() {
        return {
            'id': id,
            'name': name,
            'description': description,
            'color': color,
        };
    }

    @override
    int get hashCode =>
        Object.hash(
          id,
          name,
          description,
          color,
        );

    @override
    bool operator ==(Object other) {
        if (identical(this, other)) return true;
        return other is Issues&#x2F;updateRequestLabelsInner
            && id == other.id
            && name == other.name
            && description == other.description
            && color == other.color
        ;
    }
}
