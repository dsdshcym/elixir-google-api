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

defmodule GoogleApi.Firestore.V1.Model.GoogleFirestoreAdminV1IndexField do
  @moduledoc """
  A field in an index. The field_path describes which field is indexed, the value_mode describes how the field value is indexed.

  ## Attributes

  *   `arrayConfig` (*type:* `String.t`, *default:* `nil`) - Indicates that this field supports operations on `array_value`s.
  *   `fieldPath` (*type:* `String.t`, *default:* `nil`) - Can be __name__. For single field indexes, this must match the name of the field or may be omitted.
  *   `order` (*type:* `String.t`, *default:* `nil`) - Indicates that this field supports ordering by the specified order or comparing using =, <, <=, >, >=.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :arrayConfig => String.t(),
          :fieldPath => String.t(),
          :order => String.t()
        }

  field(:arrayConfig)
  field(:fieldPath)
  field(:order)
end

defimpl Poison.Decoder, for: GoogleApi.Firestore.V1.Model.GoogleFirestoreAdminV1IndexField do
  def decode(value, options) do
    GoogleApi.Firestore.V1.Model.GoogleFirestoreAdminV1IndexField.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Firestore.V1.Model.GoogleFirestoreAdminV1IndexField do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
