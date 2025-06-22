import 'dart:convert';
import 'dart:io';
import 'package:meta/meta.dart';
import 'package:github/model_helpers.dart';
import 'package:github/model/copilot-organization-details_seat_management_setting.dart';
import 'package:github/model/copilot-organization-details_seat_management_setting.dart';
enum Copilot-organization-detailsSeatManagementSetting {
    assignAll._('assign_all'),
    assignSelected._('assign_selected'),
    disabled._('disabled'),
    unconfigured._('unconfigured'),
    ;

    const Copilot-organization-detailsSeatManagementSetting._(this.value);

    factory Copilot-organization-detailsSeatManagementSetting.fromJson(String json) {
        return Copilot-organization-detailsSeatManagementSetting.values.firstWhere(
            (value) => value.value == json,
            orElse: () =>
                throw FormatException('Unknown Copilot-organization-detailsSeatManagementSetting value: $json')
        );
    }

    /// Convenience to create a nullable type from a nullable json object.
    /// Useful when parsing optional fields.
    static Copilot-organization-detailsSeatManagementSetting? maybeFromJson(String? json) {
        if (json == null) {
            return null;
        }
        return Copilot-organization-detailsSeatManagementSetting.fromJson(json);
    }

    final String value;

    String toJson() => value;

    @override
    String toString() => value;
}
