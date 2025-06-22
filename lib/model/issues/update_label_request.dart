import 'dart:convert';
import 'dart:io';
import 'package:meta/meta.dart';
import 'package:github/model_helpers.dart';
import 'package:github/model/issues/update_label_request.dart';
import 'package:github/model/issues/update_label_request.dart';
@immutable
class Issues&#x2F;updateLabelRequest {
    Issues&#x2F;updateLabelRequest(
        {  this.new_name, this.color, this.description,
         }
    );

    factory Issues&#x2F;updateLabelRequest.fromJson(Map<String, dynamic>
        json) {
        return Issues&#x2F;updateLabelRequest(
            new_name: json['new_name'] as String? ,
            color: json['color'] as String? ,
            description: json['description'] as String? ,
        );
    }

    /// Convenience to create a nullable type from a nullable json object.
    /// Useful when parsing optional fields.
    static Issues&#x2F;updateLabelRequest? maybeFromJson(Map<String, dynamic>? json) {
        if (json == null) {
            return null;
        }
        return Issues&#x2F;updateLabelRequest.fromJson(json);
    }

    final  String? new_name;
    final  String? color;
    final  String? description;


    Map<String, dynamic> toJson() {
        return {
            'new_name': new_name,
            'color': color,
            'description': description,
        };
    }

    @override
    int get hashCode =>
        Object.hash(
          new_name,
          color,
          description,
        );

    @override
    bool operator ==(Object other) {
        if (identical(this, other)) return true;
        return other is Issues&#x2F;updateLabelRequest
            && new_name == other.new_name
            && color == other.color
            && description == other.description
        ;
    }
}
