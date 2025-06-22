import 'dart:convert';
import 'dart:io';
import 'package:meta/meta.dart';
import 'package:github/model_helpers.dart';
import 'package:github/model/copilot-ide-code-completions_languages_inner.dart';
import 'package:github/model/copilot-ide-code-completions_languages_inner.dart';
@immutable
class Copilot-ide-code-completionsLanguagesInner {
    Copilot-ide-code-completionsLanguagesInner(
        {  this.name, this.total_engaged_users,
         }
    );

    factory Copilot-ide-code-completionsLanguagesInner.fromJson(Map<String, dynamic>
        json) {
        return Copilot-ide-code-completionsLanguagesInner(
            name: json['name'] as String? ,
            total_engaged_users: (json['total_engaged_users'] as int?).toInt() ,
        );
    }

    /// Convenience to create a nullable type from a nullable json object.
    /// Useful when parsing optional fields.
    static Copilot-ide-code-completionsLanguagesInner? maybeFromJson(Map<String, dynamic>? json) {
        if (json == null) {
            return null;
        }
        return Copilot-ide-code-completionsLanguagesInner.fromJson(json);
    }

    final  String? name;
    final  int? total_engaged_users;


    Map<String, dynamic> toJson() {
        return {
            'name': name,
            'total_engaged_users': total_engaged_users,
        };
    }

    @override
    int get hashCode =>
        Object.hash(
          name,
          total_engaged_users,
        );

    @override
    bool operator ==(Object other) {
        if (identical(this, other)) return true;
        return other is Copilot-ide-code-completionsLanguagesInner
            && name == other.name
            && total_engaged_users == other.total_engaged_users
        ;
    }
}
