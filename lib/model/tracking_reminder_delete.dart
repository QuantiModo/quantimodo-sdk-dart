part of api;


@Entity()
class TrackingReminderDelete {
  /* Id of the PENDING reminder to be deleted */
  @Property(name: 'id')
  int id = null;
  
  TrackingReminderDelete();

  @override
  String toString()  {
    return 'TrackingReminderDelete[id=$id, ]';
  }

}

