part of api;


@Entity()
class ConversionStep {
  /* ADD or MULTIPLY */
  @Property(name: 'operation')
  String operation = null;
  //enum operationEnum {  MULTIPLY,  ADD,  };
/* This specifies the order of conversion steps starting with 0 */
  @Property(name: 'value')
  double value = null;
  
  ConversionStep();

  @override
  String toString()  {
    return 'ConversionStep[operation=$operation, value=$value, ]';
  }

}

