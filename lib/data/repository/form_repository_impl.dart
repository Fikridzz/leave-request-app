import 'package:dio/dio.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:leave_request_app/constants/app_constant.dart';
import 'package:leave_request_app/constants/submission_status.dart';
import 'package:leave_request_app/data/response/leave_request_response.dart';
import 'package:leave_request_app/domain/model/employee_form.dart';
import 'package:leave_request_app/helper/api_exception.dart';
import 'package:leave_request_app/helper/dio_provider.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:leave_request_app/domain/model/data_leave_form.dart';
import 'package:leave_request_app/domain/repository/form_repository.dart';

part 'form_repository_impl.g.dart';

class FormRepositoryImpl implements FormRepository {
  final Dio client;
  FormRepositoryImpl(this.client);

  @override
  Future<void> createForm(DataLeaveForm data) async {
    try {
      FormData formData = FormData.fromMap({
        'type': data.type,
        'submission_date': data.submissionDate,
        'start_date': data.startDate,
        'total_days': data.totalDays,
        'reason': data.reasone,
        'status': data.status.name,
        'autograph': await MultipartFile.fromFile(
          data.autograph?.path ?? '',
          filename: data.autograph?.path.split('/').last,
        ),
      });
      final response = await client.post(
        AppConstant.leaveRequestEndpoint,
        data: formData,
      );
    } on DioException catch (e) {
      if (e.response != null) {
        // Handle server error
        final serverMessage =
            e.response?.data['message'] ?? 'Server error occurred';
        throw ApiException(serverMessage);
      } else {
        // Handel no response from server
        throw ApiException('Network error. Please check your connection.');
      }
    } catch (e) {
      // Handel unexpected error
      throw ApiException('An unexpected error occurred.');
    }
  }

  @override
  Future<LeaveRequestResponse> employeeForms() async {
    try {
      final response = await client.get(AppConstant.leaveRequestEndpoint);

      return LeaveRequestResponse.fromJson(response.data);
    } on DioException catch (e) {
      if (e.response != null) {
        // Handle server error
        final serverMessage =
            e.response?.data['message'] ?? 'Server error occurred';
        throw ApiException(serverMessage);
      } else {
        // Handel no response from server
        throw ApiException('Network error. Please check your connection.');
      }
    } catch (e) {
      // Handel unexpected error
      throw ApiException('An unexpected error occurred.');
    }
  }

  @override
  Future<LeaveRequestResponse> employeeFormsStatus(String status) async {
    try {
      final response = await client.get(
        '${AppConstant.leaveRequestEndpoint}?status=$status',
      );

      return LeaveRequestResponse.fromJson(response.data);
    } on DioException catch (e) {
      if (e.response != null) {
        // Handle server error
        final serverMessage =
            e.response?.data['message'] ?? 'Server error occurred';
        throw ApiException(serverMessage);
      } else {
        // Handel no response from server
        throw ApiException('Network error. Please check your connection.');
      }
    } catch (e) {
      // Handel unexpected error
      throw ApiException('An unexpected error occurred.');
    }
  }

  @override
  Future<void> updateFormStatus(EmployeeForm data, String status) async {
    try {
      final response = await client.put(
        '${AppConstant.leaveRequestEndpoint}/${data.id}',
        data: {'status': status},
      );
    } on DioException catch (e) {
      if (e.response != null) {
        // Handle server error
        final serverMessage =
            e.response?.data['message'] ?? 'Server error occurred';
        throw ApiException(serverMessage);
      } else {
        // Handel no response from server
        throw ApiException('Network error. Please check your connection.');
      }
    } catch (e) {
      // Handel unexpected error
      throw ApiException('An unexpected error occurred.');
    }
  }

  @override
  Future<void> deleteForm(int id) async {
    try {
      final response = await client.delete(
        '${AppConstant.leaveRequestEndpoint}/$id',
      );
    } on DioException catch (e) {
      if (e.response != null) {
        // Handle server error
        final serverMessage =
            e.response?.data['message'] ?? 'Server error occurred';
        throw ApiException(serverMessage);
      } else {
        // Handel no response from server
        throw ApiException('Network error. Please check your connection.');
      }
    } catch (e) {
      // Handel unexpected error
      throw ApiException('An unexpected error occurred.');
    }
  }
}

@riverpod
FormRepository formRepository(Ref ref) {
  final client = ref.watch(dioProvider);
  return FormRepositoryImpl(client);
}
