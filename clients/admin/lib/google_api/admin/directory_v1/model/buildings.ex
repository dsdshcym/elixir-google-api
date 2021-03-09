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

defmodule GoogleApi.Admin.Directory_v1.Model.Buildings do
  @moduledoc """
  Public API: Resources.buildings

  ## Attributes

  *   `buildings` (*type:* `list(GoogleApi.Admin.Directory_v1.Model.Building.t)`, *default:* `nil`) - The Buildings in this page of results.
  *   `etag` (*type:* `String.t`, *default:* `nil`) - ETag of the resource.
  *   `kind` (*type:* `String.t`, *default:* `admin#directory#resources#buildings#buildingsList`) - Kind of resource this is.
  *   `nextPageToken` (*type:* `String.t`, *default:* `nil`) - The continuation token, used to page through large result sets. Provide this value in a subsequent request to return the next page of results.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :buildings => list(GoogleApi.Admin.Directory_v1.Model.Building.t()) | nil,
          :etag => String.t() | nil,
          :kind => String.t() | nil,
          :nextPageToken => String.t() | nil
        }

  field(:buildings, as: GoogleApi.Admin.Directory_v1.Model.Building, type: :list)
  field(:etag)
  field(:kind)
  field(:nextPageToken)
end

defimpl Poison.Decoder, for: GoogleApi.Admin.Directory_v1.Model.Buildings do
  def decode(value, options) do
    GoogleApi.Admin.Directory_v1.Model.Buildings.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Admin.Directory_v1.Model.Buildings do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
