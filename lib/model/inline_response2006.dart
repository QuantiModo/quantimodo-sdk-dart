part of api;


@Entity()
class InlineResponse2006 {
  
  List<TrackingReminder> data = [];
  
  
  bool success = null;
  
  
  InlineResponse2006();

  @override
  String toString()  {
    return 'InlineResponse2006[data=$data, success=$success, ]';
  }

}

