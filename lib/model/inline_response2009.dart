part of api;


@Entity()
class InlineResponse2009 {
  
  List<Credential> data = [];
  
  
  bool success = null;
  
  
  InlineResponse2009();

  @override
  String toString()  {
    return 'InlineResponse2009[data=$data, success=$success, ]';
  }

}
