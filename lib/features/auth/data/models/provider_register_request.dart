// lib/features/auth/data/models/provider_register_request.dart
class ProviderRegisterRequest {
  final String firstName;
  final String lastName;
  final String email;
  final String password;
  final String confirmPassword;
  final String phone;
  final String businessNameRegistered;
  final String businessNameDBA;
  final String providerRole;
  final String businessPhone;
  final String website;
  final String servicesProvided;
  final String? profileImage;
  final String? businessLogo;
  final String businessServiceStart;
  final String businessServiceEnd;
  final String businessHoursStart;
  final String businessHoursEnd;
  final double hourlyRate;
  final String businessAddressStreet;
  final String businessAddressCity;
  final String businessAddressState;
  final String businessAddressZipCode;
  final int experience;

  ProviderRegisterRequest({
    required this.firstName,
    required this.lastName,
    required this.email,
    required this.password,
    required this.confirmPassword,
    required this.phone,
    required this.businessNameRegistered,
    required this.businessNameDBA,
    required this.providerRole,
    required this.businessPhone,
    required this.website,
    required this.servicesProvided,
    this.profileImage,
    this.businessLogo,
    required this.businessServiceStart,
    required this.businessServiceEnd,
    required this.businessHoursStart,
    required this.businessHoursEnd,
    required this.hourlyRate,
    required this.businessAddressStreet,
    required this.businessAddressCity,
    required this.businessAddressState,
    required this.businessAddressZipCode,
    required this.experience,
  });

  Map<String, dynamic> toJson() {
    return {
      'firstName': firstName,
      'lastName': lastName,
      'email': email,
      'password': password,
      'confirmPassword': confirmPassword,
      'phone': phone,
      'businessNameRegistered': businessNameRegistered,
      'businessNameDBA': businessNameDBA,
      'providerRole': providerRole.toLowerCase(),
      'businessPhone': businessPhone,
      'website': website,
      'servicesProvided': servicesProvided,
      'profileImage': profileImage,
      'businessLogo': businessLogo,
      'businessServiceStart': businessServiceStart.toLowerCase(),
      'businessServiceEnd': businessServiceEnd.toLowerCase(),
      'businessHoursStart': businessHoursStart,
      'businessHoursEnd': businessHoursEnd,
      'hourlyRate': hourlyRate,
      'businessAddressStreet': businessAddressStreet,
      'businessAddressCity': businessAddressCity,
      'businessAddressState': businessAddressState,
      'businessAddressZipCode': businessAddressZipCode,
      'experience': experience,
    };
  }
}