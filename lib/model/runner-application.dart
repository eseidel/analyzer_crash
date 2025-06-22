import 'dart:convert';
import 'dart:io';
import 'package:meta/meta.dart';
import 'package:github/model_helpers.dart';
import 'package:github/model/runner-application.dart';
import 'package:github/model/runner-application.dart';
@immutable
class Runner-application {
    Runner-application(
        { required this.os,required this.architecture,required this.download_url,required this.filename, this.temp_download_token, this.sha256_checksum,
         }
    );

    factory Runner-application.fromJson(Map<String, dynamic>
        json) {
        return Runner-application(
            os: json['os'] as String ,
            architecture: json['architecture'] as String ,
            download_url: json['download_url'] as String ,
            filename: json['filename'] as String ,
            temp_download_token: json['temp_download_token'] as String? ,
            sha256_checksum: json['sha256_checksum'] as String? ,
        );
    }

    /// Convenience to create a nullable type from a nullable json object.
    /// Useful when parsing optional fields.
    static Runner-application? maybeFromJson(Map<String, dynamic>? json) {
        if (json == null) {
            return null;
        }
        return Runner-application.fromJson(json);
    }

    final String  os;
    final String  architecture;
    final String  download_url;
    final String  filename;
    final  String? temp_download_token;
    final  String? sha256_checksum;


    Map<String, dynamic> toJson() {
        return {
            'os': os,
            'architecture': architecture,
            'download_url': download_url,
            'filename': filename,
            'temp_download_token': temp_download_token,
            'sha256_checksum': sha256_checksum,
        };
    }

    @override
    int get hashCode =>
        Object.hash(
          os,
          architecture,
          download_url,
          filename,
          temp_download_token,
          sha256_checksum,
        );

    @override
    bool operator ==(Object other) {
        if (identical(this, other)) return true;
        return other is Runner-application
            && os == other.os
            && architecture == other.architecture
            && download_url == other.download_url
            && filename == other.filename
            && temp_download_token == other.temp_download_token
            && sha256_checksum == other.sha256_checksum
        ;
    }
}
