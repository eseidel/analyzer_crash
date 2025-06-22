import 'dart:convert';
import 'dart:io';
import 'package:meta/meta.dart';
import 'package:github/model_helpers.dart';
import 'package:github/model/gist-simple_forks_inner.dart';
import 'package:github/model/public-user.dart';
import 'package:github/model/public-user_plan.dart';
import 'package:github/model/gist-simple_forks_inner.dart';
import 'package:github/model/public-user.dart';
import 'package:github/model/public-user_plan.dart';
@immutable
class Gist-simpleForksInner {
    Gist-simpleForksInner(
        {  this.id, this.url, this.user, this.created_at, this.updated_at,
         }
    );

    factory Gist-simpleForksInner.fromJson(Map<String, dynamic>
        json) {
        return Gist-simpleForksInner(
            id: json['id'] as String? ,
            url: json['url'] as String? ,
            user: Public-user.maybeFromJson(json['user'] as Map<String, dynamic>?) ,
            created_at: maybeParseDateTime(json['created_at'] as String?) ,
            updated_at: maybeParseDateTime(json['updated_at'] as String?) ,
        );
    }

    /// Convenience to create a nullable type from a nullable json object.
    /// Useful when parsing optional fields.
    static Gist-simpleForksInner? maybeFromJson(Map<String, dynamic>? json) {
        if (json == null) {
            return null;
        }
        return Gist-simpleForksInner.fromJson(json);
    }

    final  String? id;
    final  String? url;
    final  Public-user? user;
    final  DateTime? created_at;
    final  DateTime? updated_at;


    Map<String, dynamic> toJson() {
        return {
            'id': id,
            'url': url,
            'user': user?.toJson(),
            'created_at': created_at?.toIso8601String(),
            'updated_at': updated_at?.toIso8601String(),
        };
    }

    @override
    int get hashCode =>
        Object.hash(
          id,
          url,
          user,
          created_at,
          updated_at,
        );

    @override
    bool operator ==(Object other) {
        if (identical(this, other)) return true;
        return other is Gist-simpleForksInner
            && id == other.id
            && url == other.url
            && user == other.user
            && created_at == other.created_at
            && updated_at == other.updated_at
        ;
    }
}
