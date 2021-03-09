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

defmodule GoogleApi.DataLabeling.V1beta1.Model.GoogleCloudDatalabelingV1beta1BoundingPolyConfig do
  @moduledoc """
  Config for image bounding poly (and bounding box) human labeling task.

  ## Attributes

  *   `annotationSpecSet` (*type:* `String.t`, *default:* `nil`) - Required. Annotation spec set resource name.
  *   `instructionMessage` (*type:* `String.t`, *default:* `nil`) - Optional. Instruction message showed on contributors UI.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :annotationSpecSet => String.t() | nil,
          :instructionMessage => String.t() | nil
        }

  field(:annotationSpecSet)
  field(:instructionMessage)
end

defimpl Poison.Decoder,
  for: GoogleApi.DataLabeling.V1beta1.Model.GoogleCloudDatalabelingV1beta1BoundingPolyConfig do
  def decode(value, options) do
    GoogleApi.DataLabeling.V1beta1.Model.GoogleCloudDatalabelingV1beta1BoundingPolyConfig.decode(
      value,
      options
    )
  end
end

defimpl Poison.Encoder,
  for: GoogleApi.DataLabeling.V1beta1.Model.GoogleCloudDatalabelingV1beta1BoundingPolyConfig do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
