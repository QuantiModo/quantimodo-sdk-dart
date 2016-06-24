part of api;


@Entity()
class InlineResponse2009 {
  
  @Property(name: 'success')
  bool success = null;
  

  @Property(name: 'data')
  List<VariableUserSource> data = [];
  
  InlineResponse2009();

  @override
  String toString()  {
    return 'InlineResponse2009[success=$success, data=$data, ]';
  }

}

