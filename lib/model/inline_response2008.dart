part of api;


@Entity()
class InlineResponse2008 {
  
  @Property(name: 'success')
  bool success = null;
  

  @Property(name: 'data')
  List<UserVariable> data = [];
  
  InlineResponse2008();

  @override
  String toString()  {
    return 'InlineResponse2008[success=$success, data=$data, ]';
  }

}

