part of api;


@Entity()
class TrackingReminder {
  /* id */
  int id = null;
  
  /* client_id */
  String clientId = null;
  
  /* ID of User */
  int userId = null;
  
  /* Id for the variable to be tracked */
  int variableId = null;
  
  /* Default value to use for the measurement when tracking */
  num defaultValue = null;
  
  /* Earliest time of day at which reminders should appear */
  String reminderStartTime = null;
  
  /* Latest time of day at which reminders should appear */
  String reminderEndTime = null;
  
  /* String identifier for the sound to accompany the reminder */
  String reminderSound = null;
  
  /* Number of seconds between one reminder and the next */
  int reminderFrequency = null;
  
  /* True if the reminders should appear as a popup notification */
  bool popUp = null;
  
  /* True if the reminders should be delivered via SMS */
  bool sms = null;
  
  /* True if the reminders should be delivered via email */
  bool email = null;
  
  /* True if the reminders should appear in the notification bar */
  bool notificationBar = null;
  
  /* ISO 8601 timestamp for the last time a reminder was sent */
  DateTime lastReminded = null;
  
  /* ISO 8601 timestamp for the last time a measurement was received for this user and variable */
  DateTime lastTracked = null;
  
  /* When the record was first created. Use ISO 8601 datetime format */
  DateTime createdAt = null;
  
  /* When the record in the database was last updated. Use ISO 8601 datetime format */
  DateTime updatedAt = null;
  
  
  TrackingReminder();

  @override
  String toString()  {
    return 'TrackingReminder[id=$id, clientId=$clientId, userId=$userId, variableId=$variableId, defaultValue=$defaultValue, reminderStartTime=$reminderStartTime, reminderEndTime=$reminderEndTime, reminderSound=$reminderSound, reminderFrequency=$reminderFrequency, popUp=$popUp, sms=$sms, email=$email, notificationBar=$notificationBar, lastReminded=$lastReminded, lastTracked=$lastTracked, createdAt=$createdAt, updatedAt=$updatedAt, ]';
  }

}

