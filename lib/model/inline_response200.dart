part of api;


@Entity()
class InlineResponse200 {
  
  @Property(name: 'success')
  bool success = null;
  

  @Property(name: 'data')
  List<TrackingReminderNotification> data = [];
  
  InlineResponse200();

  @override
  String toString()  {
    return 'InlineResponse200[success=$success, data=$data, ]';
  }

}

