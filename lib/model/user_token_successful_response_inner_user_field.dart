part of api;


@Entity()
class UserTokenSuccessfulResponseInnerUserField {
  /* WordPress user ID */
  @Property(name: 'id')
  int id = null;
  
/* User token */
  @Property(name: 'access_token')
  String accessToken = null;
  
  UserTokenSuccessfulResponseInnerUserField();

  @override
  String toString()  {
    return 'UserTokenSuccessfulResponseInnerUserField[id=$id, accessToken=$accessToken, ]';
  }

}

