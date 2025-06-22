import 'dart:convert';
import 'dart:io';
import 'package:meta/meta.dart';
import 'package:github/model_helpers.dart';
import 'package:github/model/simple-classroom-repository.dart';
import 'package:github/model/simple-classroom-repository.dart';
@immutable
class Simple-classroom-repository {
    Simple-classroom-repository(
        { required this.id,required this.full_name,required this.html_url,required this.node_id,required this.private,required this.default_branch,
         }
    );

    factory Simple-classroom-repository.fromJson(Map<String, dynamic>
        json) {
        return Simple-classroom-repository(
            id: (json['id'] as int).toInt() ,
            full_name: json['full_name'] as String ,
            html_url: json['html_url'] as String ,
            node_id: json['node_id'] as String ,
            private: (json['private'] as bool) ,
            default_branch: json['default_branch'] as String ,
        );
    }

    /// Convenience to create a nullable type from a nullable json object.
    /// Useful when parsing optional fields.
    static Simple-classroom-repository? maybeFromJson(Map<String, dynamic>? json) {
        if (json == null) {
            return null;
        }
        return Simple-classroom-repository.fromJson(json);
    }

    final int  id;
    final String  full_name;
    final String  html_url;
    final String  node_id;
    final bool  private;
    final String  default_branch;


    Map<String, dynamic> toJson() {
        return {
            'id': id,
            'full_name': full_name,
            'html_url': html_url,
            'node_id': node_id,
            'private': private,
            'default_branch': default_branch,
        };
    }

    @override
    int get hashCode =>
        Object.hash(
          id,
          full_name,
          html_url,
          node_id,
          private,
          default_branch,
        );

    @override
    bool operator ==(Object other) {
        if (identical(this, other)) return true;
        return other is Simple-classroom-repository
            && id == other.id
            && full_name == other.full_name
            && html_url == other.html_url
            && node_id == other.node_id
            && private == other.private
            && default_branch == other.default_branch
        ;
    }
}
