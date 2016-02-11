part of api;


@Entity()
class InlineResponse2004 {
  
  List<Credential> data = [];
  
  
  bool success = null;
  
  
  InlineResponse2004();

  @override
  String toString()  {
    return 'InlineResponse2004[data=$data, success=$success, ]';
  }

}

