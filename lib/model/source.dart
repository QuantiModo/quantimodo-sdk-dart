part of api;


@Entity()
class Source {
  /* id */
  int id = null;
  
  /* client_id */
  String clientId = null;
  
  /* Name of the application or device */
  String name = null;
  
  /* created_at */
  DateTime createdAt = null;
  
  /* updated_at */
  DateTime updatedAt = null;
  
  
  Source();

  @override
  String toString()  {
    return 'Source[id=$id, clientId=$clientId, name=$name, createdAt=$createdAt, updatedAt=$updatedAt, ]';
  }

}

