import 'dart:convert';
import 'dart:io';
import 'package:meta/meta.dart';
import 'package:github/model_helpers.dart';
import 'package:github/model/custom-deployment-rule-app.dart';
import 'package:github/model/custom-deployment-rule-app.dart';
@immutable
class Custom-deployment-rule-app {
    Custom-deployment-rule-app(
        { required this.id,required this.slug,required this.integration_url,required this.node_id,
         }
    );

    factory Custom-deployment-rule-app.fromJson(Map<String, dynamic>
        json) {
        return Custom-deployment-rule-app(
            id: (json['id'] as int).toInt() ,
            slug: json['slug'] as String ,
            integration_url: json['integration_url'] as String ,
            node_id: json['node_id'] as String ,
        );
    }

    /// Convenience to create a nullable type from a nullable json object.
    /// Useful when parsing optional fields.
    static Custom-deployment-rule-app? maybeFromJson(Map<String, dynamic>? json) {
        if (json == null) {
            return null;
        }
        return Custom-deployment-rule-app.fromJson(json);
    }

    final int  id;
    final String  slug;
    final String  integration_url;
    final String  node_id;


    Map<String, dynamic> toJson() {
        return {
            'id': id,
            'slug': slug,
            'integration_url': integration_url,
            'node_id': node_id,
        };
    }

    @override
    int get hashCode =>
        Object.hash(
          id,
          slug,
          integration_url,
          node_id,
        );

    @override
    bool operator ==(Object other) {
        if (identical(this, other)) return true;
        return other is Custom-deployment-rule-app
            && id == other.id
            && slug == other.slug
            && integration_url == other.integration_url
            && node_id == other.node_id
        ;
    }
}
