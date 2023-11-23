import 'package:job_socio/view/constant/constants.dart';

class Apiconfighomeowner {
  final register_url = "${homeownerapi}register";

  final login_url = "${homeownerapi}login";
  final otpLogin_url = "${homeownerapi}otpLogin";
  final sendotp_url = "${homeownerapi}sendOtp";
  final verifyotp_url = "${homeownerapi}verifyOtp";
  final resetpassword_url = "${homeownerapi}resetPassword";
  final profilepic_url = "${homeownerapi}profilePic";
  final postpic_url = "${homeownerapi}getPost";
  final userdetails_url = "${homeownerapi}userDetails";
  final clientdetails_url = "${homeownerapi}clientDetails";

  final detilsUserprofile_details = "${homeownerapi}detailsUserPro/:userId";

  final like_url = "${homeownerapi}like";

  final comment_url = "${homeownerapi}comment";
  final deletepost_url = "${homeownerapi}deletePost";
  final savepost_url = "${homeownerapi}savePost";
  final getsavedpost_url = "${homeownerapi}getSavedPost/:userId/:type";

  final report_url = "${homeownerapi}report";
  final getpostposted_url = "${homeownerapi}getPostPosted/:userId";
  final getquestions_url = "${homeownerapi}getQuestion";
  final likewuestions_url = "${homeownerapi}likeQuestion";
  final following_url = "${homeownerapi}following";
  final questionComment_url = "${homeownerapi}questionComment";

  final deltequstions_url = "${homeownerapi}deleteQuestion";
  final reuirement_url = "${homeownerapi}requirement";
  final hiredpros_url = "${homeownerapi}hiredPros/:id";
  final hiring_url = "${homeownerapi}hiring";
  final editprofile_url = "${homeownerapi}editProfile";
  final questionUpload_url = "${homeownerapi}quesionUpload";
  final editQuestion_url = "${homeownerapi}editeQuestion";
  final uploadRequirement_url = "${homeownerapi}uploadRequirement";
  final getcategory_url = "${homeownerapi}getCategory";
  final createchat_url = "${homeownerapi}createChat";
  final userchats_url = "${homeownerapi}chat/:userId";
  final findchat_url = "${homeownerapi}find/:firstId/:secondId";
  final getusers_url = "${homeownerapi}user/:id";

  final addmessege_url = "${homeownerapi}addMessage";
  final getmessege_url = "${homeownerapi}message/:chatId";

  final fetchchats_url = "${homeownerapi}FetchChats/:id/:receiverId";
  final fetchnotifications_url = "${homeownerapi}FetchNotification/:id";
  final getrateand_review_url =
      "${homeownerapi}getReteandReview/:proId/:LogedUserId";
  final ratereview_url = "${homeownerapi}RateAndReview";
}

class Apiconfig_proffesional {
  final register_url = "${proffesionalApi}register";

  final login_url = "${proffesionalApi}login";

  final profilepic_url = "${proffesionalApi}profilePic";
  final postpic_url = "${proffesionalApi}getPost";
  final userdetails_url = "${proffesionalApi}userDetails";
  final clientdetails_url = "${proffesionalApi}clientDetails";

  final detilsUserprofile_details = "${proffesionalApi}detailsUserPro/:userId";

  final like_url = "${proffesionalApi}like";

  final comment_url = "${proffesionalApi}comment";
  final deletepost_url = "${proffesionalApi}deletePost";
  final savepost_url = "${proffesionalApi}savePost";
  final getsavedpost_url = "${proffesionalApi}getSavedPost/:userId/:type";

  final report_url = "${proffesionalApi}report";
  final getpostposted_url = "${proffesionalApi}getPostPosted/:userId";
  final getquestions_url = "${proffesionalApi}getQuestion";
  final likewuestions_url = "${proffesionalApi}likeQuestion";
  final following_url = "${proffesionalApi}following";
  final questionComment_url = "${proffesionalApi}questionComment";

  final deltequstions_url = "${proffesionalApi}deleteQuestion";
  final reuirement_url = "${proffesionalApi}requirement";
  final hiredpros_url = "${proffesionalApi}hiredPros/:id";
  final hiring_url = "${proffesionalApi}hiring";
  final editprofile_url = "${proffesionalApi}editProfile";
  final questionUpload_url = "${proffesionalApi}quesionUpload";
  final editQuestion_url = "${proffesionalApi}editeQuestion";
  final uploadRequirement_url = "${proffesionalApi}uploadRequirement";
  final getcategory_url = "${proffesionalApi}getCategory";

  final addmessege_url = "${proffesionalApi}addMessage";
  final getmessege_url = "${proffesionalApi}message/:chatId";

  final fetchchats_url = "${proffesionalApi}FetchChats/:id/:receiverId";
  final fetchnotifications_url = "${proffesionalApi}FetchNotification/:id";
  final getrateand_review_url =
      "${proffesionalApi}getReteandReview/:proId/:LogedUserId";
  final intreteds_url = "${proffesionalApi}intersted";
}
