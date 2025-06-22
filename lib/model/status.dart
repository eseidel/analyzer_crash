import 'dart:convert';
import 'dart:io';
import 'package:meta/meta.dart';
import 'package:github/model_helpers.dart';
import 'package:github/model/status.dart';
import 'package:github/model/nullable-simple-user.dart';
import 'package:github/model/status.dart';
import 'package:github/model/nullable-simple-user.dart';
@immutable
class Status {
    Status(
        { required this.url,required this.avatar_url,required this.id,required this.node_id,required this.state,required this.description,required this.target_url,required this.context,required this.created_at,required this.updated_at,required this.creator,
         }
    );

    factory Status.fromJson(Map<String, dynamic>
        json) {
        return Status(
            url: json['url'] as String ,
            avatar_url: json['avatar_url'] as String ,
            id: (json['id'] as int).toInt() ,
            node_id: json['node_id'] as String ,
            state: json['state'] as String ,
            description: json['description'] as String ,
            target_url: json['target_url'] as String ,
            context: json['context'] as String ,
            created_at: json['created_at'] as String ,
            updated_at: json['updated_at'] as String ,
            creator: Nullable-simple-user.fromJson(json['creator'] as Map<String, dynamic>) ,
        );
    }

    /// Convenience to create a nullable type from a nullable json object.
    /// Useful when parsing optional fields.
    static Status? maybeFromJson(Map<String, dynamic>? json) {
        if (json == null) {
            return null;
        }
        return Status.fromJson(json);
    }

    final String  url;
    final String  avatar_url;
    final int  id;
    final String  node_id;
    final String  state;
    final String  description;
    final String  target_url;
    final String  context;
    final String  created_at;
    final String  updated_at;
    final Nullable-simple-user  creator;


    Map<String, dynamic> toJson() {
        return {
            'url': url,
            'avatar_url': avatar_url,
            'id': id,
            'node_id': node_id,
            'state': state,
            'description': description,
            'target_url': target_url,
            'context': context,
            'created_at': created_at,
            'updated_at': updated_at,
            'creator': creator.toJson(),
        };
    }

    @override
    int get hashCode =>
        Object.hash(
          url,
          avatar_url,
          id,
          node_id,
          state,
          description,
          target_url,
          context,
          created_at,
          updated_at,
          creator,
        );

    @override
    bool operator ==(Object other) {
        if (identical(this, other)) return true;
        return other is Status
            && url == other.url
            && avatar_url == other.avatar_url
            && id == other.id
            && node_id == other.node_id
            && state == other.state
            && description == other.description
            && target_url == other.target_url
            && context == other.context
            && created_at == other.created_at
            && updated_at == other.updated_at
            && creator == other.creator
        ;
    }
}
