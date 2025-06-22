import 'dart:convert';
import 'dart:io';
import 'package:meta/meta.dart';
import 'package:github/model_helpers.dart';
import 'package:github/model/simple-commit-status.dart';
import 'package:github/model/simple-commit-status.dart';
@immutable
class Simple-commit-status {
    Simple-commit-status(
        { required this.description,required this.id,required this.node_id,required this.state,required this.context,required this.target_url, this.required_,required this.avatar_url,required this.url,required this.created_at,required this.updated_at,
         }
    );

    factory Simple-commit-status.fromJson(Map<String, dynamic>
        json) {
        return Simple-commit-status(
            description: json['description'] as String ,
            id: (json['id'] as int).toInt() ,
            node_id: json['node_id'] as String ,
            state: json['state'] as String ,
            context: json['context'] as String ,
            target_url: json['target_url'] as String ,
            required_: (json['required'] as bool?) ,
            avatar_url: json['avatar_url'] as String ,
            url: json['url'] as String ,
            created_at: DateTime.parse(json['created_at'] as String),
            updated_at: DateTime.parse(json['updated_at'] as String),
        );
    }

    /// Convenience to create a nullable type from a nullable json object.
    /// Useful when parsing optional fields.
    static Simple-commit-status? maybeFromJson(Map<String, dynamic>? json) {
        if (json == null) {
            return null;
        }
        return Simple-commit-status.fromJson(json);
    }

    final String  description;
    final int  id;
    final String  node_id;
    final String  state;
    final String  context;
    final String  target_url;
    final  bool? required_;
    final String  avatar_url;
    final String  url;
    final DateTime  created_at;
    final DateTime  updated_at;


    Map<String, dynamic> toJson() {
        return {
            'description': description,
            'id': id,
            'node_id': node_id,
            'state': state,
            'context': context,
            'target_url': target_url,
            'required': required_,
            'avatar_url': avatar_url,
            'url': url,
            'created_at': created_at.toIso8601String(),
            'updated_at': updated_at.toIso8601String(),
        };
    }

    @override
    int get hashCode =>
        Object.hash(
          description,
          id,
          node_id,
          state,
          context,
          target_url,
          required_,
          avatar_url,
          url,
          created_at,
          updated_at,
        );

    @override
    bool operator ==(Object other) {
        if (identical(this, other)) return true;
        return other is Simple-commit-status
            && description == other.description
            && id == other.id
            && node_id == other.node_id
            && state == other.state
            && context == other.context
            && target_url == other.target_url
            && required_ == other.required_
            && avatar_url == other.avatar_url
            && url == other.url
            && created_at == other.created_at
            && updated_at == other.updated_at
        ;
    }
}
