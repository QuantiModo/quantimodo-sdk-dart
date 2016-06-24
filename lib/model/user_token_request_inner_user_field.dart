part of api;


@Entity()
class UserTokenRequestInnerUserField {
  /* WordPress user ID */
  @Property(name: 'id')
  int id = null;
  
  UserTokenRequestInnerUserField();

  @override
  String toString()  {
    return 'UserTokenRequestInnerUserField[id=$id, ]';
  }

}

