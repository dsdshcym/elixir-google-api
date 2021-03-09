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

defmodule GoogleApi.Admin.Directory_v1.Model.RoleRolePrivileges do
  @moduledoc """


  ## Attributes

  *   `privilegeName` (*type:* `String.t`, *default:* `nil`) - The name of the privilege.
  *   `serviceId` (*type:* `String.t`, *default:* `nil`) - The obfuscated ID of the service this privilege is for. This value is returned with [`Privileges.list()`](/admin-sdk/directory/v1/reference/privileges/list).
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :privilegeName => String.t() | nil,
          :serviceId => String.t() | nil
        }

  field(:privilegeName)
  field(:serviceId)
end

defimpl Poison.Decoder, for: GoogleApi.Admin.Directory_v1.Model.RoleRolePrivileges do
  def decode(value, options) do
    GoogleApi.Admin.Directory_v1.Model.RoleRolePrivileges.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Admin.Directory_v1.Model.RoleRolePrivileges do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
