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

defmodule GoogleApi.Admin.Directory_v1.Model.UserSshPublicKey do
  @moduledoc """
  JSON template for a POSIX account entry.

  ## Attributes

  *   `expirationTimeUsec` (*type:* `String.t`, *default:* `nil`) - An expiration time in microseconds since epoch.
  *   `fingerprint` (*type:* `String.t`, *default:* `nil`) - A SHA-256 fingerprint of the SSH public key. (Read-only)
  *   `key` (*type:* `String.t`, *default:* `nil`) - An SSH public key.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :expirationTimeUsec => String.t() | nil,
          :fingerprint => String.t() | nil,
          :key => String.t() | nil
        }

  field(:expirationTimeUsec)
  field(:fingerprint)
  field(:key)
end

defimpl Poison.Decoder, for: GoogleApi.Admin.Directory_v1.Model.UserSshPublicKey do
  def decode(value, options) do
    GoogleApi.Admin.Directory_v1.Model.UserSshPublicKey.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Admin.Directory_v1.Model.UserSshPublicKey do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
