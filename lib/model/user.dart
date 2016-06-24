part of api;


@Entity()
class User {
  /* User id */
  @Property(name: 'id')
  int id = null;
  
/* Wordpress user id */
  @Property(name: 'wpId')
  int wpId = null;
  
/* User display name */
  @Property(name: 'displayName')
  String displayName = null;
  
/* User login name */
  @Property(name: 'loginName')
  String loginName = null;
  
/* User email */
  @Property(name: 'email')
  String email = null;
  
/* User token */
  @Property(name: 'token')
  String token = null;
  
/* Is user administrator */
  @Property(name: 'administrator')
  bool administrator = null;
  
  User();

  @override
  String toString()  {
    return 'User[id=$id, wpId=$wpId, displayName=$displayName, loginName=$loginName, email=$email, token=$token, administrator=$administrator, ]';
  }

}

