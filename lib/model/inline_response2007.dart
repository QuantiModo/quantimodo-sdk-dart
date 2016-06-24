part of api;


@Entity()
class InlineResponse2007 {
  
  @Property(name: 'success')
  bool success = null;
  

  @Property(name: 'data')
  List<UserVariableRelationship> data = [];
  
  InlineResponse2007();

  @override
  String toString()  {
    return 'InlineResponse2007[success=$success, data=$data, ]';
  }

}

