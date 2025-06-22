import 'dart:convert';
import 'dart:io';
import 'package:meta/meta.dart';
import 'package:github/model_helpers.dart';
import 'package:github/model/app-permissions_organization_announcement_banners.dart';
import 'package:github/model/app-permissions_organization_announcement_banners.dart';
enum App-permissionsOrganizationAnnouncementBanners {
    read._('read'),
    write._('write'),
    ;

    const App-permissionsOrganizationAnnouncementBanners._(this.value);

    factory App-permissionsOrganizationAnnouncementBanners.fromJson(String json) {
        return App-permissionsOrganizationAnnouncementBanners.values.firstWhere(
            (value) => value.value == json,
            orElse: () =>
                throw FormatException('Unknown App-permissionsOrganizationAnnouncementBanners value: $json')
        );
    }

    /// Convenience to create a nullable type from a nullable json object.
    /// Useful when parsing optional fields.
    static App-permissionsOrganizationAnnouncementBanners? maybeFromJson(String? json) {
        if (json == null) {
            return null;
        }
        return App-permissionsOrganizationAnnouncementBanners.fromJson(json);
    }

    final String value;

    String toJson() => value;

    @override
    String toString() => value;
}
