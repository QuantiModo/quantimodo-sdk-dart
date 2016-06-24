part of api;


@Entity()
class TrackingReminderNotificationTrack {
  /* Id of the PENDING reminder to be tracked */
  @Property(name: 'id')
  int id = null;
  
  TrackingReminderNotificationTrack();

  @override
  String toString()  {
    return 'TrackingReminderNotificationTrack[id=$id, ]';
  }

}

