import 'dart:convert';
import 'dart:io';
import 'package:meta/meta.dart';
import 'package:github/model_helpers.dart';
import 'package:github/model/code-scanning-codeql-database.dart';
import 'package:github/model/simple-user.dart';
import 'package:github/model/code-scanning-codeql-database.dart';
import 'package:github/model/simple-user.dart';
@immutable
class Code-scanning-codeql-database {
    Code-scanning-codeql-database(
        { required this.id,required this.name,required this.language,required this.uploader,required this.content_type,required this.size,required this.created_at,required this.updated_at,required this.url, this.commit_oid,
         }
    );

    factory Code-scanning-codeql-database.fromJson(Map<String, dynamic>
        json) {
        return Code-scanning-codeql-database(
            id: (json['id'] as int).toInt() ,
            name: json['name'] as String ,
            language: json['language'] as String ,
            uploader: Simple-user.fromJson(json['uploader'] as Map<String, dynamic>) ,
            content_type: json['content_type'] as String ,
            size: (json['size'] as int).toInt() ,
            created_at: DateTime.parse(json['created_at'] as String),
            updated_at: DateTime.parse(json['updated_at'] as String),
            url: json['url'] as String ,
            commit_oid: json['commit_oid'] as String? ,
        );
    }

    /// Convenience to create a nullable type from a nullable json object.
    /// Useful when parsing optional fields.
    static Code-scanning-codeql-database? maybeFromJson(Map<String, dynamic>? json) {
        if (json == null) {
            return null;
        }
        return Code-scanning-codeql-database.fromJson(json);
    }

    final int  id;
    final String  name;
    final String  language;
    final Simple-user  uploader;
    final String  content_type;
    final int  size;
    final DateTime  created_at;
    final DateTime  updated_at;
    final String  url;
    final  String? commit_oid;


    Map<String, dynamic> toJson() {
        return {
            'id': id,
            'name': name,
            'language': language,
            'uploader': uploader.toJson(),
            'content_type': content_type,
            'size': size,
            'created_at': created_at.toIso8601String(),
            'updated_at': updated_at.toIso8601String(),
            'url': url,
            'commit_oid': commit_oid,
        };
    }

    @override
    int get hashCode =>
        Object.hash(
          id,
          name,
          language,
          uploader,
          content_type,
          size,
          created_at,
          updated_at,
          url,
          commit_oid,
        );

    @override
    bool operator ==(Object other) {
        if (identical(this, other)) return true;
        return other is Code-scanning-codeql-database
            && id == other.id
            && name == other.name
            && language == other.language
            && uploader == other.uploader
            && content_type == other.content_type
            && size == other.size
            && created_at == other.created_at
            && updated_at == other.updated_at
            && url == other.url
            && commit_oid == other.commit_oid
        ;
    }
}
