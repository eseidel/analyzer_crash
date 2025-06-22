import 'dart:convert';
import 'dart:io';
import 'package:meta/meta.dart';
import 'package:github/model_helpers.dart';
import 'package:github/model/copilot-dotcom-pull-requests.dart';
import 'package:github/model/copilot-dotcom-pull-requests_repositories_inner.dart';
import 'package:github/model/copilot-dotcom-pull-requests_repositories_inner_models_inner.dart';
import 'package:github/model/copilot-dotcom-pull-requests.dart';
import 'package:github/model/copilot-dotcom-pull-requests_repositories_inner.dart';
import 'package:github/model/copilot-dotcom-pull-requests_repositories_inner_models_inner.dart';
@immutable
class Copilot-dotcom-pull-requests {
    Copilot-dotcom-pull-requests(
        {  this.total_engaged_users, this.repositories = const [],
        required this.entries, }
    );

    factory Copilot-dotcom-pull-requests.fromJson(Map<String, dynamic>
        json) {
        return Copilot-dotcom-pull-requests(
            total_engaged_users: (json['total_engaged_users'] as int?).toInt() ,
            repositories: (json['repositories'] as List?)?.map<Copilot-dotcom-pull-requestsRepositoriesInner>((e) => Copilot-dotcom-pull-requestsRepositoriesInner.fromJson(e as Map<String, dynamic>) ).toList() ,
            entries: json.map((key, value) => MapEntry(key, value)),
        );
    }

    /// Convenience to create a nullable type from a nullable json object.
    /// Useful when parsing optional fields.
    static Copilot-dotcom-pull-requests? maybeFromJson(Map<String, dynamic>? json) {
        if (json == null) {
            return null;
        }
        return Copilot-dotcom-pull-requests.fromJson(json);
    }

    final  int? total_engaged_users;
    final  List<Copilot-dotcom-pull-requestsRepositoriesInner>? repositories;

    final Map<String, dynamic> entries;

    dynamic? operator [](String key) => entries[key];

    Map<String, dynamic> toJson() {
        return {
            'total_engaged_users': total_engaged_users,
            'repositories': repositories?.map((e) => e.toJson()).toList(),
            ...entries.map((key, value) => MapEntry(key, value)),
        };
    }

    @override
    int get hashCode =>
        Object.hash(
          total_engaged_users,
          repositories,
          entries,
        );

    @override
    bool operator ==(Object other) {
        if (identical(this, other)) return true;
        return other is Copilot-dotcom-pull-requests
            && total_engaged_users == other.total_engaged_users
            && listsEqual(repositories, other.repositories)
            && mapsEqual(entries, other.entries)
        ;
    }
}
