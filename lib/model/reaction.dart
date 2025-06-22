import 'dart:convert';
import 'dart:io';
import 'package:meta/meta.dart';
import 'package:github/model_helpers.dart';
import 'package:github/model/reaction.dart';
import 'package:github/model/nullable-simple-user.dart';
import 'package:github/model/reaction_content.dart';
import 'package:github/model/reaction.dart';
import 'package:github/model/nullable-simple-user.dart';
import 'package:github/model/reaction_content.dart';
@immutable
class Reaction {
    Reaction(
        { required this.id,required this.node_id,required this.user,required this.content,required this.created_at,
         }
    );

    factory Reaction.fromJson(Map<String, dynamic>
        json) {
        return Reaction(
            id: (json['id'] as int).toInt() ,
            node_id: json['node_id'] as String ,
            user: Nullable-simple-user.fromJson(json['user'] as Map<String, dynamic>) ,
            content: ReactionContent.fromJson(json['content'] as String) ,
            created_at: DateTime.parse(json['created_at'] as String),
        );
    }

    /// Convenience to create a nullable type from a nullable json object.
    /// Useful when parsing optional fields.
    static Reaction? maybeFromJson(Map<String, dynamic>? json) {
        if (json == null) {
            return null;
        }
        return Reaction.fromJson(json);
    }

    final int  id;
    final String  node_id;
    final Nullable-simple-user  user;
    final ReactionContent  content;
    final DateTime  created_at;


    Map<String, dynamic> toJson() {
        return {
            'id': id,
            'node_id': node_id,
            'user': user.toJson(),
            'content': content.toJson(),
            'created_at': created_at.toIso8601String(),
        };
    }

    @override
    int get hashCode =>
        Object.hash(
          id,
          node_id,
          user,
          content,
          created_at,
        );

    @override
    bool operator ==(Object other) {
        if (identical(this, other)) return true;
        return other is Reaction
            && id == other.id
            && node_id == other.node_id
            && user == other.user
            && content == other.content
            && created_at == other.created_at
        ;
    }
}
