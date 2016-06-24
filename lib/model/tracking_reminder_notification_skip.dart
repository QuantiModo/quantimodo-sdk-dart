part of api;


@Entity()
class TrackingReminderNotificationSkip {
  /* Id of the PENDING reminder to be skipped */
  @Property(name: 'id')
  int id = null;
  
  TrackingReminderNotificationSkip();

  @override
  String toString()  {
    return 'TrackingReminderNotificationSkip[id=$id, ]';
  }

}

