import 'dart:async';
import 'dart:convert';
import 'dart:io';
import 'dart:typed_data';
import 'package:github/api_client.dart';
import 'package:github/api_exception.dart';
import 'package:http/http.dart' as http;
import 'package:github/model/classroom-assignment.dart';
import 'package:github/model/classroom-assignment_type.dart';
import 'package:github/model/simple-classroom-repository.dart';
import 'package:github/model/classroom.dart';
import 'package:github/model/simple-classroom-organization.dart';
import 'package:github/model/basic-error.dart';
import 'package:github/model/classroom-assignment.dart';
import 'package:github/model/classroom-assignment_type.dart';
import 'package:github/model/simple-classroom-repository.dart';
import 'package:github/model/classroom.dart';
import 'package:github/model/simple-classroom-organization.dart';
import 'package:github/model/classroom-accepted-assignment.dart';
import 'package:github/model/simple-classroom-user.dart';
import 'package:github/model/simple-classroom-repository.dart';
import 'package:github/model/simple-classroom-assignment.dart';
import 'package:github/model/simple-classroom-assignment_type.dart';
import 'package:github/model/simple-classroom.dart';
import 'package:github/model/classroom-accepted-assignment.dart';
import 'package:github/model/simple-classroom-user.dart';
import 'package:github/model/simple-classroom-repository.dart';
import 'package:github/model/simple-classroom-assignment.dart';
import 'package:github/model/simple-classroom-assignment_type.dart';
import 'package:github/model/simple-classroom.dart';
import 'package:github/model/classroom-assignment-grade.dart';
import 'package:github/model/basic-error.dart';
import 'package:github/model/classroom-assignment-grade.dart';
import 'package:github/model/simple-classroom.dart';
import 'package:github/model/simple-classroom.dart';
import 'package:github/model/classroom.dart';
import 'package:github/model/simple-classroom-organization.dart';
import 'package:github/model/basic-error.dart';
import 'package:github/model/classroom.dart';
import 'package:github/model/simple-classroom-organization.dart';
import 'package:github/model/simple-classroom-assignment.dart';
import 'package:github/model/simple-classroom-assignment_type.dart';
import 'package:github/model/simple-classroom.dart';
import 'package:github/model/simple-classroom-assignment.dart';
import 'package:github/model/simple-classroom-assignment_type.dart';
import 'package:github/model/simple-classroom.dart';
class ClassroomApi {
    ClassroomApi(ApiClient? client) : client = client ?? ApiClient();

    final ApiClient client;

    Future<Classroom-assignment> classroom/getAnAssignment(
        int assignmentId,
    ) async {
        final response = await client.invokeApi(
            method: Method.get,
            path: '/assignments/{assignment_id}'
            .replaceAll('{assignment_id}', "${ assignmentId }")
            ,
        );

        if (response.statusCode >= HttpStatus.badRequest) {
            throw ApiException(response.statusCode, response.body.toString());
        }

        if (response.body.isNotEmpty) {
            return Classroom-assignment.fromJson(jsonDecode(response.body) as Map<String, dynamic>) ;
        }

        throw ApiException(response.statusCode, 'Unhandled response from $classroom/getAnAssignment');
    }
    Future<List<Classroom-accepted-assignment>> classroom/listAcceptedAssignmentsForAnAssignment(
        int assignmentId,
        { int? page = 1,int? perPage = 30, }
    ) async {
        final response = await client.invokeApi(
            method: Method.get,
            path: '/assignments/{assignment_id}/accepted_assignments'
            .replaceAll('{assignment_id}', "${ assignmentId }")
            ,
            queryParameters: {
                'page': ?page.toString(),
                'per_page': ?perPage.toString(),
            },
        );

        if (response.statusCode >= HttpStatus.badRequest) {
            throw ApiException(response.statusCode, response.body.toString());
        }

        if (response.body.isNotEmpty) {
            return (jsonDecode(response.body) as List).map<Classroom-accepted-assignment>((e) => Classroom-accepted-assignment.fromJson(e as Map<String, dynamic>) ).toList() ;
        }

        throw ApiException(response.statusCode, 'Unhandled response from $classroom/listAcceptedAssignmentsForAnAssignment');
    }
    Future<List<Classroom-assignment-grade>> classroom/getAssignmentGrades(
        int assignmentId,
    ) async {
        final response = await client.invokeApi(
            method: Method.get,
            path: '/assignments/{assignment_id}/grades'
            .replaceAll('{assignment_id}', "${ assignmentId }")
            ,
        );

        if (response.statusCode >= HttpStatus.badRequest) {
            throw ApiException(response.statusCode, response.body.toString());
        }

        if (response.body.isNotEmpty) {
            return (jsonDecode(response.body) as List).map<Classroom-assignment-grade>((e) => Classroom-assignment-grade.fromJson(e as Map<String, dynamic>) ).toList() ;
        }

        throw ApiException(response.statusCode, 'Unhandled response from $classroom/getAssignmentGrades');
    }
    Future<List<Simple-classroom>> classroom/listClassrooms(
        { int? page = 1,int? perPage = 30, }
    ) async {
        final response = await client.invokeApi(
            method: Method.get,
            path: '/classrooms'
,
            queryParameters: {
                'page': ?page.toString(),
                'per_page': ?perPage.toString(),
            },
        );

        if (response.statusCode >= HttpStatus.badRequest) {
            throw ApiException(response.statusCode, response.body.toString());
        }

        if (response.body.isNotEmpty) {
            return (jsonDecode(response.body) as List).map<Simple-classroom>((e) => Simple-classroom.fromJson(e as Map<String, dynamic>) ).toList() ;
        }

        throw ApiException(response.statusCode, 'Unhandled response from $classroom/listClassrooms');
    }
    Future<Classroom> classroom/getAClassroom(
        int classroomId,
    ) async {
        final response = await client.invokeApi(
            method: Method.get,
            path: '/classrooms/{classroom_id}'
            .replaceAll('{classroom_id}', "${ classroomId }")
            ,
        );

        if (response.statusCode >= HttpStatus.badRequest) {
            throw ApiException(response.statusCode, response.body.toString());
        }

        if (response.body.isNotEmpty) {
            return Classroom.fromJson(jsonDecode(response.body) as Map<String, dynamic>) ;
        }

        throw ApiException(response.statusCode, 'Unhandled response from $classroom/getAClassroom');
    }
    Future<List<Simple-classroom-assignment>> classroom/listAssignmentsForAClassroom(
        int classroomId,
        { int? page = 1,int? perPage = 30, }
    ) async {
        final response = await client.invokeApi(
            method: Method.get,
            path: '/classrooms/{classroom_id}/assignments'
            .replaceAll('{classroom_id}', "${ classroomId }")
            ,
            queryParameters: {
                'page': ?page.toString(),
                'per_page': ?perPage.toString(),
            },
        );

        if (response.statusCode >= HttpStatus.badRequest) {
            throw ApiException(response.statusCode, response.body.toString());
        }

        if (response.body.isNotEmpty) {
            return (jsonDecode(response.body) as List).map<Simple-classroom-assignment>((e) => Simple-classroom-assignment.fromJson(e as Map<String, dynamic>) ).toList() ;
        }

        throw ApiException(response.statusCode, 'Unhandled response from $classroom/listAssignmentsForAClassroom');
    }
}
