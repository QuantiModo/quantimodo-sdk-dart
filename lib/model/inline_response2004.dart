part of api;


@Entity()
class InlineResponse2004 {
  
  @Property(name: 'data')
  List<Credential> data = [];
  

  @Property(name: 'success')
  bool success = null;
  
  InlineResponse2004();

  @override
  String toString()  {
    return 'InlineResponse2004[data=$data, success=$success, ]';
  }

}

