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

defmodule GoogleApi.Gmail.V1.Model.ModifyMessageRequest do
  @moduledoc """


  ## Attributes

  *   `addLabelIds` (*type:* `list(String.t)`, *default:* `nil`) - A list of IDs of labels to add to this message.
  *   `removeLabelIds` (*type:* `list(String.t)`, *default:* `nil`) - A list IDs of labels to remove from this message.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :addLabelIds => list(String.t()) | nil,
          :removeLabelIds => list(String.t()) | nil
        }

  field(:addLabelIds, type: :list)
  field(:removeLabelIds, type: :list)
end

defimpl Poison.Decoder, for: GoogleApi.Gmail.V1.Model.ModifyMessageRequest do
  def decode(value, options) do
    GoogleApi.Gmail.V1.Model.ModifyMessageRequest.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Gmail.V1.Model.ModifyMessageRequest do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
