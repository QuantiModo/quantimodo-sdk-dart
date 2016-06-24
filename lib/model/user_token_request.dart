part of api;


@Entity()
class UserTokenRequest {
  
  @Property(name: 'user')
  UserTokenRequestInnerUserField user = null;
  
/* Organization Access token */
  @Property(name: 'organizationAccessToken')
  String organizationAccessToken = null;
  
  UserTokenRequest();

  @override
  String toString()  {
    return 'UserTokenRequest[user=$user, organizationAccessToken=$organizationAccessToken, ]';
  }

}

