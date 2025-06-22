import 'dart:convert';
import 'dart:io';
import 'package:meta/meta.dart';
import 'package:github/model_helpers.dart';
import 'package:github/model/copilot-ide-chat.dart';
import 'package:github/model/copilot-ide-chat_editors_inner.dart';
import 'package:github/model/copilot-ide-chat_editors_inner_models_inner.dart';
import 'package:github/model/copilot-ide-chat.dart';
import 'package:github/model/copilot-ide-chat_editors_inner.dart';
import 'package:github/model/copilot-ide-chat_editors_inner_models_inner.dart';
@immutable
class Copilot-ide-chat {
    Copilot-ide-chat(
        {  this.total_engaged_users, this.editors = const [],
        required this.entries, }
    );

    factory Copilot-ide-chat.fromJson(Map<String, dynamic>
        json) {
        return Copilot-ide-chat(
            total_engaged_users: (json['total_engaged_users'] as int?).toInt() ,
            editors: (json['editors'] as List?)?.map<Copilot-ide-chatEditorsInner>((e) => Copilot-ide-chatEditorsInner.fromJson(e as Map<String, dynamic>) ).toList() ,
            entries: json.map((key, value) => MapEntry(key, value)),
        );
    }

    /// Convenience to create a nullable type from a nullable json object.
    /// Useful when parsing optional fields.
    static Copilot-ide-chat? maybeFromJson(Map<String, dynamic>? json) {
        if (json == null) {
            return null;
        }
        return Copilot-ide-chat.fromJson(json);
    }

    final  int? total_engaged_users;
    final  List<Copilot-ide-chatEditorsInner>? editors;

    final Map<String, dynamic> entries;

    dynamic? operator [](String key) => entries[key];

    Map<String, dynamic> toJson() {
        return {
            'total_engaged_users': total_engaged_users,
            'editors': editors?.map((e) => e.toJson()).toList(),
            ...entries.map((key, value) => MapEntry(key, value)),
        };
    }

    @override
    int get hashCode =>
        Object.hash(
          total_engaged_users,
          editors,
          entries,
        );

    @override
    bool operator ==(Object other) {
        if (identical(this, other)) return true;
        return other is Copilot-ide-chat
            && total_engaged_users == other.total_engaged_users
            && listsEqual(editors, other.editors)
            && mapsEqual(entries, other.entries)
        ;
    }
}
