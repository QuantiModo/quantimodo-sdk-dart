part of api;


@Entity()
class InlineResponse20010 {
  
  @Property(name: 'success')
  bool success = null;
  

  @Property(name: 'data')
  List<Vote> data = [];
  
  InlineResponse20010();

  @override
  String toString()  {
    return 'InlineResponse20010[success=$success, data=$data, ]';
  }

}

