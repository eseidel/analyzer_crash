import 'dart:convert';
import 'dart:io';
import 'package:meta/meta.dart';
import 'package:github/model_helpers.dart';
import 'package:github/model/copilot-ide-chat_editors_inner.dart';
import 'package:github/model/copilot-ide-chat_editors_inner_models_inner.dart';
import 'package:github/model/copilot-ide-chat_editors_inner.dart';
import 'package:github/model/copilot-ide-chat_editors_inner_models_inner.dart';
@immutable
class Copilot-ide-chatEditorsInner {
    Copilot-ide-chatEditorsInner(
        {  this.name, this.total_engaged_users, this.models = const [],
         }
    );

    factory Copilot-ide-chatEditorsInner.fromJson(Map<String, dynamic>
        json) {
        return Copilot-ide-chatEditorsInner(
            name: json['name'] as String? ,
            total_engaged_users: (json['total_engaged_users'] as int?).toInt() ,
            models: (json['models'] as List?)?.map<Copilot-ide-chatEditorsInnerModelsInner>((e) => Copilot-ide-chatEditorsInnerModelsInner.fromJson(e as Map<String, dynamic>) ).toList() ,
        );
    }

    /// Convenience to create a nullable type from a nullable json object.
    /// Useful when parsing optional fields.
    static Copilot-ide-chatEditorsInner? maybeFromJson(Map<String, dynamic>? json) {
        if (json == null) {
            return null;
        }
        return Copilot-ide-chatEditorsInner.fromJson(json);
    }

    final  String? name;
    final  int? total_engaged_users;
    final  List<Copilot-ide-chatEditorsInnerModelsInner>? models;


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
        return other is Copilot-ide-chatEditorsInner
            && name == other.name
            && total_engaged_users == other.total_engaged_users
            && listsEqual(models, other.models)
        ;
    }
}
