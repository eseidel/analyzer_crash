import 'dart:convert';
import 'dart:io';
import 'package:meta/meta.dart';
import 'package:github/model_helpers.dart';
import 'package:github/model/stargazer.dart';
import 'package:github/model/nullable-simple-user.dart';
import 'package:github/model/stargazer.dart';
import 'package:github/model/nullable-simple-user.dart';
@immutable
class Stargazer {
    Stargazer(
        { required this.starred_at,required this.user,
         }
    );

    factory Stargazer.fromJson(Map<String, dynamic>
        json) {
        return Stargazer(
            starred_at: DateTime.parse(json['starred_at'] as String),
            user: Nullable-simple-user.fromJson(json['user'] as Map<String, dynamic>) ,
        );
    }

    /// Convenience to create a nullable type from a nullable json object.
    /// Useful when parsing optional fields.
    static Stargazer? maybeFromJson(Map<String, dynamic>? json) {
        if (json == null) {
            return null;
        }
        return Stargazer.fromJson(json);
    }

    final DateTime  starred_at;
    final Nullable-simple-user  user;


    Map<String, dynamic> toJson() {
        return {
            'starred_at': starred_at.toIso8601String(),
            'user': user.toJson(),
        };
    }

    @override
    int get hashCode =>
        Object.hash(
          starred_at,
          user,
        );

    @override
    bool operator ==(Object other) {
        if (identical(this, other)) return true;
        return other is Stargazer
            && starred_at == other.starred_at
            && user == other.user
        ;
    }
}
