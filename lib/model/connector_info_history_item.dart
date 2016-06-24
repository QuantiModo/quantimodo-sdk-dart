part of api;


@Entity()
class ConnectorInfoHistoryItem {
  /* Number of measurements */
  @Property(name: 'numberOfMeasurements')
  int numberOfMeasurements = null;
  
/* True if the update was successfull */
  @Property(name: 'success')
  bool success = null;
  
/* Error message. */
  @Property(name: 'message')
  String message = null;
  
/* Date and time of the update in UTC time zone */
  @Property(name: 'createdAt')
  String createdAt = null;
  
  ConnectorInfoHistoryItem();

  @override
  String toString()  {
    return 'ConnectorInfoHistoryItem[numberOfMeasurements=$numberOfMeasurements, success=$success, message=$message, createdAt=$createdAt, ]';
  }

}

