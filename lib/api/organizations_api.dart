part of api;


class OrganizationsApi {
  String basePath = "https://app.quantimo.do/api";
  ApiClient apiClient = ApiClient.defaultApiClient;

  OrganizationsApi([ApiClient apiClient]) {
    if (apiClient != null) {
      this.apiClient = apiClient;
    }
  }

  /// Get user tokens for existing users, create new users
  ///
  /// Get user tokens for existing users, create new users
  Future<UserTokenSuccessfulResponse> v1OrganizationsOrganizationIdUsersPost(int organizationId, UserTokenRequest body, String accessToken) {
    Object postBody = body;
    // verify required params are set
    if(    // verify required params are set
    if(    // verify required params are set
    if() {
       throw new ApiException(400, "missing required params");
    }) {
       throw new ApiException(400, "missing required params");
    }) {
       throw new ApiException(400, "missing required params");
    }

    // create path and map variables
    String path = "/v1/organizations/{organizationId}/users".replaceAll("{format}","json").replaceAll("{" + "organizationId" + "}", organizationId.toString());

    // query params
    Map<String, String> queryParams = {};
    Map<String, String> headerParams = {};
    Map<String, String> formParams = {};
    if("null" != accessToken)
      queryParams["access_token"] = accessToken is List ? accessToken.join(',') : accessToken;
    
    List<String> contentTypes = ["application/json"];

    String contentType = contentTypes.length > 0 ? contentTypes[0] : "application/json";
    List<String> authNames = ["oauth2", "internalApiKey"];

    if(contentType.startsWith("multipart/form-data")) {
      bool hasFields = false;
      MultipartRequest mp = new MultipartRequest(null, null);
      
      if(hasFields)
        postBody = mp;
    }
    else {
          }

    return apiClient.invokeAPI(basePath, path, 'POST', queryParams, postBody, headerParams, formParams, contentType, authNames).then((response) {
      if(response.statusCode >= 400) {
        throw new ApiException(response.statusCode, response.body);
      }
      else if(response.body != null){
        return ApiClient.deserialize(response.body, UserTokenSuccessfulResponse);
      }
      else {
        return null;
      }
    });
  }
}
