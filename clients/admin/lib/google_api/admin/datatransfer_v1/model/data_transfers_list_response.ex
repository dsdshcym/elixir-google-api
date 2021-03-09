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

defmodule GoogleApi.Admin.Datatransfer_v1.Model.DataTransfersListResponse do
  @moduledoc """
  Template for a collection of DataTransfer resources.

  ## Attributes

  *   `dataTransfers` (*type:* `list(GoogleApi.Admin.Datatransfer_v1.Model.DataTransfer.t)`, *default:* `nil`) - List of data transfer requests.
  *   `etag` (*type:* `String.t`, *default:* `nil`) - ETag of the resource.
  *   `kind` (*type:* `String.t`, *default:* `admin#datatransfer#dataTransfersList`) - Identifies the resource as a collection of data transfer requests.
  *   `nextPageToken` (*type:* `String.t`, *default:* `nil`) - Continuation token which will be used to specify next page in list API.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :dataTransfers => list(GoogleApi.Admin.Datatransfer_v1.Model.DataTransfer.t()) | nil,
          :etag => String.t() | nil,
          :kind => String.t() | nil,
          :nextPageToken => String.t() | nil
        }

  field(:dataTransfers, as: GoogleApi.Admin.Datatransfer_v1.Model.DataTransfer, type: :list)
  field(:etag)
  field(:kind)
  field(:nextPageToken)
end

defimpl Poison.Decoder, for: GoogleApi.Admin.Datatransfer_v1.Model.DataTransfersListResponse do
  def decode(value, options) do
    GoogleApi.Admin.Datatransfer_v1.Model.DataTransfersListResponse.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Admin.Datatransfer_v1.Model.DataTransfersListResponse do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
