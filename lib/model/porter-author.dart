import 'dart:convert';
import 'dart:io';
import 'package:meta/meta.dart';
import 'package:github/model_helpers.dart';
import 'package:github/model/porter-author.dart';
import 'package:github/model/porter-author.dart';
@immutable
class Porter-author {
    Porter-author(
        { required this.id,required this.remote_id,required this.remote_name,required this.email,required this.name,required this.url,required this.import_url,
         }
    );

    factory Porter-author.fromJson(Map<String, dynamic>
        json) {
        return Porter-author(
            id: (json['id'] as int).toInt() ,
            remote_id: json['remote_id'] as String ,
            remote_name: json['remote_name'] as String ,
            email: json['email'] as String ,
            name: json['name'] as String ,
            url: json['url'] as String ,
            import_url: json['import_url'] as String ,
        );
    }

    /// Convenience to create a nullable type from a nullable json object.
    /// Useful when parsing optional fields.
    static Porter-author? maybeFromJson(Map<String, dynamic>? json) {
        if (json == null) {
            return null;
        }
        return Porter-author.fromJson(json);
    }

    final int  id;
    final String  remote_id;
    final String  remote_name;
    final String  email;
    final String  name;
    final String  url;
    final String  import_url;


    Map<String, dynamic> toJson() {
        return {
            'id': id,
            'remote_id': remote_id,
            'remote_name': remote_name,
            'email': email,
            'name': name,
            'url': url,
            'import_url': import_url,
        };
    }

    @override
    int get hashCode =>
        Object.hash(
          id,
          remote_id,
          remote_name,
          email,
          name,
          url,
          import_url,
        );

    @override
    bool operator ==(Object other) {
        if (identical(this, other)) return true;
        return other is Porter-author
            && id == other.id
            && remote_id == other.remote_id
            && remote_name == other.remote_name
            && email == other.email
            && name == other.name
            && url == other.url
            && import_url == other.import_url
        ;
    }
}
