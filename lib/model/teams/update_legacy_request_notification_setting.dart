import 'dart:convert';
import 'dart:io';
import 'package:meta/meta.dart';
import 'package:github/model_helpers.dart';
import 'package:github/model/teams/update_legacy_request_notification_setting.dart';
import 'package:github/model/teams/update_legacy_request_notification_setting.dart';
enum Teams&#x2F;updateLegacyRequestNotificationSetting {
    notificationsEnabled._('notifications_enabled'),
    notificationsDisabled._('notifications_disabled'),
    ;

    const Teams&#x2F;updateLegacyRequestNotificationSetting._(this.value);

    factory Teams&#x2F;updateLegacyRequestNotificationSetting.fromJson(String json) {
        return Teams&#x2F;updateLegacyRequestNotificationSetting.values.firstWhere(
            (value) => value.value == json,
            orElse: () =>
                throw FormatException('Unknown Teams&#x2F;updateLegacyRequestNotificationSetting value: $json')
        );
    }

    /// Convenience to create a nullable type from a nullable json object.
    /// Useful when parsing optional fields.
    static Teams&#x2F;updateLegacyRequestNotificationSetting? maybeFromJson(String? json) {
        if (json == null) {
            return null;
        }
        return Teams&#x2F;updateLegacyRequestNotificationSetting.fromJson(json);
    }

    final String value;

    String toJson() => value;

    @override
    String toString() => value;
}
