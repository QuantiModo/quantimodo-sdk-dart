part of api;


@Entity()
class InlineResponse20012 {
  
  @Property(name: 'success')
  bool success = null;
  

  @Property(name: 'data')
  String data = null;
  
  InlineResponse20012();

  @override
  String toString()  {
    return 'InlineResponse20012[success=$success, data=$data, ]';
  }

}

