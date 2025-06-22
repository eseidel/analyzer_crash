import 'dart:convert';
import 'dart:io';
import 'package:meta/meta.dart';
import 'package:github/model_helpers.dart';
import 'package:github/model/repository-advisory-credit.dart';
import 'package:github/model/simple-user.dart';
import 'package:github/model/security-advisory-credit-types.dart';
import 'package:github/model/repository-advisory-credit_state.dart';
import 'package:github/model/repository-advisory-credit.dart';
import 'package:github/model/simple-user.dart';
import 'package:github/model/security-advisory-credit-types.dart';
import 'package:github/model/repository-advisory-credit_state.dart';
@immutable
class Repository-advisory-credit {
    Repository-advisory-credit(
        { required this.user,required this.type,required this.state,
         }
    );

    factory Repository-advisory-credit.fromJson(Map<String, dynamic>
        json) {
        return Repository-advisory-credit(
            user: Simple-user.fromJson(json['user'] as Map<String, dynamic>) ,
            type: Security-advisory-credit-types.fromJson(json['type'] as String) ,
            state: Repository-advisory-creditState.fromJson(json['state'] as String) ,
        );
    }

    /// Convenience to create a nullable type from a nullable json object.
    /// Useful when parsing optional fields.
    static Repository-advisory-credit? maybeFromJson(Map<String, dynamic>? json) {
        if (json == null) {
            return null;
        }
        return Repository-advisory-credit.fromJson(json);
    }

    final Simple-user  user;
    final Security-advisory-credit-types  type;
    final Repository-advisory-creditState  state;


    Map<String, dynamic> toJson() {
        return {
            'user': user.toJson(),
            'type': type.toJson(),
            'state': state.toJson(),
        };
    }

    @override
    int get hashCode =>
        Object.hash(
          user,
          type,
          state,
        );

    @override
    bool operator ==(Object other) {
        if (identical(this, other)) return true;
        return other is Repository-advisory-credit
            && user == other.user
            && type == other.type
            && state == other.state
        ;
    }
}
