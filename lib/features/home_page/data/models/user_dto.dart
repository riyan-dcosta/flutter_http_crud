import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:http_crud_dummy/features/home_page/domain/entities/user_model.dart';

part 'user_dto.freezed.dart';

part 'user_dto.g.dart';

@freezed
class UserDto with _$UserDto {
  const UserDto._();

  const factory UserDto({
    @JsonKey(name: "id") required String userID,
    @JsonKey(name: "name", defaultValue: "N/A") required String name,
    @JsonKey(name: "age", defaultValue: -1) required int age,
    // int? statusCode,
    // String? reasonPhrase,
  }) = _UserDto;

  User toDomain() => User(
        userID: userID,
        name: name,
        age: age,
      );

  factory UserDto.fromJson(Map<String, dynamic> json) =>
      _$UserDtoFromJson(json);

// String? userID;
// String? name;
// int? age;
// int? statusCode;
// String? reasonPhrase;

// UserDto(
//     {this.name,
//     this.age,
//     required this.statusCode,
//     required this.reasonPhrase});

// UserDto.fromJson(Map<String, dynamic> json) {
//   userID = json['id'];
//   name = json['name'];
//   age = json['age'];
//   statusCode = json['statusCode'];
//   reasonPhrase = json['reasonPhrase'];
// }

// Map<String, dynamic> toJson() {
//   final data = <String, dynamic>{};
//   data['name'] = name;
//   data['age'] = age;
//   return data;
// }
}
