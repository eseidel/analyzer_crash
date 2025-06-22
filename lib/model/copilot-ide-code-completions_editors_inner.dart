import 'dart:convert';
import 'dart:io';
import 'package:meta/meta.dart';
import 'package:github/model_helpers.dart';
import 'package:github/model/copilot-ide-code-completions_editors_inner.dart';
import 'package:github/model/copilot-ide-code-completions_editors_inner_models_inner.dart';
import 'package:github/model/copilot-ide-code-completions_editors_inner_models_inner_languages_inner.dart';
import 'package:github/model/copilot-ide-code-completions_editors_inner.dart';
import 'package:github/model/copilot-ide-code-completions_editors_inner_models_inner.dart';
import 'package:github/model/copilot-ide-code-completions_editors_inner_models_inner_languages_inner.dart';
@immutable
class Copilot-ide-code-completionsEditorsInner {
    Copilot-ide-code-completionsEditorsInner(
        {  this.name, this.total_engaged_users, this.models = const [],
        required this.entries, }
    );

    factory Copilot-ide-code-completionsEditorsInner.fromJson(Map<String, dynamic>
        json) {
        return Copilot-ide-code-completionsEditorsInner(
            name: json['name'] as String? ,
            total_engaged_users: (json['total_engaged_users'] as int?).toInt() ,
            models: (json['models'] as List?)?.map<Copilot-ide-code-completionsEditorsInnerModelsInner>((e) => Copilot-ide-code-completionsEditorsInnerModelsInner.fromJson(e as Map<String, dynamic>) ).toList() ,
            entries: json.map((key, value) => MapEntry(key, value)),
        );
    }

    /// Convenience to create a nullable type from a nullable json object.
    /// Useful when parsing optional fields.
    static Copilot-ide-code-completionsEditorsInner? maybeFromJson(Map<String, dynamic>? json) {
        if (json == null) {
            return null;
        }
        return Copilot-ide-code-completionsEditorsInner.fromJson(json);
    }

    final  String? name;
    final  int? total_engaged_users;
    final  List<Copilot-ide-code-completionsEditorsInnerModelsInner>? models;

    final Map<String, dynamic> entries;

    dynamic? operator [](String key) => entries[key];

    Map<String, dynamic> toJson() {
        return {
            'name': name,
            'total_engaged_users': total_engaged_users,
            'models': models?.map((e) => e.toJson()).toList(),
            ...entries.map((key, value) => MapEntry(key, value)),
        };
    }

    @override
    int get hashCode =>
        Object.hash(
          name,
          total_engaged_users,
          models,
          entries,
        );

    @override
    bool operator ==(Object other) {
        if (identical(this, other)) return true;
        return other is Copilot-ide-code-completionsEditorsInner
            && name == other.name
            && total_engaged_users == other.total_engaged_users
            && listsEqual(models, other.models)
            && mapsEqual(entries, other.entries)
        ;
    }
}
