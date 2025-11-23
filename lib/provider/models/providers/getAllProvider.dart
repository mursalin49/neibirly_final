class Providers {
  final String id;
  final String firstName;
  final String lastName;
  final String email;
  final String businessName;
  final bool isApproved;
  final bool isActive;
  final String createdAt;

  Providers({
    required this.id,
    required this.firstName,
    required this.lastName,
    required this.email,
    required this.businessName,
    required this.isApproved,
    required this.isActive,
    required this.createdAt,
  });

  // Optional: From JSON
  factory Providers.fromJson(Map<String, dynamic> json) {
    return Providers(
      id: json['id'] ?? '',
      firstName: json['firstName'] ?? '',
      lastName: json['lastName'] ?? '',
      email: json['email'] ?? '',
      businessName: json['businessName'] ?? '',
      isApproved: json['isApproved'] ?? false,
      isActive: json['isActive'] ?? false,
      createdAt: json['createdAt'] ?? '',
    );
  }

  // Optional: To JSON
  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'firstName': firstName,
      'lastName': lastName,
      'email': email,
      'businessName': businessName,
      'isApproved': isApproved,
      'isActive': isActive,
      'createdAt': createdAt,
    };
  }
}
