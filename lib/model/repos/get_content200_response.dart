import 'dart:convert';
import 'dart:io';
import 'package:meta/meta.dart';
import 'package:github/model_helpers.dart';
import 'package:github/model/repos/get_content200_response.dart';
import 'package:github/model/content-directory_inner.dart';
import 'package:github/model/content-directory_inner_type.dart';
import 'package:github/model/content-directory_inner_links.dart';
import 'package:github/model/content-file.dart';
import 'package:github/model/content-file_type.dart';
import 'package:github/model/content-file_links.dart';
import 'package:github/model/content-symlink.dart';
import 'package:github/model/content-symlink_type.dart';
import 'package:github/model/content-symlink_links.dart';
import 'package:github/model/content-submodule.dart';
import 'package:github/model/content-submodule_type.dart';
import 'package:github/model/content-submodule_links.dart';
import 'package:github/model/repos/get_content200_response.dart';
import 'package:github/model/content-directory_inner.dart';
import 'package:github/model/content-directory_inner_type.dart';
import 'package:github/model/content-directory_inner_links.dart';
import 'package:github/model/content-file.dart';
import 'package:github/model/content-file_type.dart';
import 'package:github/model/content-file_links.dart';
import 'package:github/model/content-symlink.dart';
import 'package:github/model/content-symlink_type.dart';
import 'package:github/model/content-symlink_links.dart';
import 'package:github/model/content-submodule.dart';
import 'package:github/model/content-submodule_type.dart';
import 'package:github/model/content-submodule_links.dart';

sealed class Repos&#x2F;getContent200Response {
    static Repos&#x2F;getContent200Response fromJson(dynamic jsonArg) {
        // Determine which schema to use based on the json.
        // TODO(eseidel): Implement this.
        throw UnimplementedError('Repos&#x2F;getContent200Response.fromJson');
    }

    /// Convenience to create a nullable type from a nullable json object.
    /// Useful when parsing optional fields.
    static Repos&#x2F;getContent200Response? maybeFromJson(dynamic json) {
        if (json == null) {
            return null;
        }
        return Repos&#x2F;getContent200Response.fromJson(json);
    }

    /// Require all subclasses to implement toJson.
    dynamic toJson();
}
