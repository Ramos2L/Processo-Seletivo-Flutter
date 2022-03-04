class TodoModelRepository {
  final String ? name;
  final String ? htmlurl;
  final String ? description;
  final String ? createdat;
  final String ? language;
  final int ? forks;
  final String ? visibility;
  final int ? stargazerscount;

  TodoModelRepository({ 
    required this.name,
    required this.htmlurl, 
    required this.description, 
    required this.createdat, 
    required this.language, 
    required this.forks, 
    required this.visibility, 
    required this.stargazerscount
  });
}

class TodoModelUser {
  final String ? avatarurl;
  final String ? name;
  final String ? company;
  final String ? location;
  final String ? bio;
  final int followers;
  final int following;

  TodoModelUser({
    required this.avatarurl,
    required this.name, 
    required this.company, 
    required this.location, 
    required this.bio, 
    required this.followers, 
    required this.following
  });

}