import 'dart:convert';
import 'dart:io';
import 'package:meta/meta.dart';
import 'package:github/model_helpers.dart';
import 'package:github/model/code-security-configuration-repositories.dart';
import 'package:github/model/code-security-configuration-repositories_status.dart';
import 'package:github/model/simple-repository.dart';
import 'package:github/model/simple-user.dart';
import 'package:github/model/code-security-configuration-repositories.dart';
import 'package:github/model/code-security-configuration-repositories_status.dart';
import 'package:github/model/simple-repository.dart';
import 'package:github/model/simple-user.dart';
@immutable
class Code-security-configuration-repositories {
    Code-security-configuration-repositories(
        {  this.status, this.repository,
         }
    );

    factory Code-security-configuration-repositories.fromJson(Map<String, dynamic>
        json) {
        return Code-security-configuration-repositories(
            status: Code-security-configuration-repositoriesStatus.maybeFromJson(json['status'] as String?) ,
            repository: Simple-repository.maybeFromJson(json['repository'] as Map<String, dynamic>?) ,
        );
    }

    /// Convenience to create a nullable type from a nullable json object.
    /// Useful when parsing optional fields.
    static Code-security-configuration-repositories? maybeFromJson(Map<String, dynamic>? json) {
        if (json == null) {
            return null;
        }
        return Code-security-configuration-repositories.fromJson(json);
    }

    final  Code-security-configuration-repositoriesStatus? status;
    final  Simple-repository? repository;


    Map<String, dynamic> toJson() {
        return {
            'status': status?.toJson(),
            'repository': repository?.toJson(),
        };
    }

    @override
    int get hashCode =>
        Object.hash(
          status,
          repository,
        );

    @override
    bool operator ==(Object other) {
        if (identical(this, other)) return true;
        return other is Code-security-configuration-repositories
            && status == other.status
            && repository == other.repository
        ;
    }
}
