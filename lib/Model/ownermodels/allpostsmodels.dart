// To parse this JSON data, do
//
//     final allpostsModel = allpostsModelFromJson(jsonString);

import 'dart:convert';

AllpostsModel allpostsModelFromJson(String str) => AllpostsModel.fromJson(json.decode(str));

String allpostsModelToJson(AllpostsModel data) => json.encode(data.toJson());

class AllpostsModel {
    String imageUrl;
    String message;
    RandomImage randomImage;
    List<RandomImage> post;
    List<Pro> pros;
    List<Comment> comments;
    List<Pro> users;

    AllpostsModel({
        required this.imageUrl,
        required this.message,
        required this.randomImage,
        required this.post,
        required this.pros,
        required this.comments,
        required this.users,
    });

    factory AllpostsModel.fromJson(Map<String, dynamic> json) => AllpostsModel(
        imageUrl: json["imageUrl"],
        message: json["message"],
        randomImage: RandomImage.fromJson(json["randomImage"]),
        post: List<RandomImage>.from(json["post"].map((x) => RandomImage.fromJson(x))),
        pros: List<Pro>.from(json["pros"].map((x) => Pro.fromJson(x))),
        comments: List<Comment>.from(json["comments"].map((x) => Comment.fromJson(x))),
        users: List<Pro>.from(json["users"].map((x) => Pro.fromJson(x))),
    );

    Map<String, dynamic> toJson() => {
        "imageUrl": imageUrl,
        "message": message,
        "randomImage": randomImage.toJson(),
        "post": List<dynamic>.from(post.map((x) => x.toJson())),
        "pros": List<dynamic>.from(pros.map((x) => x.toJson())),
        "comments": List<dynamic>.from(comments.map((x) => x.toJson())),
        "users": List<dynamic>.from(users.map((x) => x.toJson())),
    };
}

class Comment {
    String id;
    String userType;
    String userId;
    String post;
    String content;
    DateTime createdAt;
    int v;

    Comment({
        required this.id,
        required this.userType,
        required this.userId,
        required this.post,
        required this.content,
        required this.createdAt,
        required this.v,
    });

    factory Comment.fromJson(Map<String, dynamic> json) => Comment(
        id: json["_id"],
        userType: json["userType"],
        userId: json["userId"],
        post: json["post"],
        content: json["content"],
        createdAt: DateTime.parse(json["createdAt"]),
        v: json["__v"],
    );

    Map<String, dynamic> toJson() => {
        "_id": id,
        "userType": userType,
        "userId": userId,
        "post": post,
        "content": content,
        "createdAt": createdAt.toIso8601String(),
        "__v": v,
    };
}

class RandomImage {
    String id;
    List<String> image;
    List<dynamic> video;
    String message;
    bool isReported;
    bool isBanned;
    String proId;
    bool isActive;
    List<Like> likes;
    List<Report> report;
    DateTime createdAt;
    DateTime updatedAt;
    int v;

    RandomImage({
        required this.id,
        required this.image,
        required this.video,
        required this.message,
        required this.isReported,
        required this.isBanned,
        required this.proId,
        required this.isActive,
        required this.likes,
        required this.report,
        required this.createdAt,
        required this.updatedAt,
        required this.v,
    });

    factory RandomImage.fromJson(Map<String, dynamic> json) => RandomImage(
        id: json["_id"],
        image: List<String>.from(json["image"].map((x) => x)),
        video: List<dynamic>.from(json["video"].map((x) => x)),
        message: json["message"],
        isReported: json["isReported"],
        isBanned: json["isBanned"],
        proId: json["proId"],
        isActive: json["isActive"],
        likes: List<Like>.from(json["likes"].map((x) => Like.fromJson(x))),
        report: List<Report>.from(json["report"].map((x) => Report.fromJson(x))),
        createdAt: DateTime.parse(json["createdAt"]),
        updatedAt: DateTime.parse(json["updatedAt"]),
        v: json["__v"],
    );

    Map<String, dynamic> toJson() => {
        "_id": id,
        "image": List<dynamic>.from(image.map((x) => x)),
        "video": List<dynamic>.from(video.map((x) => x)),
        "message": message,
        "isReported": isReported,
        "isBanned": isBanned,
        "proId": proId,
        "isActive": isActive,
        "likes": List<dynamic>.from(likes.map((x) => x.toJson())),
        "report": List<dynamic>.from(report.map((x) => x.toJson())),
        "createdAt": createdAt.toIso8601String(),
        "updatedAt": updatedAt.toIso8601String(),
        "__v": v,
    };
}

class Like {
    String userId;
    bool liked;
    String id;
    DateTime createdAt;
    DateTime updatedAt;

    Like({
        required this.userId,
        required this.liked,
        required this.id,
        required this.createdAt,
        required this.updatedAt,
    });

    factory Like.fromJson(Map<String, dynamic> json) => Like(
        userId: json["userId"],
        liked: json["liked"],
        id: json["_id"],
        createdAt: DateTime.parse(json["createdAt"]),
        updatedAt: DateTime.parse(json["updatedAt"]),
    );

    Map<String, dynamic> toJson() => {
        "userId": userId,
        "liked": liked,
        "_id": id,
        "createdAt": createdAt.toIso8601String(),
        "updatedAt": updatedAt.toIso8601String(),
    };
}

class Report {
    String userType;
    String userId;
    String reason;
    String id;

    Report({
        required this.userType,
        required this.userId,
        required this.reason,
        required this.id,
    });

    factory Report.fromJson(Map<String, dynamic> json) => Report(
        userType: json["userType"],
        userId: json["userId"],
        reason: json["reason"],
        id: json["_id"],
    );

    Map<String, dynamic> toJson() => {
        "userType": userType,
        "userId": userId,
        "reason": reason,
        "_id": id,
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
    String userType;
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
        userType: json["userType"],
        followersId: json["followersId"],
        followed: json["followed"],
        id: json["_id"],
    );

    Map<String, dynamic> toJson() => {
        "userType": userType,
        "followersId": followersId,
        "followed": followed,
        "_id": id,
    };
}

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
