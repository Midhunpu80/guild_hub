// To parse this JSON data, do
//
//     final reuirementModel = reuirementModelFromJson(jsonString);

import 'dart:convert';

ReuirementModel reuirementModelFromJson(String str) => ReuirementModel.fromJson(json.decode(str));

String reuirementModelToJson(ReuirementModel data) => json.encode(data.toJson());

class ReuirementModel {
    List<Response> response;
    List<Pro> users;
    List<Pro> pros;

    ReuirementModel({
        required this.response,
        required this.users,
        required this.pros,
    });

    factory ReuirementModel.fromJson(Map<String, dynamic> json) => ReuirementModel(
        response: List<Response>.from(json["response"].map((x) => Response.fromJson(x))),
        users: List<Pro>.from(json["users"].map((x) => Pro.fromJson(x))),
        pros: List<Pro>.from(json["pros"].map((x) => Pro.fromJson(x))),
    );

    Map<String, dynamic> toJson() => {
        "response": List<dynamic>.from(response.map((x) => x.toJson())),
        "users": List<dynamic>.from(users.map((x) => x.toJson())),
        "pros": List<dynamic>.from(pros.map((x) => x.toJson())),
    };
}

class Pro {
    String id;
    String name;
    String email;
    int phone;
    String password;
    String location;
    bool isBanned;
    String? category;
    int? experiance;
    DateTime createdAt;
    DateTime updatedAt;
    int v;
    List<Follow> follow;
    List<Follow> following;
    List<SavedPost> savedPost;
    String? profilePic;
    bool? isAdmin;

    Pro({
        required this.id,
        required this.name,
        required this.email,
        required this.phone,
        required this.password,
        required this.location,
        required this.isBanned,
        this.category,
        this.experiance,
        required this.createdAt,
        required this.updatedAt,
        required this.v,
        required this.follow,
        required this.following,
        required this.savedPost,
        this.profilePic,
        this.isAdmin,
    });

    factory Pro.fromJson(Map<String, dynamic> json) => Pro(
        id: json["_id"],
        name: json["name"],
        email: json["email"],
        phone: json["phone"],
        password: json["password"],
        location: json["location"],
        isBanned: json["isBanned"],
        category: json["category"],
        experiance: json["experiance"],
        createdAt: DateTime.parse(json["createdAt"]),
        updatedAt: DateTime.parse(json["updatedAt"]),
        v: json["__v"],
        follow: List<Follow>.from(json["follow"].map((x) => Follow.fromJson(x))),
        following: List<Follow>.from(json["following"].map((x) => Follow.fromJson(x))),
        savedPost: List<SavedPost>.from(json["savedPost"].map((x) => SavedPost.fromJson(x))),
        profilePic: json["profilePic"],
        isAdmin: json["isAdmin"],
    );

    Map<String, dynamic> toJson() => {
        "_id": id,
        "name": name,
        "email": email,
        "phone": phone,
        "password": password,
        "location": location,
        "isBanned": isBanned,
        "category": category,
        "experiance": experiance,
        "createdAt": createdAt.toIso8601String(),
        "updatedAt": updatedAt.toIso8601String(),
        "__v": v,
        "follow": List<dynamic>.from(follow.map((x) => x.toJson())),
        "following": List<dynamic>.from(following.map((x) => x.toJson())),
        "savedPost": List<dynamic>.from(savedPost.map((x) => x.toJson())),
        "profilePic": profilePic,
        "isAdmin": isAdmin,
    };
}

class Follow {
    UserType userType;
    String followersId;
    bool followed;
    String id;

    Follow({
        required this.userType,
        required this.followersId,
        required this.followed,
        required this.id,
    });

    factory Follow.fromJson(Map<String, dynamic> json) => Follow(
        userType: userTypeValues.map[json["userType"]]!,
        followersId: json["followersId"],
        followed: json["followed"],
        id: json["_id"],
    );

    Map<String, dynamic> toJson() => {
        "userType": userTypeValues.reverse[userType],
        "followersId": followersId,
        "followed": followed,
        "_id": id,
    };
}

enum UserType {
    PROFESSIONAL,
    USERS
}

final userTypeValues = EnumValues({
    "professional": UserType.PROFESSIONAL,
    "users": UserType.USERS
});

class SavedPost {
    String postId;
    String id;

    SavedPost({
        required this.postId,
        required this.id,
    });

    factory SavedPost.fromJson(Map<String, dynamic> json) => SavedPost(
        postId: json["postId"],
        id: json["_id"],
    );

    Map<String, dynamic> toJson() => {
        "postId": postId,
        "_id": id,
    };
}

class Response {
    String id;
    String image;
    String budget;
    String location;
    String userId;
    int v;
    String requirement;
    List<String> interesteds;
    List<String> hired;

    Response({
        required this.id,
        required this.image,
        required this.budget,
        required this.location,
        required this.userId,
        required this.v,
        required this.requirement,
        required this.interesteds,
        required this.hired,
    });

    factory Response.fromJson(Map<String, dynamic> json) => Response(
        id: json["_id"],
        image: json["image"],
        budget: json["budget"],
        location: json["location"],
        userId: json["userId"],
        v: json["__v"],
        requirement: json["requirement"],
        interesteds: List<String>.from(json["interesteds"].map((x) => x)),
        hired: List<String>.from(json["hired"].map((x) => x)),
    );

    Map<String, dynamic> toJson() => {
        "_id": id,
        "image": image,
        "budget": budget,
        "location": location,
        "userId": userId,
        "__v": v,
        "requirement": requirement,
        "interesteds": List<dynamic>.from(interesteds.map((x) => x)),
        "hired": List<dynamic>.from(hired.map((x) => x)),
    };
}

class EnumValues<T> {
    Map<String, T> map;
    late Map<T, String> reverseMap;

    EnumValues(this.map);

    Map<T, String> get reverse {
        reverseMap = map.map((k, v) => MapEntry(v, k));
        return reverseMap;
    }
}
