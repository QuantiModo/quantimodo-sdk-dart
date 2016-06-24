part of api;


@Entity()
class InlineResponse2005 {
  
  @Property(name: 'success')
  bool success = null;
  

  @Property(name: 'data')
  List<Measurement> data = [];
  
  InlineResponse2005();

  @override
  String toString()  {
    return 'InlineResponse2005[success=$success, data=$data, ]';
  }

}

