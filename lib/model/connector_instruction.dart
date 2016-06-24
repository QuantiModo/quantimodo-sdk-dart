part of api;


@Entity()
class ConnectorInstruction {
  /* url */
  @Property(name: 'url')
  String url = null;
  
/* parameters array */
  @Property(name: 'parameters')
  List<String> parameters = [];
  
/* usePopup */
  @Property(name: 'usePopup')
  bool usePopup = null;
  
  ConnectorInstruction();

  @override
  String toString()  {
    return 'ConnectorInstruction[url=$url, parameters=$parameters, usePopup=$usePopup, ]';
  }

}

