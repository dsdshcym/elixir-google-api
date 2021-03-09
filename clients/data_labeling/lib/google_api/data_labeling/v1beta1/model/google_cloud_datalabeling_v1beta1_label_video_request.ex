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

defmodule GoogleApi.DataLabeling.V1beta1.Model.GoogleCloudDatalabelingV1beta1LabelVideoRequest do
  @moduledoc """
  Request message for LabelVideo.

  ## Attributes

  *   `basicConfig` (*type:* `GoogleApi.DataLabeling.V1beta1.Model.GoogleCloudDatalabelingV1beta1HumanAnnotationConfig.t`, *default:* `nil`) - Required. Basic human annotation config.
  *   `eventConfig` (*type:* `GoogleApi.DataLabeling.V1beta1.Model.GoogleCloudDatalabelingV1beta1EventConfig.t`, *default:* `nil`) - Configuration for video event task. One of video_classification_config, object_detection_config, object_tracking_config and event_config is required.
  *   `feature` (*type:* `String.t`, *default:* `nil`) - Required. The type of video labeling task.
  *   `objectDetectionConfig` (*type:* `GoogleApi.DataLabeling.V1beta1.Model.GoogleCloudDatalabelingV1beta1ObjectDetectionConfig.t`, *default:* `nil`) - Configuration for video object detection task. One of video_classification_config, object_detection_config, object_tracking_config and event_config is required.
  *   `objectTrackingConfig` (*type:* `GoogleApi.DataLabeling.V1beta1.Model.GoogleCloudDatalabelingV1beta1ObjectTrackingConfig.t`, *default:* `nil`) - Configuration for video object tracking task. One of video_classification_config, object_detection_config, object_tracking_config and event_config is required.
  *   `videoClassificationConfig` (*type:* `GoogleApi.DataLabeling.V1beta1.Model.GoogleCloudDatalabelingV1beta1VideoClassificationConfig.t`, *default:* `nil`) - Configuration for video classification task. One of video_classification_config, object_detection_config, object_tracking_config and event_config is required.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :basicConfig =>
            GoogleApi.DataLabeling.V1beta1.Model.GoogleCloudDatalabelingV1beta1HumanAnnotationConfig.t()
            | nil,
          :eventConfig =>
            GoogleApi.DataLabeling.V1beta1.Model.GoogleCloudDatalabelingV1beta1EventConfig.t()
            | nil,
          :feature => String.t() | nil,
          :objectDetectionConfig =>
            GoogleApi.DataLabeling.V1beta1.Model.GoogleCloudDatalabelingV1beta1ObjectDetectionConfig.t()
            | nil,
          :objectTrackingConfig =>
            GoogleApi.DataLabeling.V1beta1.Model.GoogleCloudDatalabelingV1beta1ObjectTrackingConfig.t()
            | nil,
          :videoClassificationConfig =>
            GoogleApi.DataLabeling.V1beta1.Model.GoogleCloudDatalabelingV1beta1VideoClassificationConfig.t()
            | nil
        }

  field(:basicConfig,
    as: GoogleApi.DataLabeling.V1beta1.Model.GoogleCloudDatalabelingV1beta1HumanAnnotationConfig
  )

  field(:eventConfig,
    as: GoogleApi.DataLabeling.V1beta1.Model.GoogleCloudDatalabelingV1beta1EventConfig
  )

  field(:feature)

  field(:objectDetectionConfig,
    as: GoogleApi.DataLabeling.V1beta1.Model.GoogleCloudDatalabelingV1beta1ObjectDetectionConfig
  )

  field(:objectTrackingConfig,
    as: GoogleApi.DataLabeling.V1beta1.Model.GoogleCloudDatalabelingV1beta1ObjectTrackingConfig
  )

  field(:videoClassificationConfig,
    as:
      GoogleApi.DataLabeling.V1beta1.Model.GoogleCloudDatalabelingV1beta1VideoClassificationConfig
  )
end

defimpl Poison.Decoder,
  for: GoogleApi.DataLabeling.V1beta1.Model.GoogleCloudDatalabelingV1beta1LabelVideoRequest do
  def decode(value, options) do
    GoogleApi.DataLabeling.V1beta1.Model.GoogleCloudDatalabelingV1beta1LabelVideoRequest.decode(
      value,
      options
    )
  end
end

defimpl Poison.Encoder,
  for: GoogleApi.DataLabeling.V1beta1.Model.GoogleCloudDatalabelingV1beta1LabelVideoRequest do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
