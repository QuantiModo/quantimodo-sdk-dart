part of api;


@Entity()
class UserTokenFailedResponse {
  /* Status code */
  @Property(name: 'code')
  int code = null;
  
/* Message */
  @Property(name: 'message')
  String message = null;
  

  @Property(name: 'success')
  bool success = null;
  
  UserTokenFailedResponse();

  @override
  String toString()  {
    return 'UserTokenFailedResponse[code=$code, message=$message, success=$success, ]';
  }

}

