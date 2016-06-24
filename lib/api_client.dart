part of api;

class ApiClient {
  static ApiClient defaultApiClient = new ApiClient();

  Map<String, String> _defaultHeaderMap = {};
  Map<String, Authentication> _authentications = {};
  static final dson = new Dartson.JSON();
  final DateFormat _dateFormatter = new DateFormat("yyyy-MM-dd'T'HH:mm:ss.SSSZ");

  ApiClient() {
    // Setup authentications (key: authentication name, value: authentication).
    _authentications['oauth2'] = new OAuth();
    _authentications['quantimodo_oauth2'] = new OAuth();
    _authentications['basicAuth'] = new HttpBasicAuth();
    _authentications['internalApiKey'] = new ApiKeyAuth("header", "api_key");
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
      case CommonResponse:
        return isMap ? dson.map(json, new CommonResponse()) : dson.decode(json, new CommonResponse());
      case Connection:
        return isMap ? dson.map(json, new Connection()) : dson.decode(json, new Connection());
      case Connector:
        return isMap ? dson.map(json, new Connector()) : dson.decode(json, new Connector());
      case ConnectorInfo:
        return isMap ? dson.map(json, new ConnectorInfo()) : dson.decode(json, new ConnectorInfo());
      case ConnectorInfoHistoryItem:
        return isMap ? dson.map(json, new ConnectorInfoHistoryItem()) : dson.decode(json, new ConnectorInfoHistoryItem());
      case ConnectorInstruction:
        return isMap ? dson.map(json, new ConnectorInstruction()) : dson.decode(json, new ConnectorInstruction());
      case ConversionStep:
        return isMap ? dson.map(json, new ConversionStep()) : dson.decode(json, new ConversionStep());
      case Correlation:
        return isMap ? dson.map(json, new Correlation()) : dson.decode(json, new Correlation());
      case Credential:
        return isMap ? dson.map(json, new Credential()) : dson.decode(json, new Credential());
      case HumanTime:
        return isMap ? dson.map(json, new HumanTime()) : dson.decode(json, new HumanTime());
      case InlineResponse200:
        return isMap ? dson.map(json, new InlineResponse200()) : dson.decode(json, new InlineResponse200());
      case InlineResponse2001:
        return isMap ? dson.map(json, new InlineResponse2001()) : dson.decode(json, new InlineResponse2001());
      case InlineResponse20010:
        return isMap ? dson.map(json, new InlineResponse20010()) : dson.decode(json, new InlineResponse20010());
      case InlineResponse20011:
        return isMap ? dson.map(json, new InlineResponse20011()) : dson.decode(json, new InlineResponse20011());
      case InlineResponse20012:
        return isMap ? dson.map(json, new InlineResponse20012()) : dson.decode(json, new InlineResponse20012());
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
      case JsonErrorResponse:
        return isMap ? dson.map(json, new JsonErrorResponse()) : dson.decode(json, new JsonErrorResponse());
      case Measurement:
        return isMap ? dson.map(json, new Measurement()) : dson.decode(json, new Measurement());
      case MeasurementDelete:
        return isMap ? dson.map(json, new MeasurementDelete()) : dson.decode(json, new MeasurementDelete());
      case MeasurementRange:
        return isMap ? dson.map(json, new MeasurementRange()) : dson.decode(json, new MeasurementRange());
      case MeasurementSet:
        return isMap ? dson.map(json, new MeasurementSet()) : dson.decode(json, new MeasurementSet());
      case MeasurementSource:
        return isMap ? dson.map(json, new MeasurementSource()) : dson.decode(json, new MeasurementSource());
      case Pairs:
        return isMap ? dson.map(json, new Pairs()) : dson.decode(json, new Pairs());
      case Permission:
        return isMap ? dson.map(json, new Permission()) : dson.decode(json, new Permission());
      case PostCorrelation:
        return isMap ? dson.map(json, new PostCorrelation()) : dson.decode(json, new PostCorrelation());
      case PostVote:
        return isMap ? dson.map(json, new PostVote()) : dson.decode(json, new PostVote());
      case TrackingReminder:
        return isMap ? dson.map(json, new TrackingReminder()) : dson.decode(json, new TrackingReminder());
      case TrackingReminderDelete:
        return isMap ? dson.map(json, new TrackingReminderDelete()) : dson.decode(json, new TrackingReminderDelete());
      case TrackingReminderNotification:
        return isMap ? dson.map(json, new TrackingReminderNotification()) : dson.decode(json, new TrackingReminderNotification());
      case TrackingReminderNotificationSkip:
        return isMap ? dson.map(json, new TrackingReminderNotificationSkip()) : dson.decode(json, new TrackingReminderNotificationSkip());
      case TrackingReminderNotificationSnooze:
        return isMap ? dson.map(json, new TrackingReminderNotificationSnooze()) : dson.decode(json, new TrackingReminderNotificationSnooze());
      case TrackingReminderNotificationTrack:
        return isMap ? dson.map(json, new TrackingReminderNotificationTrack()) : dson.decode(json, new TrackingReminderNotificationTrack());
      case Unit:
        return isMap ? dson.map(json, new Unit()) : dson.decode(json, new Unit());
      case UnitCategory:
        return isMap ? dson.map(json, new UnitCategory()) : dson.decode(json, new UnitCategory());
      case Update:
        return isMap ? dson.map(json, new Update()) : dson.decode(json, new Update());
      case User:
        return isMap ? dson.map(json, new User()) : dson.decode(json, new User());
      case UserTag:
        return isMap ? dson.map(json, new UserTag()) : dson.decode(json, new UserTag());
      case UserTokenFailedResponse:
        return isMap ? dson.map(json, new UserTokenFailedResponse()) : dson.decode(json, new UserTokenFailedResponse());
      case UserTokenRequest:
        return isMap ? dson.map(json, new UserTokenRequest()) : dson.decode(json, new UserTokenRequest());
      case UserTokenRequestInnerUserField:
        return isMap ? dson.map(json, new UserTokenRequestInnerUserField()) : dson.decode(json, new UserTokenRequestInnerUserField());
      case UserTokenSuccessfulResponse:
        return isMap ? dson.map(json, new UserTokenSuccessfulResponse()) : dson.decode(json, new UserTokenSuccessfulResponse());
      case UserTokenSuccessfulResponseInnerUserField:
        return isMap ? dson.map(json, new UserTokenSuccessfulResponseInnerUserField()) : dson.decode(json, new UserTokenSuccessfulResponseInnerUserField());
      case UserVariable:
        return isMap ? dson.map(json, new UserVariable()) : dson.decode(json, new UserVariable());
      case UserVariableRelationship:
        return isMap ? dson.map(json, new UserVariableRelationship()) : dson.decode(json, new UserVariableRelationship());
      case UserVariables:
        return isMap ? dson.map(json, new UserVariables()) : dson.decode(json, new UserVariables());
      case ValueObject:
        return isMap ? dson.map(json, new ValueObject()) : dson.decode(json, new ValueObject());
      case Variable:
        return isMap ? dson.map(json, new Variable()) : dson.decode(json, new Variable());
      case VariableCategory:
        return isMap ? dson.map(json, new VariableCategory()) : dson.decode(json, new VariableCategory());
      case VariableNew:
        return isMap ? dson.map(json, new VariableNew()) : dson.decode(json, new VariableNew());
      case VariableUserSource:
        return isMap ? dson.map(json, new VariableUserSource()) : dson.decode(json, new VariableUserSource());
      case VariablesNew:
        return isMap ? dson.map(json, new VariablesNew()) : dson.decode(json, new VariablesNew());
      case Vote:
        return isMap ? dson.map(json, new Vote()) : dson.decode(json, new Vote());
      case VoteDelete:
        return isMap ? dson.map(json, new VoteDelete()) : dson.decode(json, new VoteDelete());
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
