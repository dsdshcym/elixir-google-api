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

defmodule GoogleApi.Docs.V1.Model.InsertInlineImageRequest do
  @moduledoc """
  Inserts an InlineObject containing an image at the given location.

  ## Attributes

  *   `endOfSegmentLocation` (*type:* `GoogleApi.Docs.V1.Model.EndOfSegmentLocation.t`, *default:* `nil`) - Inserts the text at the end of a header, footer or the document body. Inline images cannot be inserted inside a footnote.
  *   `location` (*type:* `GoogleApi.Docs.V1.Model.Location.t`, *default:* `nil`) - Inserts the image at a specific index in the document. The image must be inserted inside the bounds of an existing Paragraph. For instance, it cannot be inserted at a table's start index (i.e. between the table and its preceding paragraph). Inline images cannot be inserted inside a footnote or equation.
  *   `objectSize` (*type:* `GoogleApi.Docs.V1.Model.Size.t`, *default:* `nil`) - The size that the image should appear as in the document. This property is optional and the final size of the image in the document is determined by the following rules: * If neither width nor height is specified, then a default size of the image is calculated based on its resolution. * If one dimension is specified then the other dimension is calculated to preserve the aspect ratio of the image. * If both width and height are specified, the image is scaled to fit within the provided dimensions while maintaining its aspect ratio.
  *   `uri` (*type:* `String.t`, *default:* `nil`) - The image URI. The image is fetched once at insertion time and a copy is stored for display inside the document. Images must be less than 50MB in size, cannot exceed 25 megapixels, and must be in one of PNG, JPEG, or GIF format. The provided URI can be at most 2 kB in length. The URI itself is saved with the image, and exposed via the ImageProperties.content_uri field.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :endOfSegmentLocation => GoogleApi.Docs.V1.Model.EndOfSegmentLocation.t() | nil,
          :location => GoogleApi.Docs.V1.Model.Location.t() | nil,
          :objectSize => GoogleApi.Docs.V1.Model.Size.t() | nil,
          :uri => String.t() | nil
        }

  field(:endOfSegmentLocation, as: GoogleApi.Docs.V1.Model.EndOfSegmentLocation)
  field(:location, as: GoogleApi.Docs.V1.Model.Location)
  field(:objectSize, as: GoogleApi.Docs.V1.Model.Size)
  field(:uri)
end

defimpl Poison.Decoder, for: GoogleApi.Docs.V1.Model.InsertInlineImageRequest do
  def decode(value, options) do
    GoogleApi.Docs.V1.Model.InsertInlineImageRequest.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Docs.V1.Model.InsertInlineImageRequest do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
