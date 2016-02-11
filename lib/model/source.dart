part of api;


@Entity()
class Source {
  /* id */
  int id = null;
  
  /* client_id */
  String clientId = null;
  
  /* Name of the application or device */
  String name = null;
  
  /* When the record was first created. Use ISO 8601 datetime format */
  DateTime createdAt = null;
  
  /* When the record in the database was last updated. Use ISO 8601 datetime format */
  DateTime updatedAt = null;
  
  
  Source();

  @override
  String toString()  {
    return 'Source[id=$id, clientId=$clientId, name=$name, createdAt=$createdAt, updatedAt=$updatedAt, ]';
  }

}

