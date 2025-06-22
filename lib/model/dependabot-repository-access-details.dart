import 'dart:convert';
import 'dart:io';
import 'package:meta/meta.dart';
import 'package:github/model_helpers.dart';
import 'package:github/model/dependabot-repository-access-details.dart';
import 'package:github/model/dependabot-repository-access-details_default_level.dart';
import 'package:github/model/nullable-simple-repository.dart';
import 'package:github/model/simple-user.dart';
import 'package:github/model/dependabot-repository-access-details.dart';
import 'package:github/model/dependabot-repository-access-details_default_level.dart';
import 'package:github/model/nullable-simple-repository.dart';
import 'package:github/model/simple-user.dart';
@immutable
class Dependabot-repository-access-details {
    Dependabot-repository-access-details(
        {  this.default_level, this.accessible_repositories = const [],
         }
    );

    factory Dependabot-repository-access-details.fromJson(Map<String, dynamic>
        json) {
        return Dependabot-repository-access-details(
            default_level: Dependabot-repository-access-detailsDefaultLevel.maybeFromJson(json['default_level'] as String?) ,
            accessible_repositories: (json['accessible_repositories'] as List?)?.map<Nullable-simple-repository>((e) => Nullable-simple-repository.fromJson(e as Map<String, dynamic>) ).toList() ,
        );
    }

    /// Convenience to create a nullable type from a nullable json object.
    /// Useful when parsing optional fields.
    static Dependabot-repository-access-details? maybeFromJson(Map<String, dynamic>? json) {
        if (json == null) {
            return null;
        }
        return Dependabot-repository-access-details.fromJson(json);
    }

    final  Dependabot-repository-access-detailsDefaultLevel? default_level;
    final  List<Nullable-simple-repository>? accessible_repositories;


    Map<String, dynamic> toJson() {
        return {
            'default_level': default_level?.toJson(),
            'accessible_repositories': accessible_repositories?.map((e) => e.toJson()).toList(),
        };
    }

    @override
    int get hashCode =>
        Object.hash(
          default_level,
          accessible_repositories,
        );

    @override
    bool operator ==(Object other) {
        if (identical(this, other)) return true;
        return other is Dependabot-repository-access-details
            && default_level == other.default_level
            && listsEqual(accessible_repositories, other.accessible_repositories)
        ;
    }
}
