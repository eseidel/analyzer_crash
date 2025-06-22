import 'dart:convert';
import 'dart:io';
import 'package:meta/meta.dart';
import 'package:github/model_helpers.dart';
import 'package:github/model/license-content.dart';
import 'package:github/model/license-content_links.dart';
import 'package:github/model/nullable-license-simple.dart';
import 'package:github/model/license-content.dart';
import 'package:github/model/license-content_links.dart';
import 'package:github/model/nullable-license-simple.dart';
@immutable
class License-content {
    License-content(
        { required this.name,required this.path,required this.sha,required this.size,required this.url,required this.html_url,required this.git_url,required this.download_url,required this.type,required this.content,required this.encoding,required this._links,required this.license,
         }
    );

    factory License-content.fromJson(Map<String, dynamic>
        json) {
        return License-content(
            name: json['name'] as String ,
            path: json['path'] as String ,
            sha: json['sha'] as String ,
            size: (json['size'] as int).toInt() ,
            url: json['url'] as String ,
            html_url: json['html_url'] as String ,
            git_url: json['git_url'] as String ,
            download_url: json['download_url'] as String ,
            type: json['type'] as String ,
            content: json['content'] as String ,
            encoding: json['encoding'] as String ,
            _links: License-contentLinks.fromJson(json['_links'] as Map<String, dynamic>) ,
            license: Nullable-license-simple.fromJson(json['license'] as Map<String, dynamic>) ,
        );
    }

    /// Convenience to create a nullable type from a nullable json object.
    /// Useful when parsing optional fields.
    static License-content? maybeFromJson(Map<String, dynamic>? json) {
        if (json == null) {
            return null;
        }
        return License-content.fromJson(json);
    }

    final String  name;
    final String  path;
    final String  sha;
    final int  size;
    final String  url;
    final String  html_url;
    final String  git_url;
    final String  download_url;
    final String  type;
    final String  content;
    final String  encoding;
    final License-contentLinks  _links;
    final Nullable-license-simple  license;


    Map<String, dynamic> toJson() {
        return {
            'name': name,
            'path': path,
            'sha': sha,
            'size': size,
            'url': url,
            'html_url': html_url,
            'git_url': git_url,
            'download_url': download_url,
            'type': type,
            'content': content,
            'encoding': encoding,
            '_links': _links.toJson(),
            'license': license.toJson(),
        };
    }

    @override
    int get hashCode =>
        Object.hash(
          name,
          path,
          sha,
          size,
          url,
          html_url,
          git_url,
          download_url,
          type,
          content,
          encoding,
          _links,
          license,
        );

    @override
    bool operator ==(Object other) {
        if (identical(this, other)) return true;
        return other is License-content
            && name == other.name
            && path == other.path
            && sha == other.sha
            && size == other.size
            && url == other.url
            && html_url == other.html_url
            && git_url == other.git_url
            && download_url == other.download_url
            && type == other.type
            && content == other.content
            && encoding == other.encoding
            && _links == other._links
            && license == other.license
        ;
    }
}
