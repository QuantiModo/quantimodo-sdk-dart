part of api;


@Entity()
class CommonResponse {
  /* Status code */
  @Property(name: 'status')
  int status = null;
  
/* Message */
  @Property(name: 'message')
  String message = null;
  

  @Property(name: 'success')
  bool success = null;
  
  CommonResponse();

  @override
  String toString()  {
    return 'CommonResponse[status=$status, message=$message, success=$success, ]';
  }

}

