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

defmodule GoogleApi.Docs.V1.Model.NamedStyleSuggestionState do
  @moduledoc """
  A suggestion state of a NamedStyle message.

  ## Attributes

  *   `namedStyleType` (*type:* `String.t`, *default:* `nil`) - The named style type that this suggestion state corresponds to. This field is provided as a convenience for matching the NamedStyleSuggestionState with its corresponding NamedStyle.
  *   `paragraphStyleSuggestionState` (*type:* `GoogleApi.Docs.V1.Model.ParagraphStyleSuggestionState.t`, *default:* `nil`) - A mask that indicates which of the fields in paragraph style have been changed in this suggestion.
  *   `textStyleSuggestionState` (*type:* `GoogleApi.Docs.V1.Model.TextStyleSuggestionState.t`, *default:* `nil`) - A mask that indicates which of the fields in text style have been changed in this suggestion.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :namedStyleType => String.t() | nil,
          :paragraphStyleSuggestionState =>
            GoogleApi.Docs.V1.Model.ParagraphStyleSuggestionState.t() | nil,
          :textStyleSuggestionState => GoogleApi.Docs.V1.Model.TextStyleSuggestionState.t() | nil
        }

  field(:namedStyleType)
  field(:paragraphStyleSuggestionState, as: GoogleApi.Docs.V1.Model.ParagraphStyleSuggestionState)
  field(:textStyleSuggestionState, as: GoogleApi.Docs.V1.Model.TextStyleSuggestionState)
end

defimpl Poison.Decoder, for: GoogleApi.Docs.V1.Model.NamedStyleSuggestionState do
  def decode(value, options) do
    GoogleApi.Docs.V1.Model.NamedStyleSuggestionState.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Docs.V1.Model.NamedStyleSuggestionState do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
