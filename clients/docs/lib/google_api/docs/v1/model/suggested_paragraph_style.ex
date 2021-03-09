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

defmodule GoogleApi.Docs.V1.Model.SuggestedParagraphStyle do
  @moduledoc """
  A suggested change to a ParagraphStyle.

  ## Attributes

  *   `paragraphStyle` (*type:* `GoogleApi.Docs.V1.Model.ParagraphStyle.t`, *default:* `nil`) - A ParagraphStyle that only includes the changes made in this suggestion. This can be used along with the paragraph_suggestion_state to see which fields have changed and their new values.
  *   `paragraphStyleSuggestionState` (*type:* `GoogleApi.Docs.V1.Model.ParagraphStyleSuggestionState.t`, *default:* `nil`) - A mask that indicates which of the fields on the base ParagraphStyle have been changed in this suggestion.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :paragraphStyle => GoogleApi.Docs.V1.Model.ParagraphStyle.t() | nil,
          :paragraphStyleSuggestionState =>
            GoogleApi.Docs.V1.Model.ParagraphStyleSuggestionState.t() | nil
        }

  field(:paragraphStyle, as: GoogleApi.Docs.V1.Model.ParagraphStyle)
  field(:paragraphStyleSuggestionState, as: GoogleApi.Docs.V1.Model.ParagraphStyleSuggestionState)
end

defimpl Poison.Decoder, for: GoogleApi.Docs.V1.Model.SuggestedParagraphStyle do
  def decode(value, options) do
    GoogleApi.Docs.V1.Model.SuggestedParagraphStyle.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Docs.V1.Model.SuggestedParagraphStyle do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
