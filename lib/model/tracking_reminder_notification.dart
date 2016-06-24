part of api;


@Entity()
class TrackingReminderNotification {
  /* id for the specific PENDING tracking remidner */
  @Property(name: 'id')
  int id = null;
  
/* id for the repeating tracking remidner */
  @Property(name: 'trackingReminderId')
  int trackingReminderId = null;
  
/* clientId */
  @Property(name: 'clientId')
  String clientId = null;
  
/* ID of User */
  @Property(name: 'userId')
  int userId = null;
  
/* Id for the variable to be tracked */
  @Property(name: 'variableId')
  int variableId = null;
  
/* ISO 8601 timestamp for the specific time the variable should be tracked in UTC.  This will be used for the measurement startTime if the track endpoint is used. */
  @Property(name: 'pendingReminderTime')
  DateTime pendingReminderTime = null;
  
/* Default value to use for the measurement when tracking */
  @Property(name: 'defaultValue')
  double defaultValue = null;
  
/* String identifier for the sound to accompany the reminder */
  @Property(name: 'reminderSound')
  String reminderSound = null;
  
/* True if the reminders should appear as a popup notification */
  @Property(name: 'popUp')
  bool popUp = null;
  
/* True if the reminders should be delivered via SMS */
  @Property(name: 'sms')
  bool sms = null;
  
/* True if the reminders should be delivered via email */
  @Property(name: 'email')
  bool email = null;
  
/* True if the reminders should appear in the notification bar */
  @Property(name: 'notificationBar')
  bool notificationBar = null;
  
/* When the record in the database was last updated. Use ISO 8601 datetime format. Time zone should be UTC and not local. */
  @Property(name: 'updatedAt')
  DateTime updatedAt = null;
  
/* Name of the variable to be used when sending measurements */
  @Property(name: 'variableName')
  String variableName = null;
  
/* Name of the variable category to be used when sending measurements */
  @Property(name: 'variableCategoryName')
  String variableCategoryName = null;
  
/* Abbreviated name of the unit to be used when sending measurements */
  @Property(name: 'abbreviatedUnitName')
  String abbreviatedUnitName = null;
  
/* The way multiple measurements are aggregated over time */
  @Property(name: 'combinationOperation')
  String combinationOperation = null;
  //enum combinationOperationEnum {  MEAN,  SUM,  };
  TrackingReminderNotification();

  @override
  String toString()  {
    return 'TrackingReminderNotification[id=$id, trackingReminderId=$trackingReminderId, clientId=$clientId, userId=$userId, variableId=$variableId, pendingReminderTime=$pendingReminderTime, defaultValue=$defaultValue, reminderSound=$reminderSound, popUp=$popUp, sms=$sms, email=$email, notificationBar=$notificationBar, updatedAt=$updatedAt, variableName=$variableName, variableCategoryName=$variableCategoryName, abbreviatedUnitName=$abbreviatedUnitName, combinationOperation=$combinationOperation, ]';
  }

}

