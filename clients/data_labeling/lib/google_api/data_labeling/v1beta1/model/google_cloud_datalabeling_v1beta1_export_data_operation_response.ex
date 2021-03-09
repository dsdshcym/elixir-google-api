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

defmodule GoogleApi.DataLabeling.V1beta1.Model.GoogleCloudDatalabelingV1beta1ExportDataOperationResponse do
  @moduledoc """
  Response used for ExportDataset longrunning operation.

  ## Attributes

  *   `annotatedDataset` (*type:* `String.t`, *default:* `nil`) - Output only. The name of annotated dataset in format "projects/*/datasets/*/annotatedDatasets/*".
  *   `dataset` (*type:* `String.t`, *default:* `nil`) - Ouptut only. The name of dataset. "projects/*/datasets/*"
  *   `exportCount` (*type:* `integer()`, *default:* `nil`) - Output only. Number of examples exported successfully.
  *   `labelStats` (*type:* `GoogleApi.DataLabeling.V1beta1.Model.GoogleCloudDatalabelingV1beta1LabelStats.t`, *default:* `nil`) - Output only. Statistic infos of labels in the exported dataset.
  *   `outputConfig` (*type:* `GoogleApi.DataLabeling.V1beta1.Model.GoogleCloudDatalabelingV1beta1OutputConfig.t`, *default:* `nil`) - Output only. output_config in the ExportData request.
  *   `totalCount` (*type:* `integer()`, *default:* `nil`) - Output only. Total number of examples requested to export
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :annotatedDataset => String.t() | nil,
          :dataset => String.t() | nil,
          :exportCount => integer() | nil,
          :labelStats =>
            GoogleApi.DataLabeling.V1beta1.Model.GoogleCloudDatalabelingV1beta1LabelStats.t()
            | nil,
          :outputConfig =>
            GoogleApi.DataLabeling.V1beta1.Model.GoogleCloudDatalabelingV1beta1OutputConfig.t()
            | nil,
          :totalCount => integer() | nil
        }

  field(:annotatedDataset)
  field(:dataset)
  field(:exportCount)

  field(:labelStats,
    as: GoogleApi.DataLabeling.V1beta1.Model.GoogleCloudDatalabelingV1beta1LabelStats
  )

  field(:outputConfig,
    as: GoogleApi.DataLabeling.V1beta1.Model.GoogleCloudDatalabelingV1beta1OutputConfig
  )

  field(:totalCount)
end

defimpl Poison.Decoder,
  for:
    GoogleApi.DataLabeling.V1beta1.Model.GoogleCloudDatalabelingV1beta1ExportDataOperationResponse do
  def decode(value, options) do
    GoogleApi.DataLabeling.V1beta1.Model.GoogleCloudDatalabelingV1beta1ExportDataOperationResponse.decode(
      value,
      options
    )
  end
end

defimpl Poison.Encoder,
  for:
    GoogleApi.DataLabeling.V1beta1.Model.GoogleCloudDatalabelingV1beta1ExportDataOperationResponse do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
