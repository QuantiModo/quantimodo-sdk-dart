part of api;

class ApiClient {
  static ApiClient defaultApiClient = new ApiClient();

  Map<String, String> _defaultHeaderMap = {};
  Map<String, Authentication> _authentications = {};
  static final dson = new Dartson.JSON();
  final DateFormat _dateFormatter = new DateFormat("yyyy-MM-dd'T'HH:mm:ss.SSSZ");

  ApiClient() {
    // Setup authentications (key: authentication name, value: authentication).
    _authentications['quantimodo_oauth2'] = new OAuth();
  }

  void addDefaultHeader(String key, String value) {
     _defaultHeaderMap[key] = value;
  }

  /// Format the given Date object into string.
  String formatDate(DateTime date) {
    return _dateFormatter.format(date);
  }

  /// Format the given parameter object into string.
  String parameterToString(Object param) {
    if (param == null) {
      return '';
    } else if (param is DateTime) {
      return formatDate(param);
    } else if (param is List) {
      return (param).join(',');
    } else {
      return param.toString();
    }
  }

  static dynamic deserialize(String json, dynamic clazz) {
    var result = json;

    try {
      var decodedJson = JSON.decode(json);

      if(decodedJson is List) {
        result = [];
        for(var obj in decodedJson) {
          result.add(_createEntity(obj, clazz));
        }
      } else {
        result = _createEntity(json, clazz);
      }
    } on FormatException {
      // Just return the passed in value
    }

    return result;
  }

  static dynamic _createEntity(dynamic json, dynamic clazz) {
    bool isMap = json is Map;

    switch(clazz) {
      
      
      case MeasurementValue:
        return isMap ? dson.map(json, new MeasurementValue()) : dson.decode(json, new MeasurementValue());
      
      
      
      case MeasurementPost:
        return isMap ? dson.map(json, new MeasurementPost()) : dson.decode(json, new MeasurementPost());
      
      
      
      case AggregatedCorrelation:
        return isMap ? dson.map(json, new AggregatedCorrelation()) : dson.decode(json, new AggregatedCorrelation());
      
      
      
      case Connection:
        return isMap ? dson.map(json, new Connection()) : dson.decode(json, new Connection());
      
      
      
      case Connector:
        return isMap ? dson.map(json, new Connector()) : dson.decode(json, new Connector());
      
      
      
      case Correlation:
        return isMap ? dson.map(json, new Correlation()) : dson.decode(json, new Correlation());
      
      
      
      case Credential:
        return isMap ? dson.map(json, new Credential()) : dson.decode(json, new Credential());
      
      
      
      case Measurement:
        return isMap ? dson.map(json, new Measurement()) : dson.decode(json, new Measurement());
      
      
      
      case MeasurementExport:
        return isMap ? dson.map(json, new MeasurementExport()) : dson.decode(json, new MeasurementExport());
      
      
      
      case Source:
        return isMap ? dson.map(json, new Source()) : dson.decode(json, new Source());
      
      
      
      case Unit:
        return isMap ? dson.map(json, new Unit()) : dson.decode(json, new Unit());
      
      
      
      case UnitCategory:
        return isMap ? dson.map(json, new UnitCategory()) : dson.decode(json, new UnitCategory());
      
      
      
      case UnitConversion:
        return isMap ? dson.map(json, new UnitConversion()) : dson.decode(json, new UnitConversion());
      
      
      
      case Update:
        return isMap ? dson.map(json, new Update()) : dson.decode(json, new Update());
      
      
      
      case UserVariable:
        return isMap ? dson.map(json, new UserVariable()) : dson.decode(json, new UserVariable());
      
      
      
      case Variable:
        return isMap ? dson.map(json, new Variable()) : dson.decode(json, new Variable());
      
      
      
      case VariableCategory:
        return isMap ? dson.map(json, new VariableCategory()) : dson.decode(json, new VariableCategory());
      
      
      
      case VariableUserSource:
        return isMap ? dson.map(json, new VariableUserSource()) : dson.decode(json, new VariableUserSource());
      
      
      
      case Vote:
        return isMap ? dson.map(json, new Vote()) : dson.decode(json, new Vote());
      
      
      
      case InlineResponse200:
        return isMap ? dson.map(json, new InlineResponse200()) : dson.decode(json, new InlineResponse200());
      
      
      
      case InlineResponse2001:
        return isMap ? dson.map(json, new InlineResponse2001()) : dson.decode(json, new InlineResponse2001());
      
      
      
      case InlineResponse2002:
        return isMap ? dson.map(json, new InlineResponse2002()) : dson.decode(json, new InlineResponse2002());
      
      
      
      case InlineResponse2003:
        return isMap ? dson.map(json, new InlineResponse2003()) : dson.decode(json, new InlineResponse2003());
      
      
      
      case InlineResponse2004:
        return isMap ? dson.map(json, new InlineResponse2004()) : dson.decode(json, new InlineResponse2004());
      
      
      
      case InlineResponse2005:
        return isMap ? dson.map(json, new InlineResponse2005()) : dson.decode(json, new InlineResponse2005());
      
      
      
      case InlineResponse2006:
        return isMap ? dson.map(json, new InlineResponse2006()) : dson.decode(json, new InlineResponse2006());
      
      
      
      case InlineResponse2007:
        return isMap ? dson.map(json, new InlineResponse2007()) : dson.decode(json, new InlineResponse2007());
      
      
      
      case InlineResponse2008:
        return isMap ? dson.map(json, new InlineResponse2008()) : dson.decode(json, new InlineResponse2008());
      
      
      
      case InlineResponse2009:
        return isMap ? dson.map(json, new InlineResponse2009()) : dson.decode(json, new InlineResponse2009());
      
      
      
      case InlineResponse20010:
        return isMap ? dson.map(json, new InlineResponse20010()) : dson.decode(json, new InlineResponse20010());
      
      
      
      case InlineResponse20011:
        return isMap ? dson.map(json, new InlineResponse20011()) : dson.decode(json, new InlineResponse20011());
      
      
      
      case InlineResponse20012:
        return isMap ? dson.map(json, new InlineResponse20012()) : dson.decode(json, new InlineResponse20012());
      
      
      
      case InlineResponse20013:
        return isMap ? dson.map(json, new InlineResponse20013()) : dson.decode(json, new InlineResponse20013());
      
      
      
      case InlineResponse20014:
        return isMap ? dson.map(json, new InlineResponse20014()) : dson.decode(json, new InlineResponse20014());
      
      
      
      case InlineResponse20015:
        return isMap ? dson.map(json, new InlineResponse20015()) : dson.decode(json, new InlineResponse20015());
      
      
      
      case InlineResponse20016:
        return isMap ? dson.map(json, new InlineResponse20016()) : dson.decode(json, new InlineResponse20016());
      
      
      
      case InlineResponse20017:
        return isMap ? dson.map(json, new InlineResponse20017()) : dson.decode(json, new InlineResponse20017());
      
      
      
      case InlineResponse20018:
        return isMap ? dson.map(json, new InlineResponse20018()) : dson.decode(json, new InlineResponse20018());
      
      
      
      case InlineResponse20019:
        return isMap ? dson.map(json, new InlineResponse20019()) : dson.decode(json, new InlineResponse20019());
      
      
      
      case InlineResponse20020:
        return isMap ? dson.map(json, new InlineResponse20020()) : dson.decode(json, new InlineResponse20020());
      
      
      
      case InlineResponse20021:
        return isMap ? dson.map(json, new InlineResponse20021()) : dson.decode(json, new InlineResponse20021());
      
      
      
      case InlineResponse20022:
        return isMap ? dson.map(json, new InlineResponse20022()) : dson.decode(json, new InlineResponse20022());
      
      
      
      case InlineResponse20023:
        return isMap ? dson.map(json, new InlineResponse20023()) : dson.decode(json, new InlineResponse20023());
      
      
      
      case InlineResponse20024:
        return isMap ? dson.map(json, new InlineResponse20024()) : dson.decode(json, new InlineResponse20024());
      
      
      
      case InlineResponse20025:
        return isMap ? dson.map(json, new InlineResponse20025()) : dson.decode(json, new InlineResponse20025());
      
      
      
      case InlineResponse20026:
        return isMap ? dson.map(json, new InlineResponse20026()) : dson.decode(json, new InlineResponse20026());
      
      
      
      case InlineResponse20027:
        return isMap ? dson.map(json, new InlineResponse20027()) : dson.decode(json, new InlineResponse20027());
      
      
      
      case InlineResponse20028:
        return isMap ? dson.map(json, new InlineResponse20028()) : dson.decode(json, new InlineResponse20028());
      
      
      
      case InlineResponse20029:
        return isMap ? dson.map(json, new InlineResponse20029()) : dson.decode(json, new InlineResponse20029());
      
      
      
      case InlineResponse20030:
        return isMap ? dson.map(json, new InlineResponse20030()) : dson.decode(json, new InlineResponse20030());
      
      
      default:
        throw new ApiException(500, 'Could not find a suitable class for deserialization');
    }
  }

  static String serialize(Object obj) {
    String serialized = '';
    if (obj == null) {
      serialized = '';
    } else if (obj is String) {
      serialized = obj;
    } else {
      serialized = dson.encode(obj);
    }
    return serialized;
  }

  Future<Response> invokeAPI( String host, 
                              String path,
                              String method,
                              Map<String, String> queryParams,
                              Object body,
                              Map<String, String> headerParams,
                              Map<String, String> formParams,
                              String contentType,
                              List<String> authNames)  {

    updateParamsForAuth(authNames, queryParams, headerParams);

    var client = new BrowserClient();

    StringBuffer sb = new StringBuffer();
    
    for(String key in queryParams.keys) {
      String value = queryParams[key];
      if (value != null){
        if(sb.toString().length == 0) {
          sb.write("?");
        } else {
          sb.write("&");
        }
        sb.write(key);
        sb.write("=");
        sb.write(value);
      }
    }
    String querystring = sb.toString();

    String url = host + path + querystring;

    headerParams.addAll(_defaultHeaderMap);
    headerParams['Content-Type'] = contentType;

    var completer = new Completer();

    if(body is MultipartRequest) {
      var request = new MultipartRequest(method, Uri.parse(url));      
      request.fields.addAll(body.fields);
      request.files.addAll(body.files);
      request.headers.addAll(body.headers);
      request.headers.addAll(headerParams);
      client.send(request).then((response) => completer.complete(Response.fromStream(response)));
    } else {
      var msgBody = contentType == "application/x-www-form-urlencoded" ? formParams : serialize(body);
      switch(method) {
        case "GET":
          return client.get(url, headers: headerParams);
        case "POST":
          return client.post(url, headers: headerParams, body: msgBody);
        case "PUT":
          return client.put(url, headers: headerParams, body: msgBody);
        case "DELETE":
          return client.delete(url, headers: headerParams);
      }
    }

    return completer.future;
  }

  /// Update query and header parameters based on authentication settings.
  /// @param authNames The authentications to apply  
  void updateParamsForAuth(List<String> authNames, Map<String, String> queryParams, Map<String, String> headerParams) {
    authNames.forEach((authName) {
      Authentication auth = _authentications[authName];
      if (auth == null) throw new ArgumentError("Authentication undefined: " + authName);
      auth.applyToParams(queryParams, headerParams);
    });
  }

}
