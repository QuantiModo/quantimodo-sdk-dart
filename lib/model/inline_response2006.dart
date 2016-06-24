part of api;


@Entity()
class InlineResponse2006 {
  
  @Property(name: 'success')
  bool success = null;
  

  @Property(name: 'data')
  List<Update> data = [];
  
  InlineResponse2006();

  @override
  String toString()  {
    return 'InlineResponse2006[success=$success, data=$data, ]';
  }

}

