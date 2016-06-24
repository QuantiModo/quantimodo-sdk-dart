part of api;


@Entity()
class InlineResponse2001 {
  
  @Property(name: 'success')
  bool success = null;
  

  @Property(name: 'data')
  List<TrackingReminder> data = [];
  
  InlineResponse2001();

  @override
  String toString()  {
    return 'InlineResponse2001[success=$success, data=$data, ]';
  }

}

