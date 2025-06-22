import 'dart:convert';
import 'dart:io';
import 'package:meta/meta.dart';
import 'package:github/model_helpers.dart';
import 'package:github/model/copilot-usage-metrics-day.dart';
import 'package:github/model/copilot-ide-code-completions.dart';
import 'package:github/model/copilot-ide-code-completions_languages_inner.dart';
import 'package:github/model/copilot-ide-code-completions_editors_inner.dart';
import 'package:github/model/copilot-ide-code-completions_editors_inner_models_inner.dart';
import 'package:github/model/copilot-ide-code-completions_editors_inner_models_inner_languages_inner.dart';
import 'package:github/model/copilot-ide-chat.dart';
import 'package:github/model/copilot-ide-chat_editors_inner.dart';
import 'package:github/model/copilot-ide-chat_editors_inner_models_inner.dart';
import 'package:github/model/copilot-dotcom-chat.dart';
import 'package:github/model/copilot-dotcom-chat_models_inner.dart';
import 'package:github/model/copilot-dotcom-pull-requests.dart';
import 'package:github/model/copilot-dotcom-pull-requests_repositories_inner.dart';
import 'package:github/model/copilot-dotcom-pull-requests_repositories_inner_models_inner.dart';
import 'package:github/model/copilot-usage-metrics-day.dart';
import 'package:github/model/copilot-ide-code-completions.dart';
import 'package:github/model/copilot-ide-code-completions_languages_inner.dart';
import 'package:github/model/copilot-ide-code-completions_editors_inner.dart';
import 'package:github/model/copilot-ide-code-completions_editors_inner_models_inner.dart';
import 'package:github/model/copilot-ide-code-completions_editors_inner_models_inner_languages_inner.dart';
import 'package:github/model/copilot-ide-chat.dart';
import 'package:github/model/copilot-ide-chat_editors_inner.dart';
import 'package:github/model/copilot-ide-chat_editors_inner_models_inner.dart';
import 'package:github/model/copilot-dotcom-chat.dart';
import 'package:github/model/copilot-dotcom-chat_models_inner.dart';
import 'package:github/model/copilot-dotcom-pull-requests.dart';
import 'package:github/model/copilot-dotcom-pull-requests_repositories_inner.dart';
import 'package:github/model/copilot-dotcom-pull-requests_repositories_inner_models_inner.dart';
@immutable
class Copilot-usage-metrics-day {
    Copilot-usage-metrics-day(
        { required this.date, this.total_active_users, this.total_engaged_users, this.copilot_ide_code_completions, this.copilot_ide_chat, this.copilot_dotcom_chat, this.copilot_dotcom_pull_requests,
        required this.entries, }
    );

    factory Copilot-usage-metrics-day.fromJson(Map<String, dynamic>
        json) {
        return Copilot-usage-metrics-day(
            date: json['date'] as String ,
            total_active_users: (json['total_active_users'] as int?).toInt() ,
            total_engaged_users: (json['total_engaged_users'] as int?).toInt() ,
            copilot_ide_code_completions: Copilot-ide-code-completions.maybeFromJson(json['copilot_ide_code_completions'] as Map<String, dynamic>?) ,
            copilot_ide_chat: Copilot-ide-chat.maybeFromJson(json['copilot_ide_chat'] as Map<String, dynamic>?) ,
            copilot_dotcom_chat: Copilot-dotcom-chat.maybeFromJson(json['copilot_dotcom_chat'] as Map<String, dynamic>?) ,
            copilot_dotcom_pull_requests: Copilot-dotcom-pull-requests.maybeFromJson(json['copilot_dotcom_pull_requests'] as Map<String, dynamic>?) ,
            entries: json.map((key, value) => MapEntry(key, value)),
        );
    }

    /// Convenience to create a nullable type from a nullable json object.
    /// Useful when parsing optional fields.
    static Copilot-usage-metrics-day? maybeFromJson(Map<String, dynamic>? json) {
        if (json == null) {
            return null;
        }
        return Copilot-usage-metrics-day.fromJson(json);
    }

    final String  date;
    final  int? total_active_users;
    final  int? total_engaged_users;
    final  Copilot-ide-code-completions? copilot_ide_code_completions;
    final  Copilot-ide-chat? copilot_ide_chat;
    final  Copilot-dotcom-chat? copilot_dotcom_chat;
    final  Copilot-dotcom-pull-requests? copilot_dotcom_pull_requests;

    final Map<String, dynamic> entries;

    dynamic? operator [](String key) => entries[key];

    Map<String, dynamic> toJson() {
        return {
            'date': date,
            'total_active_users': total_active_users,
            'total_engaged_users': total_engaged_users,
            'copilot_ide_code_completions': copilot_ide_code_completions?.toJson(),
            'copilot_ide_chat': copilot_ide_chat?.toJson(),
            'copilot_dotcom_chat': copilot_dotcom_chat?.toJson(),
            'copilot_dotcom_pull_requests': copilot_dotcom_pull_requests?.toJson(),
            ...entries.map((key, value) => MapEntry(key, value)),
        };
    }

    @override
    int get hashCode =>
        Object.hash(
          date,
          total_active_users,
          total_engaged_users,
          copilot_ide_code_completions,
          copilot_ide_chat,
          copilot_dotcom_chat,
          copilot_dotcom_pull_requests,
          entries,
        );

    @override
    bool operator ==(Object other) {
        if (identical(this, other)) return true;
        return other is Copilot-usage-metrics-day
            && date == other.date
            && total_active_users == other.total_active_users
            && total_engaged_users == other.total_engaged_users
            && copilot_ide_code_completions == other.copilot_ide_code_completions
            && copilot_ide_chat == other.copilot_ide_chat
            && copilot_dotcom_chat == other.copilot_dotcom_chat
            && copilot_dotcom_pull_requests == other.copilot_dotcom_pull_requests
            && mapsEqual(entries, other.entries)
        ;
    }
}
