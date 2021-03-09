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

defmodule GoogleApi.Admin.Reports_v1.Model.ActivityEventsParameters do
  @moduledoc """


  ## Attributes

  *   `boolValue` (*type:* `boolean()`, *default:* `nil`) - Boolean value of the parameter.
  *   `intValue` (*type:* `String.t`, *default:* `nil`) - Integer value of the parameter.
  *   `messageValue` (*type:* `GoogleApi.Admin.Reports_v1.Model.ActivityEventsParametersMessageValue.t`, *default:* `nil`) - Nested parameter value pairs associated with this parameter. Complex value type for a parameter are returned as a list of parameter values. For example, the address parameter may have a value as `[{parameter: [{name: city, value: abc}]}]`
  *   `multiIntValue` (*type:* `list(String.t)`, *default:* `nil`) - Integer values of the parameter.
  *   `multiMessageValue` (*type:* `list(GoogleApi.Admin.Reports_v1.Model.ActivityEventsParametersMultiMessageValue.t)`, *default:* `nil`) - List of `messageValue` objects.
  *   `multiValue` (*type:* `list(String.t)`, *default:* `nil`) - String values of the parameter.
  *   `name` (*type:* `String.t`, *default:* `nil`) - The name of the parameter.
  *   `value` (*type:* `String.t`, *default:* `nil`) - String value of the parameter.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :boolValue => boolean() | nil,
          :intValue => String.t() | nil,
          :messageValue =>
            GoogleApi.Admin.Reports_v1.Model.ActivityEventsParametersMessageValue.t() | nil,
          :multiIntValue => list(String.t()) | nil,
          :multiMessageValue =>
            list(GoogleApi.Admin.Reports_v1.Model.ActivityEventsParametersMultiMessageValue.t())
            | nil,
          :multiValue => list(String.t()) | nil,
          :name => String.t() | nil,
          :value => String.t() | nil
        }

  field(:boolValue)
  field(:intValue)
  field(:messageValue, as: GoogleApi.Admin.Reports_v1.Model.ActivityEventsParametersMessageValue)
  field(:multiIntValue, type: :list)

  field(:multiMessageValue,
    as: GoogleApi.Admin.Reports_v1.Model.ActivityEventsParametersMultiMessageValue,
    type: :list
  )

  field(:multiValue, type: :list)
  field(:name)
  field(:value)
end

defimpl Poison.Decoder, for: GoogleApi.Admin.Reports_v1.Model.ActivityEventsParameters do
  def decode(value, options) do
    GoogleApi.Admin.Reports_v1.Model.ActivityEventsParameters.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Admin.Reports_v1.Model.ActivityEventsParameters do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
