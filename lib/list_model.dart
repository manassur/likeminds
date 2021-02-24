class BasicUserDetails {

   String id,name,job,image;
   bool  isLiked;

   BasicUserDetails.create(name,job,image,isLiked){
      this.name = name;
      this.job = job;
      this.image = image;
      this.isLiked = isLiked;
   }
   // this is a class function
   BasicUserDetails.fromJson(Map<String, dynamic> json) {
      id = json['id'];
      name = json['username'];
      job = json['icon'];
      image = json['isVerified'];
      isLiked = json['isLiked'];
   }

   Map<String, dynamic> toJson(){
      final Map<String, dynamic> data = new Map<String, dynamic>();
      data['id'] = this.id;
      data['username'] = this.name;
      data['icon'] = this.job;
      data['isVerified'] = this.image;
      data['isLiked'] = this.isLiked;
      return data;
   }
}
