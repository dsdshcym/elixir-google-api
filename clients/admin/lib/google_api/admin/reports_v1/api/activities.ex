# Copyright 2019 Google LLC
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

# NOTE: This file is auto generated by the elixir code generator program.
# Do not edit this file manually.

defmodule GoogleApi.Admin.Reports_v1.Api.Activities do
  @moduledoc """
  API calls for all endpoints tagged `Activities`.
  """

  alias GoogleApi.Admin.Reports_v1.Connection
  alias GoogleApi.Gax.{Request, Response}

  @library_version Mix.Project.config() |> Keyword.get(:version, "")

  @doc """
  Retrieves a list of activities for a specific customer's account and application such as the Admin console application or the Google Drive application. For more information, see the guides for administrator and Google Drive activity reports. For more information about the activity report's parameters, see the activity parameters reference guides. 

  ## Parameters

  *   `connection` (*type:* `GoogleApi.Admin.Reports_v1.Connection.t`) - Connection to server
  *   `user_key` (*type:* `String.t`) - Represents the profile ID or the user email for which the data should be filtered. Can be `all` for all information, or `userKey` for a user's unique Google Workspace profile ID or their primary email address.
  *   `application_name` (*type:* `String.t`) - Application name for which the events are to be retrieved.
  *   `optional_params` (*type:* `keyword()`) - Optional parameters
      *   `:"$.xgafv"` (*type:* `String.t`) - V1 error format.
      *   `:access_token` (*type:* `String.t`) - OAuth access token.
      *   `:alt` (*type:* `String.t`) - Data format for response.
      *   `:callback` (*type:* `String.t`) - JSONP
      *   `:fields` (*type:* `String.t`) - Selector specifying which fields to include in a partial response.
      *   `:key` (*type:* `String.t`) - API key. Your API key identifies your project and provides you with API access, quota, and reports. Required unless you provide an OAuth 2.0 token.
      *   `:oauth_token` (*type:* `String.t`) - OAuth 2.0 token for the current user.
      *   `:prettyPrint` (*type:* `boolean()`) - Returns response with indentations and line breaks.
      *   `:quotaUser` (*type:* `String.t`) - Available to use for quota purposes for server-side applications. Can be any arbitrary string assigned to a user, but should not exceed 40 characters.
      *   `:uploadType` (*type:* `String.t`) - Legacy upload protocol for media (e.g. "media", "multipart").
      *   `:upload_protocol` (*type:* `String.t`) - Upload protocol for media (e.g. "raw", "multipart").
      *   `:actorIpAddress` (*type:* `String.t`) - The Internet Protocol (IP) Address of host where the event was performed. This is an additional way to filter a report's summary using the IP address of the user whose activity is being reported. This IP address may or may not reflect the user's physical location. For example, the IP address can be the user's proxy server's address or a virtual private network (VPN) address. This parameter supports both IPv4 and IPv6 address versions.
      *   `:customerId` (*type:* `String.t`) - The unique ID of the customer to retrieve data for.
      *   `:endTime` (*type:* `String.t`) - Sets the end of the range of time shown in the report. The date is in the RFC 3339 format, for example 2010-10-28T10:26:35.000Z. The default value is the approximate time of the API request. An API report has three basic time concepts: - *Date of the API's request for a report*: When the API created and retrieved the report. - *Report's start time*: The beginning of the timespan shown in the report. The `startTime` must be before the `endTime` (if specified) and the current time when the request is made, or the API returns an error. - *Report's end time*: The end of the timespan shown in the report. For example, the timespan of events summarized in a report can start in April and end in May. The report itself can be requested in August. If the `endTime` is not specified, the report returns all activities from the `startTime` until the current time or the most recent 180 days if the `startTime` is more than 180 days in the past.
      *   `:eventName` (*type:* `String.t`) - The name of the event being queried by the API. Each `eventName` is related to a specific Google Workspace service or feature which the API organizes into types of events. An example is the Google Calendar events in the Admin console application's reports. The Calendar Settings `type` structure has all of the Calendar `eventName` activities reported by the API. When an administrator changes a Calendar setting, the API reports this activity in the Calendar Settings `type` and `eventName` parameters. For more information about `eventName` query strings and parameters, see the list of event names for various applications above in `applicationName`.
      *   `:filters` (*type:* `String.t`) - The `filters` query string is a comma-separated list. The list is composed of event parameters that are manipulated by relational operators. Event parameters are in the form `parameter1 name[parameter1 value],parameter2 name[parameter2 value],...` These event parameters are associated with a specific `eventName`. An empty report is returned if the filtered request's parameter does not belong to the `eventName`. For more information about `eventName` parameters, see the list of event names for various applications above in `applicationName`. In the following Admin Activity example, the <> operator is URL-encoded in the request's query string (%3C%3E): GET...&eventName=CHANGE_CALENDAR_SETTING &filters=NEW_VALUE%3C%3EREAD_ONLY_ACCESS In the following Drive example, the list can be a view or edit event's `doc_id` parameter with a value that is manipulated by an 'equal to' (==) or 'not equal to' (<>) relational operator. In the first example, the report returns each edited document's `doc_id`. In the second example, the report returns each viewed document's `doc_id` that equals the value 12345 and does not return any viewed document's which have a `doc_id` value of 98765. The <> operator is URL-encoded in the request's query string (%3C%3E): GET...&eventName=edit&filters=doc_id GET...&eventName=view&filters=doc_id==12345,doc_id%3C%3E98765 The relational operators include: - `==` - 'equal to'. - `<>` - 'not equal to'. It is URL-encoded (%3C%3E). - `<` - 'less than'. It is URL-encoded (%3C). - `<=` - 'less than or equal to'. It is URL-encoded (%3C=). - `>` - 'greater than'. It is URL-encoded (%3E). - `>=` - 'greater than or equal to'. It is URL-encoded (%3E=). *Note:* The API doesn't accept multiple values of a parameter. If a particular parameter is supplied more than once in the API request, the API only accepts the last value of that request parameter. In addition, if an invalid request parameter is supplied in the API request, the API ignores that request parameter and returns the response corresponding to the remaining valid request parameters. If no parameters are requested, all parameters are returned. 
      *   `:groupIdFilter` (*type:* `String.t`) - Comma separated group ids (obfuscated) on which user activities are filtered, i.e, the response will contain activities for only those users that are a part of at least one of the group ids mentioned here. Format: "id:abc123,id:xyz456"
      *   `:maxResults` (*type:* `integer()`) - Determines how many activity records are shown on each response page. For example, if the request sets `maxResults=1` and the report has two activities, the report has two pages. The response's `nextPageToken` property has the token to the second page. The `maxResults` query string is optional in the request. The default value is 1000.
      *   `:orgUnitID` (*type:* `String.t`) - ID of the organizational unit to report on. Activity records will be shown only for users who belong to the specified organizational unit. Data before Dec 17, 2018 doesn't appear in the filtered results.
      *   `:pageToken` (*type:* `String.t`) - The token to specify next page. A report with multiple pages has a `nextPageToken` property in the response. In your follow-on request getting the next page of the report, enter the `nextPageToken` value in the `pageToken` query string.
      *   `:startTime` (*type:* `String.t`) - Sets the beginning of the range of time shown in the report. The date is in the RFC 3339 format, for example 2010-10-28T10:26:35.000Z. The report returns all activities from `startTime` until `endTime`. The `startTime` must be before the `endTime` (if specified) and the current time when the request is made, or the API returns an error.
  *   `opts` (*type:* `keyword()`) - Call options

  ## Returns

  *   `{:ok, %GoogleApi.Admin.Reports_v1.Model.Activities{}}` on success
  *   `{:error, info}` on failure
  """
  @spec reports_activities_list(Tesla.Env.client(), String.t(), String.t(), keyword(), keyword()) ::
          {:ok, GoogleApi.Admin.Reports_v1.Model.Activities.t()}
          | {:ok, Tesla.Env.t()}
          | {:ok, list()}
          | {:error, any()}
  def reports_activities_list(
        connection,
        user_key,
        application_name,
        optional_params \\ [],
        opts \\ []
      ) do
    optional_params_config = %{
      :"$.xgafv" => :query,
      :access_token => :query,
      :alt => :query,
      :callback => :query,
      :fields => :query,
      :key => :query,
      :oauth_token => :query,
      :prettyPrint => :query,
      :quotaUser => :query,
      :uploadType => :query,
      :upload_protocol => :query,
      :actorIpAddress => :query,
      :customerId => :query,
      :endTime => :query,
      :eventName => :query,
      :filters => :query,
      :groupIdFilter => :query,
      :maxResults => :query,
      :orgUnitID => :query,
      :pageToken => :query,
      :startTime => :query
    }

    request =
      Request.new()
      |> Request.method(:get)
      |> Request.url(
        "/admin/reports/v1/activity/users/{userKey}/applications/{applicationName}",
        %{
          "userKey" => URI.encode(user_key, &URI.char_unreserved?/1),
          "applicationName" =>
            URI.encode(application_name, &(URI.char_unreserved?(&1) || &1 == ?/))
        }
      )
      |> Request.add_optional_params(optional_params_config, optional_params)
      |> Request.library_version(@library_version)

    connection
    |> Connection.execute(request)
    |> Response.decode(opts ++ [struct: %GoogleApi.Admin.Reports_v1.Model.Activities{}])
  end

  @doc """
  Start receiving notifications for account activities. For more information, see Receiving Push Notifications.

  ## Parameters

  *   `connection` (*type:* `GoogleApi.Admin.Reports_v1.Connection.t`) - Connection to server
  *   `user_key` (*type:* `String.t`) - Represents the profile ID or the user email for which the data should be filtered. Can be `all` for all information, or `userKey` for a user's unique Google Workspace profile ID or their primary email address.
  *   `application_name` (*type:* `String.t`) - Application name for which the events are to be retrieved.
  *   `optional_params` (*type:* `keyword()`) - Optional parameters
      *   `:"$.xgafv"` (*type:* `String.t`) - V1 error format.
      *   `:access_token` (*type:* `String.t`) - OAuth access token.
      *   `:alt` (*type:* `String.t`) - Data format for response.
      *   `:callback` (*type:* `String.t`) - JSONP
      *   `:fields` (*type:* `String.t`) - Selector specifying which fields to include in a partial response.
      *   `:key` (*type:* `String.t`) - API key. Your API key identifies your project and provides you with API access, quota, and reports. Required unless you provide an OAuth 2.0 token.
      *   `:oauth_token` (*type:* `String.t`) - OAuth 2.0 token for the current user.
      *   `:prettyPrint` (*type:* `boolean()`) - Returns response with indentations and line breaks.
      *   `:quotaUser` (*type:* `String.t`) - Available to use for quota purposes for server-side applications. Can be any arbitrary string assigned to a user, but should not exceed 40 characters.
      *   `:uploadType` (*type:* `String.t`) - Legacy upload protocol for media (e.g. "media", "multipart").
      *   `:upload_protocol` (*type:* `String.t`) - Upload protocol for media (e.g. "raw", "multipart").
      *   `:actorIpAddress` (*type:* `String.t`) - The Internet Protocol (IP) Address of host where the event was performed. This is an additional way to filter a report's summary using the IP address of the user whose activity is being reported. This IP address may or may not reflect the user's physical location. For example, the IP address can be the user's proxy server's address or a virtual private network (VPN) address. This parameter supports both IPv4 and IPv6 address versions.
      *   `:customerId` (*type:* `String.t`) - The unique ID of the customer to retrieve data for.
      *   `:endTime` (*type:* `String.t`) - Sets the end of the range of time shown in the report. The date is in the RFC 3339 format, for example 2010-10-28T10:26:35.000Z. The default value is the approximate time of the API request. An API report has three basic time concepts: - *Date of the API's request for a report*: When the API created and retrieved the report. - *Report's start time*: The beginning of the timespan shown in the report. The `startTime` must be before the `endTime` (if specified) and the current time when the request is made, or the API returns an error. - *Report's end time*: The end of the timespan shown in the report. For example, the timespan of events summarized in a report can start in April and end in May. The report itself can be requested in August. If the `endTime` is not specified, the report returns all activities from the `startTime` until the current time or the most recent 180 days if the `startTime` is more than 180 days in the past.
      *   `:eventName` (*type:* `String.t`) - The name of the event being queried by the API. Each `eventName` is related to a specific Google Workspace service or feature which the API organizes into types of events. An example is the Google Calendar events in the Admin console application's reports. The Calendar Settings `type` structure has all of the Calendar `eventName` activities reported by the API. When an administrator changes a Calendar setting, the API reports this activity in the Calendar Settings `type` and `eventName` parameters. For more information about `eventName` query strings and parameters, see the list of event names for various applications above in `applicationName`.
      *   `:filters` (*type:* `String.t`) - The `filters` query string is a comma-separated list. The list is composed of event parameters that are manipulated by relational operators. Event parameters are in the form `parameter1 name[parameter1 value],parameter2 name[parameter2 value],...` These event parameters are associated with a specific `eventName`. An empty report is returned if the filtered request's parameter does not belong to the `eventName`. For more information about `eventName` parameters, see the list of event names for various applications above in `applicationName`. In the following Admin Activity example, the <> operator is URL-encoded in the request's query string (%3C%3E): GET...&eventName=CHANGE_CALENDAR_SETTING &filters=NEW_VALUE%3C%3EREAD_ONLY_ACCESS In the following Drive example, the list can be a view or edit event's `doc_id` parameter with a value that is manipulated by an 'equal to' (==) or 'not equal to' (<>) relational operator. In the first example, the report returns each edited document's `doc_id`. In the second example, the report returns each viewed document's `doc_id` that equals the value 12345 and does not return any viewed document's which have a `doc_id` value of 98765. The <> operator is URL-encoded in the request's query string (%3C%3E): GET...&eventName=edit&filters=doc_id GET...&eventName=view&filters=doc_id==12345,doc_id%3C%3E98765 The relational operators include: - `==` - 'equal to'. - `<>` - 'not equal to'. It is URL-encoded (%3C%3E). - `<` - 'less than'. It is URL-encoded (%3C). - `<=` - 'less than or equal to'. It is URL-encoded (%3C=). - `>` - 'greater than'. It is URL-encoded (%3E). - `>=` - 'greater than or equal to'. It is URL-encoded (%3E=). *Note:* The API doesn't accept multiple values of a parameter. If a particular parameter is supplied more than once in the API request, the API only accepts the last value of that request parameter. In addition, if an invalid request parameter is supplied in the API request, the API ignores that request parameter and returns the response corresponding to the remaining valid request parameters. If no parameters are requested, all parameters are returned. 
      *   `:groupIdFilter` (*type:* `String.t`) - Comma separated group ids (obfuscated) on which user activities are filtered, i.e, the response will contain activities for only those users that are a part of at least one of the group ids mentioned here. Format: "id:abc123,id:xyz456"
      *   `:maxResults` (*type:* `integer()`) - Determines how many activity records are shown on each response page. For example, if the request sets `maxResults=1` and the report has two activities, the report has two pages. The response's `nextPageToken` property has the token to the second page. The `maxResults` query string is optional in the request. The default value is 1000.
      *   `:orgUnitID` (*type:* `String.t`) - ID of the organizational unit to report on. Activity records will be shown only for users who belong to the specified organizational unit. Data before Dec 17, 2018 doesn't appear in the filtered results.
      *   `:pageToken` (*type:* `String.t`) - The token to specify next page. A report with multiple pages has a `nextPageToken` property in the response. In your follow-on request getting the next page of the report, enter the `nextPageToken` value in the `pageToken` query string.
      *   `:startTime` (*type:* `String.t`) - Sets the beginning of the range of time shown in the report. The date is in the RFC 3339 format, for example 2010-10-28T10:26:35.000Z. The report returns all activities from `startTime` until `endTime`. The `startTime` must be before the `endTime` (if specified) and the current time when the request is made, or the API returns an error.
      *   `:body` (*type:* `GoogleApi.Admin.Reports_v1.Model.Channel.t`) - 
  *   `opts` (*type:* `keyword()`) - Call options

  ## Returns

  *   `{:ok, %GoogleApi.Admin.Reports_v1.Model.Channel{}}` on success
  *   `{:error, info}` on failure
  """
  @spec reports_activities_watch(Tesla.Env.client(), String.t(), String.t(), keyword(), keyword()) ::
          {:ok, GoogleApi.Admin.Reports_v1.Model.Channel.t()}
          | {:ok, Tesla.Env.t()}
          | {:ok, list()}
          | {:error, any()}
  def reports_activities_watch(
        connection,
        user_key,
        application_name,
        optional_params \\ [],
        opts \\ []
      ) do
    optional_params_config = %{
      :"$.xgafv" => :query,
      :access_token => :query,
      :alt => :query,
      :callback => :query,
      :fields => :query,
      :key => :query,
      :oauth_token => :query,
      :prettyPrint => :query,
      :quotaUser => :query,
      :uploadType => :query,
      :upload_protocol => :query,
      :actorIpAddress => :query,
      :customerId => :query,
      :endTime => :query,
      :eventName => :query,
      :filters => :query,
      :groupIdFilter => :query,
      :maxResults => :query,
      :orgUnitID => :query,
      :pageToken => :query,
      :startTime => :query,
      :body => :body
    }

    request =
      Request.new()
      |> Request.method(:post)
      |> Request.url(
        "/admin/reports/v1/activity/users/{userKey}/applications/{applicationName}/watch",
        %{
          "userKey" => URI.encode(user_key, &URI.char_unreserved?/1),
          "applicationName" => URI.encode(application_name, &URI.char_unreserved?/1)
        }
      )
      |> Request.add_optional_params(optional_params_config, optional_params)
      |> Request.library_version(@library_version)

    connection
    |> Connection.execute(request)
    |> Response.decode(opts ++ [struct: %GoogleApi.Admin.Reports_v1.Model.Channel{}])
  end
end
