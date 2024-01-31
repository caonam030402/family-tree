class ClanList {
  String? id;
  String userName;
  String address;
  int member;
  String image;
  String creatorName;
  String dayCreater;
  String biography;
  String imageTree;

  ClanList({
    this.id,
    required this.userName,
    required this.address,
    required this.member,
    required this.image,
    required this.creatorName,
    required this.dayCreater,
    required this.biography,
    required this.imageTree,
  });

  factory ClanList.fromJson(Map<String, dynamic> json) {
    return ClanList(
      id: json['_id'],
      userName: json['userName'],
      address: json['address'],
      member: json['member'],
      image: json['image'],
      creatorName: json['creatorName'],
      dayCreater: json['dayCreater'],
      biography: json['biography'],
      imageTree: json['imageTree'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'userName': userName,
      'address': address,
      'member': member,
      'image': image,
      'creatorName': creatorName,
      'dayCreater': dayCreater,
      'biography': biography,
      'imageTree': imageTree,
    };
  }
}
