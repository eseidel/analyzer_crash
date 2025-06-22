import 'dart:convert';
import 'dart:io';
import 'package:meta/meta.dart';
import 'package:github/model_helpers.dart';
import 'package:github/model/nullable-issue_labels_inner.dart';
import 'package:github/model/nullable-issue_labels_inner.dart';
@immutable
class Nullable-issueLabelsInner {
    Nullable-issueLabelsInner(
        {  this.id, this.node_id, this.url, this.name, this.description, this.color, this.default,
         }
    );

    factory Nullable-issueLabelsInner.fromJson(Map<String, dynamic>
        json) {
        return Nullable-issueLabelsInner(
            id: (json['id'] as int?).toInt() ,
            node_id: json['node_id'] as String? ,
            url: json['url'] as String? ,
            name: json['name'] as String? ,
            description: json['description'] as String? ,
            color: json['color'] as String? ,
            default: (json['default'] as bool?) ,
        );
    }

    /// Convenience to create a nullable type from a nullable json object.
    /// Useful when parsing optional fields.
    static Nullable-issueLabelsInner? maybeFromJson(Map<String, dynamic>? json) {
        if (json == null) {
            return null;
        }
        return Nullable-issueLabelsInner.fromJson(json);
    }

    final  int? id;
    final  String? node_id;
    final  String? url;
    final  String? name;
    final  String? description;
    final  String? color;
    final  bool? default;


    Map<String, dynamic> toJson() {
        return {
            'id': id,
            'node_id': node_id,
            'url': url,
            'name': name,
            'description': description,
            'color': color,
            'default': default,
        };
    }

    @override
    int get hashCode =>
        Object.hash(
          id,
          node_id,
          url,
          name,
          description,
          color,
          default,
        );

    @override
    bool operator ==(Object other) {
        if (identical(this, other)) return true;
        return other is Nullable-issueLabelsInner
            && id == other.id
            && node_id == other.node_id
            && url == other.url
            && name == other.name
            && description == other.description
            && color == other.color
            && default == other.default
        ;
    }
}
