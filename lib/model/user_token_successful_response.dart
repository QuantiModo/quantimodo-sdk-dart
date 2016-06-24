part of api;


@Entity()
class UserTokenSuccessfulResponse {
  /* Status code */
  @Property(name: 'code')
  int code = null;
  
/* Message */
  @Property(name: 'message')
  String message = null;
  

  @Property(name: 'user')
  UserTokenSuccessfulResponseInnerUserField user = null;
  
  UserTokenSuccessfulResponse();

  @override
  String toString()  {
    return 'UserTokenSuccessfulResponse[code=$code, message=$message, user=$user, ]';
  }

}

