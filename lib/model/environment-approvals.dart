import 'dart:convert';
import 'dart:io';
import 'package:meta/meta.dart';
import 'package:github/model_helpers.dart';
import 'package:github/model/environment-approvals.dart';
import 'package:github/model/environment-approvals_environments_inner.dart';
import 'package:github/model/environment-approvals_state.dart';
import 'package:github/model/simple-user.dart';
import 'package:github/model/environment-approvals.dart';
import 'package:github/model/environment-approvals_environments_inner.dart';
import 'package:github/model/environment-approvals_state.dart';
import 'package:github/model/simple-user.dart';
@immutable
class Environment-approvals {
    Environment-approvals(
        {  this.environments = const [],required this.state,required this.user,required this.comment,
         }
    );

    factory Environment-approvals.fromJson(Map<String, dynamic>
        json) {
        return Environment-approvals(
            environments: (json['environments'] as List).map<Environment-approvalsEnvironmentsInner>((e) => Environment-approvalsEnvironmentsInner.fromJson(e as Map<String, dynamic>) ).toList() ,
            state: Environment-approvalsState.fromJson(json['state'] as String) ,
            user: Simple-user.fromJson(json['user'] as Map<String, dynamic>) ,
            comment: json['comment'] as String ,
        );
    }

    /// Convenience to create a nullable type from a nullable json object.
    /// Useful when parsing optional fields.
    static Environment-approvals? maybeFromJson(Map<String, dynamic>? json) {
        if (json == null) {
            return null;
        }
        return Environment-approvals.fromJson(json);
    }

    final List<Environment-approvalsEnvironmentsInner>  environments;
    final Environment-approvalsState  state;
    final Simple-user  user;
    final String  comment;


    Map<String, dynamic> toJson() {
        return {
            'environments': environments.map((e) => e.toJson()).toList(),
            'state': state.toJson(),
            'user': user.toJson(),
            'comment': comment,
        };
    }

    @override
    int get hashCode =>
        Object.hash(
          environments,
          state,
          user,
          comment,
        );

    @override
    bool operator ==(Object other) {
        if (identical(this, other)) return true;
        return other is Environment-approvals
            && listsEqual(environments, other.environments)
            && state == other.state
            && user == other.user
            && comment == other.comment
        ;
    }
}
