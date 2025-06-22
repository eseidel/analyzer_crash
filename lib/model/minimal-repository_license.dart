import 'dart:convert';
import 'dart:io';
import 'package:meta/meta.dart';
import 'package:github/model_helpers.dart';
import 'package:github/model/minimal-repository_license.dart';
import 'package:github/model/minimal-repository_license.dart';
@immutable
class Minimal-repositoryLicense {
    Minimal-repositoryLicense(
        {  this.key, this.name, this.spdx_id, this.url, this.node_id,
         }
    );

    factory Minimal-repositoryLicense.fromJson(Map<String, dynamic>
        json) {
        return Minimal-repositoryLicense(
            key: json['key'] as String? ,
            name: json['name'] as String? ,
            spdx_id: json['spdx_id'] as String? ,
            url: json['url'] as String? ,
            node_id: json['node_id'] as String? ,
        );
    }

    /// Convenience to create a nullable type from a nullable json object.
    /// Useful when parsing optional fields.
    static Minimal-repositoryLicense? maybeFromJson(Map<String, dynamic>? json) {
        if (json == null) {
            return null;
        }
        return Minimal-repositoryLicense.fromJson(json);
    }

    final  String? key;
    final  String? name;
    final  String? spdx_id;
    final  String? url;
    final  String? node_id;


    Map<String, dynamic> toJson() {
        return {
            'key': key,
            'name': name,
            'spdx_id': spdx_id,
            'url': url,
            'node_id': node_id,
        };
    }

    @override
    int get hashCode =>
        Object.hash(
          key,
          name,
          spdx_id,
          url,
          node_id,
        );

    @override
    bool operator ==(Object other) {
        if (identical(this, other)) return true;
        return other is Minimal-repositoryLicense
            && key == other.key
            && name == other.name
            && spdx_id == other.spdx_id
            && url == other.url
            && node_id == other.node_id
        ;
    }
}
