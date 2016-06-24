part of api;


@Entity()
class TrackingReminderNotificationSnooze {
  /* Id of the PENDING reminder to be snoozed */
  @Property(name: 'id')
  int id = null;
  
  TrackingReminderNotificationSnooze();

  @override
  String toString()  {
    return 'TrackingReminderNotificationSnooze[id=$id, ]';
  }

}

