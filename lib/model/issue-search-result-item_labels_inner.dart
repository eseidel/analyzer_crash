import 'dart:convert';
import 'dart:io';
import 'package:meta/meta.dart';
import 'package:github/model_helpers.dart';
import 'package:github/model/issue-search-result-item_labels_inner.dart';
import 'package:github/model/issue-search-result-item_labels_inner.dart';
@immutable
class Issue-search-result-itemLabelsInner {
    Issue-search-result-itemLabelsInner(
        {  this.id, this.node_id, this.url, this.name, this.color, this.default, this.description,
         }
    );

    factory Issue-search-result-itemLabelsInner.fromJson(Map<String, dynamic>
        json) {
        return Issue-search-result-itemLabelsInner(
            id: (json['id'] as int?).toInt() ,
            node_id: json['node_id'] as String? ,
            url: json['url'] as String? ,
            name: json['name'] as String? ,
            color: json['color'] as String? ,
            default: (json['default'] as bool?) ,
            description: json['description'] as String? ,
        );
    }

    /// Convenience to create a nullable type from a nullable json object.
    /// Useful when parsing optional fields.
    static Issue-search-result-itemLabelsInner? maybeFromJson(Map<String, dynamic>? json) {
        if (json == null) {
            return null;
        }
        return Issue-search-result-itemLabelsInner.fromJson(json);
    }

    final  int? id;
    final  String? node_id;
    final  String? url;
    final  String? name;
    final  String? color;
    final  bool? default;
    final  String? description;


    Map<String, dynamic> toJson() {
        return {
            'id': id,
            'node_id': node_id,
            'url': url,
            'name': name,
            'color': color,
            'default': default,
            'description': description,
        };
    }

    @override
    int get hashCode =>
        Object.hash(
          id,
          node_id,
          url,
          name,
          color,
          default,
          description,
        );

    @override
    bool operator ==(Object other) {
        if (identical(this, other)) return true;
        return other is Issue-search-result-itemLabelsInner
            && id == other.id
            && node_id == other.node_id
            && url == other.url
            && name == other.name
            && color == other.color
            && default == other.default
            && description == other.description
        ;
    }
}
