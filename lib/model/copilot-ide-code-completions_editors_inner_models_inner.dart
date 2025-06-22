import 'dart:convert';
import 'dart:io';
import 'package:meta/meta.dart';
import 'package:github/model_helpers.dart';
import 'package:github/model/copilot-ide-code-completions_editors_inner_models_inner.dart';
import 'package:github/model/copilot-ide-code-completions_editors_inner_models_inner_languages_inner.dart';
import 'package:github/model/copilot-ide-code-completions_editors_inner_models_inner.dart';
import 'package:github/model/copilot-ide-code-completions_editors_inner_models_inner_languages_inner.dart';
@immutable
class Copilot-ide-code-completionsEditorsInnerModelsInner {
    Copilot-ide-code-completionsEditorsInnerModelsInner(
        {  this.name, this.is_custom_model, this.custom_model_training_date, this.total_engaged_users, this.languages = const [],
         }
    );

    factory Copilot-ide-code-completionsEditorsInnerModelsInner.fromJson(Map<String, dynamic>
        json) {
        return Copilot-ide-code-completionsEditorsInnerModelsInner(
            name: json['name'] as String? ,
            is_custom_model: (json['is_custom_model'] as bool?) ,
            custom_model_training_date: json['custom_model_training_date'] as String? ,
            total_engaged_users: (json['total_engaged_users'] as int?).toInt() ,
            languages: (json['languages'] as List?)?.map<Copilot-ide-code-completionsEditorsInnerModelsInnerLanguagesInner>((e) => Copilot-ide-code-completionsEditorsInnerModelsInnerLanguagesInner.fromJson(e as Map<String, dynamic>) ).toList() ,
        );
    }

    /// Convenience to create a nullable type from a nullable json object.
    /// Useful when parsing optional fields.
    static Copilot-ide-code-completionsEditorsInnerModelsInner? maybeFromJson(Map<String, dynamic>? json) {
        if (json == null) {
            return null;
        }
        return Copilot-ide-code-completionsEditorsInnerModelsInner.fromJson(json);
    }

    final  String? name;
    final  bool? is_custom_model;
    final  String? custom_model_training_date;
    final  int? total_engaged_users;
    final  List<Copilot-ide-code-completionsEditorsInnerModelsInnerLanguagesInner>? languages;


    Map<String, dynamic> toJson() {
        return {
            'name': name,
            'is_custom_model': is_custom_model,
            'custom_model_training_date': custom_model_training_date,
            'total_engaged_users': total_engaged_users,
            'languages': languages?.map((e) => e.toJson()).toList(),
        };
    }

    @override
    int get hashCode =>
        Object.hash(
          name,
          is_custom_model,
          custom_model_training_date,
          total_engaged_users,
          languages,
        );

    @override
    bool operator ==(Object other) {
        if (identical(this, other)) return true;
        return other is Copilot-ide-code-completionsEditorsInnerModelsInner
            && name == other.name
            && is_custom_model == other.is_custom_model
            && custom_model_training_date == other.custom_model_training_date
            && total_engaged_users == other.total_engaged_users
            && listsEqual(languages, other.languages)
        ;
    }
}
