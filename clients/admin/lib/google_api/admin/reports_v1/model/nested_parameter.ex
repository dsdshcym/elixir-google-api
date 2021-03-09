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

defmodule GoogleApi.Admin.Reports_v1.Model.NestedParameter do
  @moduledoc """
  JSON template for a parameter used in various reports.

  ## Attributes

  *   `boolValue` (*type:* `boolean()`, *default:* `nil`) - Boolean value of the parameter.
  *   `intValue` (*type:* `String.t`, *default:* `nil`) - Integer value of the parameter.
  *   `multiBoolValue` (*type:* `list(boolean())`, *default:* `nil`) - Multiple boolean values of the parameter.
  *   `multiIntValue` (*type:* `list(String.t)`, *default:* `nil`) - Multiple integer values of the parameter.
  *   `multiValue` (*type:* `list(String.t)`, *default:* `nil`) - Multiple string values of the parameter.
  *   `name` (*type:* `String.t`, *default:* `nil`) - The name of the parameter.
  *   `value` (*type:* `String.t`, *default:* `nil`) - String value of the parameter.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :boolValue => boolean() | nil,
          :intValue => String.t() | nil,
          :multiBoolValue => list(boolean()) | nil,
          :multiIntValue => list(String.t()) | nil,
          :multiValue => list(String.t()) | nil,
          :name => String.t() | nil,
          :value => String.t() | nil
        }

  field(:boolValue)
  field(:intValue)
  field(:multiBoolValue, type: :list)
  field(:multiIntValue, type: :list)
  field(:multiValue, type: :list)
  field(:name)
  field(:value)
end

defimpl Poison.Decoder, for: GoogleApi.Admin.Reports_v1.Model.NestedParameter do
  def decode(value, options) do
    GoogleApi.Admin.Reports_v1.Model.NestedParameter.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Admin.Reports_v1.Model.NestedParameter do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
