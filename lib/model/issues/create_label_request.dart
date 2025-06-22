import 'dart:convert';
import 'dart:io';
import 'package:meta/meta.dart';
import 'package:github/model_helpers.dart';
import 'package:github/model/issues/create_label_request.dart';
import 'package:github/model/issues/create_label_request.dart';
@immutable
class Issues&#x2F;createLabelRequest {
    Issues&#x2F;createLabelRequest(
        { required this.name, this.color, this.description,
         }
    );

    factory Issues&#x2F;createLabelRequest.fromJson(Map<String, dynamic>
        json) {
        return Issues&#x2F;createLabelRequest(
            name: json['name'] as String ,
            color: json['color'] as String? ,
            description: json['description'] as String? ,
        );
    }

    /// Convenience to create a nullable type from a nullable json object.
    /// Useful when parsing optional fields.
    static Issues&#x2F;createLabelRequest? maybeFromJson(Map<String, dynamic>? json) {
        if (json == null) {
            return null;
        }
        return Issues&#x2F;createLabelRequest.fromJson(json);
    }

    final String  name;
    final  String? color;
    final  String? description;


    Map<String, dynamic> toJson() {
        return {
            'name': name,
            'color': color,
            'description': description,
        };
    }

    @override
    int get hashCode =>
        Object.hash(
          name,
          color,
          description,
        );

    @override
    bool operator ==(Object other) {
        if (identical(this, other)) return true;
        return other is Issues&#x2F;createLabelRequest
            && name == other.name
            && color == other.color
            && description == other.description
        ;
    }
}
