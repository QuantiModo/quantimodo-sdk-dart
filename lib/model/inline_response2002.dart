part of api;


@Entity()
class InlineResponse2002 {
  
  @Property(name: 'success')
  bool success = null;
  

  @Property(name: 'data')
  TrackingReminder data = null;
  
  InlineResponse2002();

  @override
  String toString()  {
    return 'InlineResponse2002[success=$success, data=$data, ]';
  }

}

