part of api;


@Entity()
class JsonErrorResponse {
  /* Status: \"ok\" or \"error\" */
  @Property(name: 'status')
  String status = null;
  
/* Error message */
  @Property(name: 'message')
  String message = null;
  
  JsonErrorResponse();

  @override
  String toString()  {
    return 'JsonErrorResponse[status=$status, message=$message, ]';
  }

}

