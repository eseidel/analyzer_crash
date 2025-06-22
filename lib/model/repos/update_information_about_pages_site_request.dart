import 'dart:convert';
import 'dart:io';
import 'package:meta/meta.dart';
import 'package:github/model_helpers.dart';
import 'package:github/model/repos/update_information_about_pages_site_request.dart';
import 'package:github/model/repos/update_information_about_pages_site_request.dart';

sealed class Repos&#x2F;updateInformationAboutPagesSiteRequest {
    static Repos&#x2F;updateInformationAboutPagesSiteRequest fromJson(dynamic jsonArg) {
        // Determine which schema to use based on the json.
        // TODO(eseidel): Implement this.
        throw UnimplementedError('Repos&#x2F;updateInformationAboutPagesSiteRequest.fromJson');
    }

    /// Convenience to create a nullable type from a nullable json object.
    /// Useful when parsing optional fields.
    static Repos&#x2F;updateInformationAboutPagesSiteRequest? maybeFromJson(dynamic json) {
        if (json == null) {
            return null;
        }
        return Repos&#x2F;updateInformationAboutPagesSiteRequest.fromJson(json);
    }

    /// Require all subclasses to implement toJson.
    dynamic toJson();
}
