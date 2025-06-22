import 'dart:convert';
import 'dart:io';
import 'package:meta/meta.dart';
import 'package:github/model_helpers.dart';
import 'package:github/model/license-simple.dart';
import 'package:github/model/license-simple.dart';
@immutable
class License-simple {
    License-simple(
        { required this.key,required this.name,required this.url,required this.spdx_id,required this.node_id, this.html_url,
         }
    );

    factory License-simple.fromJson(Map<String, dynamic>
        json) {
        return License-simple(
            key: json['key'] as String ,
            name: json['name'] as String ,
            url: json['url'] as String ,
            spdx_id: json['spdx_id'] as String ,
            node_id: json['node_id'] as String ,
            html_url: json['html_url'] as String? ,
        );
    }

    /// Convenience to create a nullable type from a nullable json object.
    /// Useful when parsing optional fields.
    static License-simple? maybeFromJson(Map<String, dynamic>? json) {
        if (json == null) {
            return null;
        }
        return License-simple.fromJson(json);
    }

    final String  key;
    final String  name;
    final String  url;
    final String  spdx_id;
    final String  node_id;
    final  String? html_url;


    Map<String, dynamic> toJson() {
        return {
            'key': key,
            'name': name,
            'url': url,
            'spdx_id': spdx_id,
            'node_id': node_id,
            'html_url': html_url,
        };
    }

    @override
    int get hashCode =>
        Object.hash(
          key,
          name,
          url,
          spdx_id,
          node_id,
          html_url,
        );

    @override
    bool operator ==(Object other) {
        if (identical(this, other)) return true;
        return other is License-simple
            && key == other.key
            && name == other.name
            && url == other.url
            && spdx_id == other.spdx_id
            && node_id == other.node_id
            && html_url == other.html_url
        ;
    }
}
