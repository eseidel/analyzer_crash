import 'dart:convert';
import 'dart:io';
import 'package:meta/meta.dart';
import 'package:github/model_helpers.dart';
import 'package:github/model/copilot-ide-code-completions.dart';
import 'package:github/model/copilot-ide-code-completions_languages_inner.dart';
import 'package:github/model/copilot-ide-code-completions_editors_inner.dart';
import 'package:github/model/copilot-ide-code-completions_editors_inner_models_inner.dart';
import 'package:github/model/copilot-ide-code-completions_editors_inner_models_inner_languages_inner.dart';
import 'package:github/model/copilot-ide-code-completions.dart';
import 'package:github/model/copilot-ide-code-completions_languages_inner.dart';
import 'package:github/model/copilot-ide-code-completions_editors_inner.dart';
import 'package:github/model/copilot-ide-code-completions_editors_inner_models_inner.dart';
import 'package:github/model/copilot-ide-code-completions_editors_inner_models_inner_languages_inner.dart';
@immutable
class Copilot-ide-code-completions {
    Copilot-ide-code-completions(
        {  this.total_engaged_users, this.languages = const [], this.editors = const [],
        required this.entries, }
    );

    factory Copilot-ide-code-completions.fromJson(Map<String, dynamic>
        json) {
        return Copilot-ide-code-completions(
            total_engaged_users: (json['total_engaged_users'] as int?).toInt() ,
            languages: (json['languages'] as List?)?.map<Copilot-ide-code-completionsLanguagesInner>((e) => Copilot-ide-code-completionsLanguagesInner.fromJson(e as Map<String, dynamic>) ).toList() ,
            editors: (json['editors'] as List?)?.map<Copilot-ide-code-completionsEditorsInner>((e) => Copilot-ide-code-completionsEditorsInner.fromJson(e as Map<String, dynamic>) ).toList() ,
            entries: json.map((key, value) => MapEntry(key, value)),
        );
    }

    /// Convenience to create a nullable type from a nullable json object.
    /// Useful when parsing optional fields.
    static Copilot-ide-code-completions? maybeFromJson(Map<String, dynamic>? json) {
        if (json == null) {
            return null;
        }
        return Copilot-ide-code-completions.fromJson(json);
    }

    final  int? total_engaged_users;
    final  List<Copilot-ide-code-completionsLanguagesInner>? languages;
    final  List<Copilot-ide-code-completionsEditorsInner>? editors;

    final Map<String, dynamic> entries;

    dynamic? operator [](String key) => entries[key];

    Map<String, dynamic> toJson() {
        return {
            'total_engaged_users': total_engaged_users,
            'languages': languages?.map((e) => e.toJson()).toList(),
            'editors': editors?.map((e) => e.toJson()).toList(),
            ...entries.map((key, value) => MapEntry(key, value)),
        };
    }

    @override
    int get hashCode =>
        Object.hash(
          total_engaged_users,
          languages,
          editors,
          entries,
        );

    @override
    bool operator ==(Object other) {
        if (identical(this, other)) return true;
        return other is Copilot-ide-code-completions
            && total_engaged_users == other.total_engaged_users
            && listsEqual(languages, other.languages)
            && listsEqual(editors, other.editors)
            && mapsEqual(entries, other.entries)
        ;
    }
}
