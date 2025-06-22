import 'dart:convert';
import 'dart:io';
import 'package:meta/meta.dart';
import 'package:github/model_helpers.dart';
import 'package:github/model/copilot-dotcom-chat.dart';
import 'package:github/model/copilot-dotcom-chat_models_inner.dart';
import 'package:github/model/copilot-dotcom-chat.dart';
import 'package:github/model/copilot-dotcom-chat_models_inner.dart';
@immutable
class Copilot-dotcom-chat {
    Copilot-dotcom-chat(
        {  this.total_engaged_users, this.models = const [],
        required this.entries, }
    );

    factory Copilot-dotcom-chat.fromJson(Map<String, dynamic>
        json) {
        return Copilot-dotcom-chat(
            total_engaged_users: (json['total_engaged_users'] as int?).toInt() ,
            models: (json['models'] as List?)?.map<Copilot-dotcom-chatModelsInner>((e) => Copilot-dotcom-chatModelsInner.fromJson(e as Map<String, dynamic>) ).toList() ,
            entries: json.map((key, value) => MapEntry(key, value)),
        );
    }

    /// Convenience to create a nullable type from a nullable json object.
    /// Useful when parsing optional fields.
    static Copilot-dotcom-chat? maybeFromJson(Map<String, dynamic>? json) {
        if (json == null) {
            return null;
        }
        return Copilot-dotcom-chat.fromJson(json);
    }

    final  int? total_engaged_users;
    final  List<Copilot-dotcom-chatModelsInner>? models;

    final Map<String, dynamic> entries;

    dynamic? operator [](String key) => entries[key];

    Map<String, dynamic> toJson() {
        return {
            'total_engaged_users': total_engaged_users,
            'models': models?.map((e) => e.toJson()).toList(),
            ...entries.map((key, value) => MapEntry(key, value)),
        };
    }

    @override
    int get hashCode =>
        Object.hash(
          total_engaged_users,
          models,
          entries,
        );

    @override
    bool operator ==(Object other) {
        if (identical(this, other)) return true;
        return other is Copilot-dotcom-chat
            && total_engaged_users == other.total_engaged_users
            && listsEqual(models, other.models)
            && mapsEqual(entries, other.entries)
        ;
    }
}
