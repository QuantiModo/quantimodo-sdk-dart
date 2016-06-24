part of api;


@Entity()
class TrackingReminder {
  /* id */
  @Property(name: 'id')
  int id = null;
  
/* clientId */
  @Property(name: 'clientId')
  String clientId = null;
  
/* ID of User */
  @Property(name: 'userId')
  int userId = null;
  
/* Id for the variable to be tracked */
  @Property(name: 'variableId')
  int variableId = null;
  
/* Default value to use for the measurement when tracking */
  @Property(name: 'defaultValue')
  double defaultValue = null;
  
/* Earliest time of day at which reminders should appear in UTC HH:MM:SS format */
  @Property(name: 'reminderStartTime')
  String reminderStartTime = null;
  
/* Latest time of day at which reminders should appear in UTC HH:MM:SS format */
  @Property(name: 'reminderEndTime')
  String reminderEndTime = null;
  
/* String identifier for the sound to accompany the reminder */
  @Property(name: 'reminderSound')
  String reminderSound = null;
  
/* Number of seconds between one reminder and the next */
  @Property(name: 'reminderFrequency')
  int reminderFrequency = null;
  
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
  
/* ISO 8601 timestamp for the last time a reminder was sent */
  @Property(name: 'lastReminded')
  DateTime lastReminded = null;
  
/* ISO 8601 timestamp for the last time a measurement was received for this user and variable */
  @Property(name: 'lastTracked')
  DateTime lastTracked = null;
  
/* Specific first time of day that the user should be reminded to track in UTC HH:MM:SS format */
  @Property(name: 'firstDailyReminderTime')
  String firstDailyReminderTime = null;
  
/* Specific second time of day that the user should be reminded to track in UTC HH:MM:SS format */
  @Property(name: 'secondDailyReminderTime')
  String secondDailyReminderTime = null;
  
/* Specific third time of day that the user should be reminded to track in UTC HH:MM:SS format */
  @Property(name: 'thirdDailyReminderTime')
  String thirdDailyReminderTime = null;
  
/* Earliest date on which the user should be reminded to track in YYYY-MM-DD format */
  @Property(name: 'startTrackingDate')
  String startTrackingDate = null;
  
/* Latest date on which the user should be reminded to track in YYYY-MM-DD format */
  @Property(name: 'stopTrackingDate')
  String stopTrackingDate = null;
  
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
  TrackingReminder();

  @override
  String toString()  {
    return 'TrackingReminder[id=$id, clientId=$clientId, userId=$userId, variableId=$variableId, defaultValue=$defaultValue, reminderStartTime=$reminderStartTime, reminderEndTime=$reminderEndTime, reminderSound=$reminderSound, reminderFrequency=$reminderFrequency, popUp=$popUp, sms=$sms, email=$email, notificationBar=$notificationBar, lastReminded=$lastReminded, lastTracked=$lastTracked, firstDailyReminderTime=$firstDailyReminderTime, secondDailyReminderTime=$secondDailyReminderTime, thirdDailyReminderTime=$thirdDailyReminderTime, startTrackingDate=$startTrackingDate, stopTrackingDate=$stopTrackingDate, updatedAt=$updatedAt, variableName=$variableName, variableCategoryName=$variableCategoryName, abbreviatedUnitName=$abbreviatedUnitName, combinationOperation=$combinationOperation, ]';
  }

}

