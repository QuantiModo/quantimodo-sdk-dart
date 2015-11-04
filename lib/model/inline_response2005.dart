part of api;


@Entity()
class InlineResponse2005 {
  
  List<Connector> data = [];
  
  
  bool success = null;
  
  
  InlineResponse2005();

  @override
  String toString()  {
    return 'InlineResponse2005[data=$data, success=$success, ]';
  }

}

