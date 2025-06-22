import 'dart:convert';
import 'dart:io';
import 'package:meta/meta.dart';
import 'package:github/model_helpers.dart';
import 'package:github/model/team-full_notification_setting.dart';
import 'package:github/model/team-full_notification_setting.dart';
enum Team-fullNotificationSetting {
    notificationsEnabled._('notifications_enabled'),
    notificationsDisabled._('notifications_disabled'),
    ;

    const Team-fullNotificationSetting._(this.value);

    factory Team-fullNotificationSetting.fromJson(String json) {
        return Team-fullNotificationSetting.values.firstWhere(
            (value) => value.value == json,
            orElse: () =>
                throw FormatException('Unknown Team-fullNotificationSetting value: $json')
        );
    }

    /// Convenience to create a nullable type from a nullable json object.
    /// Useful when parsing optional fields.
    static Team-fullNotificationSetting? maybeFromJson(String? json) {
        if (json == null) {
            return null;
        }
        return Team-fullNotificationSetting.fromJson(json);
    }

    final String value;

    String toJson() => value;

    @override
    String toString() => value;
}
