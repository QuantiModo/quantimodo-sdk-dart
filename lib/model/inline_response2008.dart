part of api;


@Entity()
class InlineResponse2008 {
  
  List<UserVariableRelationship> data = [];
  
  
  bool success = null;
  
  
  InlineResponse2008();

  @override
  String toString()  {
    return 'InlineResponse2008[data=$data, success=$success, ]';
  }

}

