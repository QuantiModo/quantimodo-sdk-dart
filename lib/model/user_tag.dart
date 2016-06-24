part of api;


@Entity()
class UserTag {
  /* This is the id of the variable being tagged with an ingredient or something. */
  @Property(name: 'taggedVariableId')
  int taggedVariableId = null;
  
/* This is the id of the ingredient variable whose value is determined based on the value of the tagged variable. */
  @Property(name: 'tagVariableId')
  int tagVariableId = null;
  
/* Number by which we multiply the tagged variable value to obtain the tag variable (ingredient) value */
  @Property(name: 'conversionFactor')
  Number conversionFactor = null;
  
  UserTag();

  @override
  String toString()  {
    return 'UserTag[taggedVariableId=$taggedVariableId, tagVariableId=$tagVariableId, conversionFactor=$conversionFactor, ]';
  }

}

