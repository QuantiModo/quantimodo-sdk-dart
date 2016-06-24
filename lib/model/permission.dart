part of api;


@Entity()
class Permission {
  /* Grant permission to target user or public so they may access measurements within the given parameters. TODO: Rename target to something more intuitive. */
  @Property(name: 'target')
  int target = null;
  
/* ORIGINAL Variable name */
  @Property(name: 'variableName')
  String variableName = null;
  
/* Earliest time when measurements will be accessible in epoch seconds */
  @Property(name: 'minTimestamp')
  int minTimestamp = null;
  
/* Latest time when measurements will be accessible in epoch seconds */
  @Property(name: 'maxTimestamp')
  int maxTimestamp = null;
  
/* Earliest time of day when measurements will be accessible in epoch seconds */
  @Property(name: 'minTimeOfDay')
  int minTimeOfDay = null;
  
/* Latest time of day when measurements will be accessible in epoch seconds */
  @Property(name: 'maxTimeOfDay')
  int maxTimeOfDay = null;
  
/* Maybe specifies if only weekday measurements should be accessible */
  @Property(name: 'week')
  String week = null;
  
  Permission();

  @override
  String toString()  {
    return 'Permission[target=$target, variableName=$variableName, minTimestamp=$minTimestamp, maxTimestamp=$maxTimestamp, minTimeOfDay=$minTimeOfDay, maxTimeOfDay=$maxTimeOfDay, week=$week, ]';
  }

}

