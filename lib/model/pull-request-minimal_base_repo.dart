import 'dart:convert';
import 'dart:io';
import 'package:meta/meta.dart';
import 'package:github/model_helpers.dart';
import 'package:github/model/pull-request-minimal_base_repo.dart';
import 'package:github/model/pull-request-minimal_base_repo.dart';
@immutable
class Pull-request-minimalBaseRepo {
    Pull-request-minimalBaseRepo(
        { required this.id,required this.url,required this.name,
         }
    );

    factory Pull-request-minimalBaseRepo.fromJson(Map<String, dynamic>
        json) {
        return Pull-request-minimalBaseRepo(
            id: (json['id'] as int).toInt() ,
            url: json['url'] as String ,
            name: json['name'] as String ,
        );
    }

    /// Convenience to create a nullable type from a nullable json object.
    /// Useful when parsing optional fields.
    static Pull-request-minimalBaseRepo? maybeFromJson(Map<String, dynamic>? json) {
        if (json == null) {
            return null;
        }
        return Pull-request-minimalBaseRepo.fromJson(json);
    }

    final int  id;
    final String  url;
    final String  name;


    Map<String, dynamic> toJson() {
        return {
            'id': id,
            'url': url,
            'name': name,
        };
    }

    @override
    int get hashCode =>
        Object.hash(
          id,
          url,
          name,
        );

    @override
    bool operator ==(Object other) {
        if (identical(this, other)) return true;
        return other is Pull-request-minimalBaseRepo
            && id == other.id
            && url == other.url
            && name == other.name
        ;
    }
}
