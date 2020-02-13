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

defmodule GoogleApi.MachineLearning.V1.Model.GoogleCloudMlV1_Scheduling do
  @moduledoc """
  All parameters related to scheduling of training jobs.

  ## Attributes

  *   `maxRunningTime` (*type:* `String.t`, *default:* `nil`) - Optional. The maximum job running time, expressed in seconds. The field can
      contain up to nine fractional digits, terminated by `s`. By default there
      is no limit to the running time.

      If the training job is still running after this duration, AI Platform
      Training cancels it.

      For example, if you want to ensure your job runs for no more than 2 hours,
      set this field to `7200s` (2 hours * 60 minutes / hour * 60 seconds /
      minute).

      If you submit your training job using the `gcloud` tool, you can [provide
      this field in a `config.yaml`
      file](/ai-platform/training/docs/training-jobs#formatting_your_configuration_parameters).
      For example:

      ```yaml
      trainingInput:
        ...
        scheduling:
          maxRunningTime: 7200s
        ...
      ```
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :maxRunningTime => String.t()
        }

  field(:maxRunningTime)
end

defimpl Poison.Decoder, for: GoogleApi.MachineLearning.V1.Model.GoogleCloudMlV1_Scheduling do
  def decode(value, options) do
    GoogleApi.MachineLearning.V1.Model.GoogleCloudMlV1_Scheduling.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.MachineLearning.V1.Model.GoogleCloudMlV1_Scheduling do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
