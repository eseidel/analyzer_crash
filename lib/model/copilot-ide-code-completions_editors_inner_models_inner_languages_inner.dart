import 'dart:convert';
import 'dart:io';
import 'package:meta/meta.dart';
import 'package:github/model_helpers.dart';
import 'package:github/model/copilot-ide-code-completions_editors_inner_models_inner_languages_inner.dart';
import 'package:github/model/copilot-ide-code-completions_editors_inner_models_inner_languages_inner.dart';
@immutable
class Copilot-ide-code-completionsEditorsInnerModelsInnerLanguagesInner {
    Copilot-ide-code-completionsEditorsInnerModelsInnerLanguagesInner(
        {  this.name, this.total_engaged_users, this.total_code_suggestions, this.total_code_acceptances, this.total_code_lines_suggested, this.total_code_lines_accepted,
         }
    );

    factory Copilot-ide-code-completionsEditorsInnerModelsInnerLanguagesInner.fromJson(Map<String, dynamic>
        json) {
        return Copilot-ide-code-completionsEditorsInnerModelsInnerLanguagesInner(
            name: json['name'] as String? ,
            total_engaged_users: (json['total_engaged_users'] as int?).toInt() ,
            total_code_suggestions: (json['total_code_suggestions'] as int?).toInt() ,
            total_code_acceptances: (json['total_code_acceptances'] as int?).toInt() ,
            total_code_lines_suggested: (json['total_code_lines_suggested'] as int?).toInt() ,
            total_code_lines_accepted: (json['total_code_lines_accepted'] as int?).toInt() ,
        );
    }

    /// Convenience to create a nullable type from a nullable json object.
    /// Useful when parsing optional fields.
    static Copilot-ide-code-completionsEditorsInnerModelsInnerLanguagesInner? maybeFromJson(Map<String, dynamic>? json) {
        if (json == null) {
            return null;
        }
        return Copilot-ide-code-completionsEditorsInnerModelsInnerLanguagesInner.fromJson(json);
    }

    final  String? name;
    final  int? total_engaged_users;
    final  int? total_code_suggestions;
    final  int? total_code_acceptances;
    final  int? total_code_lines_suggested;
    final  int? total_code_lines_accepted;


    Map<String, dynamic> toJson() {
        return {
            'name': name,
            'total_engaged_users': total_engaged_users,
            'total_code_suggestions': total_code_suggestions,
            'total_code_acceptances': total_code_acceptances,
            'total_code_lines_suggested': total_code_lines_suggested,
            'total_code_lines_accepted': total_code_lines_accepted,
        };
    }

    @override
    int get hashCode =>
        Object.hash(
          name,
          total_engaged_users,
          total_code_suggestions,
          total_code_acceptances,
          total_code_lines_suggested,
          total_code_lines_accepted,
        );

    @override
    bool operator ==(Object other) {
        if (identical(this, other)) return true;
        return other is Copilot-ide-code-completionsEditorsInnerModelsInnerLanguagesInner
            && name == other.name
            && total_engaged_users == other.total_engaged_users
            && total_code_suggestions == other.total_code_suggestions
            && total_code_acceptances == other.total_code_acceptances
            && total_code_lines_suggested == other.total_code_lines_suggested
            && total_code_lines_accepted == other.total_code_lines_accepted
        ;
    }
}
