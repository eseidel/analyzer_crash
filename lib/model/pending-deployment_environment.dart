import 'dart:convert';
import 'dart:io';
import 'package:meta/meta.dart';
import 'package:github/model_helpers.dart';
import 'package:github/model/pending-deployment_environment.dart';
import 'package:github/model/pending-deployment_environment.dart';
@immutable
class Pending-deploymentEnvironment {
    Pending-deploymentEnvironment(
        {  this.id, this.node_id, this.name, this.url, this.html_url,
         }
    );

    factory Pending-deploymentEnvironment.fromJson(Map<String, dynamic>
        json) {
        return Pending-deploymentEnvironment(
            id: (json['id'] as int?).toInt() ,
            node_id: json['node_id'] as String? ,
            name: json['name'] as String? ,
            url: json['url'] as String? ,
            html_url: json['html_url'] as String? ,
        );
    }

    /// Convenience to create a nullable type from a nullable json object.
    /// Useful when parsing optional fields.
    static Pending-deploymentEnvironment? maybeFromJson(Map<String, dynamic>? json) {
        if (json == null) {
            return null;
        }
        return Pending-deploymentEnvironment.fromJson(json);
    }

    final  int? id;
    final  String? node_id;
    final  String? name;
    final  String? url;
    final  String? html_url;


    Map<String, dynamic> toJson() {
        return {
            'id': id,
            'node_id': node_id,
            'name': name,
            'url': url,
            'html_url': html_url,
        };
    }

    @override
    int get hashCode =>
        Object.hash(
          id,
          node_id,
          name,
          url,
          html_url,
        );

    @override
    bool operator ==(Object other) {
        if (identical(this, other)) return true;
        return other is Pending-deploymentEnvironment
            && id == other.id
            && node_id == other.node_id
            && name == other.name
            && url == other.url
            && html_url == other.html_url
        ;
    }
}
