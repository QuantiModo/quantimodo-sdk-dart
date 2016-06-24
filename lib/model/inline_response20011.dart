part of api;


@Entity()
class InlineResponse20011 {
  
  @Property(name: 'success')
  bool success = null;
  

  @Property(name: 'data')
  Measurement data = null;
  
  InlineResponse20011();

  @override
  String toString()  {
    return 'InlineResponse20011[success=$success, data=$data, ]';
  }

}

