part of api;


@Entity()
class InlineResponse2003 {
  
  @Property(name: 'success')
  bool success = null;
  

  @Property(name: 'data')
  List<Connection> data = [];
  
  InlineResponse2003();

  @override
  String toString()  {
    return 'InlineResponse2003[success=$success, data=$data, ]';
  }

}

