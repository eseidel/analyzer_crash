import 'dart:convert';
import 'dart:io';
import 'package:meta/meta.dart';
import 'package:github/model_helpers.dart';
import 'package:github/model/copilot-dotcom-pull-requests_repositories_inner.dart';
import 'package:github/model/copilot-dotcom-pull-requests_repositories_inner_models_inner.dart';
import 'package:github/model/copilot-dotcom-pull-requests_repositories_inner.dart';
import 'package:github/model/copilot-dotcom-pull-requests_repositories_inner_models_inner.dart';
@immutable
class Copilot-dotcom-pull-requestsRepositoriesInner {
    Copilot-dotcom-pull-requestsRepositoriesInner(
        {  this.name, this.total_engaged_users, this.models = const [],
         }
    );

    factory Copilot-dotcom-pull-requestsRepositoriesInner.fromJson(Map<String, dynamic>
        json) {
        return Copilot-dotcom-pull-requestsRepositoriesInner(
            name: json['name'] as String? ,
            total_engaged_users: (json['total_engaged_users'] as int?).toInt() ,
            models: (json['models'] as List?)?.map<Copilot-dotcom-pull-requestsRepositoriesInnerModelsInner>((e) => Copilot-dotcom-pull-requestsRepositoriesInnerModelsInner.fromJson(e as Map<String, dynamic>) ).toList() ,
        );
    }

    /// Convenience to create a nullable type from a nullable json object.
    /// Useful when parsing optional fields.
    static Copilot-dotcom-pull-requestsRepositoriesInner? maybeFromJson(Map<String, dynamic>? json) {
        if (json == null) {
            return null;
        }
        return Copilot-dotcom-pull-requestsRepositoriesInner.fromJson(json);
    }

    final  String? name;
    final  int? total_engaged_users;
    final  List<Copilot-dotcom-pull-requestsRepositoriesInnerModelsInner>? models;


    Map<String, dynamic> toJson() {
        return {
            'name': name,
            'total_engaged_users': total_engaged_users,
            'models': models?.map((e) => e.toJson()).toList(),
        };
    }

    @override
    int get hashCode =>
        Object.hash(
          name,
          total_engaged_users,
          models,
        );

    @override
    bool operator ==(Object other) {
        if (identical(this, other)) return true;
        return other is Copilot-dotcom-pull-requestsRepositoriesInner
            && name == other.name
            && total_engaged_users == other.total_engaged_users
            && listsEqual(models, other.models)
        ;
    }
}
