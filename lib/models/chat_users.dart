class ChatUser {
  late String image;
  late String name;
  late String about;
  late String createdAt;
  late String lastActive;
  late String id;
  late bool isOnline;
  late String email;
  late String pushToken;

  ChatUser(
      {required this.image,
      required this.name,
      required this.about,
      required this.createdAt,
      required this.lastActive,
      required this.id,
      required this.isOnline,
      required this.email,
      required this.pushToken});

      

  ChatUser.fromJson(Map<String, dynamic> json) {
    image = json['image']??'';
    name = json['name']??'';
    about = json['about']??'';
    createdAt = json['created_at']??'';
    lastActive = json['last_active']??'';
    id = json['id']??'';
    isOnline = json['is_online']??'';
    email = json['email']??'';
    pushToken = json['push_token']??'';
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['image'] = this.image;
    data['name'] = this.name;
    data['about'] = this.about;
    data['created_at'] = this.createdAt;
    data['last_active'] = this.lastActive;
    data['id'] = this.id;
    data['is_online'] = this.isOnline;
    data['email'] = this.email;
    data['push_token'] = this.pushToken;
    return data;
  }
}
