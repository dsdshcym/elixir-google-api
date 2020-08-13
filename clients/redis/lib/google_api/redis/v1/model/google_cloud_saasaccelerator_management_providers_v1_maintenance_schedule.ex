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

defmodule GoogleApi.Redis.V1.Model.GoogleCloudSaasacceleratorManagementProvidersV1MaintenanceSchedule do
  @moduledoc """
  Maintenance schedule which is exposed to customer and potentially end user, indicating published upcoming future maintenance schedule

  ## Attributes

  *   `canReschedule` (*type:* `boolean()`, *default:* `nil`) - Can this scheduled update be rescheduled? By default, it's true and API needs to do explicitly check whether it's set, if it's set as false explicitly, it's false
  *   `endTime` (*type:* `DateTime.t`, *default:* `nil`) - The scheduled end time for the maintenance.
  *   `rolloutManagementPolicy` (*type:* `String.t`, *default:* `nil`) - The rollout management policy this maintenance schedule is associated with. When doing reschedule update request, the reschedule should be against this given policy.
  *   `startTime` (*type:* `DateTime.t`, *default:* `nil`) - The scheduled start time for the maintenance.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :canReschedule => boolean(),
          :endTime => DateTime.t(),
          :rolloutManagementPolicy => String.t(),
          :startTime => DateTime.t()
        }

  field(:canReschedule)
  field(:endTime, as: DateTime)
  field(:rolloutManagementPolicy)
  field(:startTime, as: DateTime)
end

defimpl Poison.Decoder,
  for: GoogleApi.Redis.V1.Model.GoogleCloudSaasacceleratorManagementProvidersV1MaintenanceSchedule do
  def decode(value, options) do
    GoogleApi.Redis.V1.Model.GoogleCloudSaasacceleratorManagementProvidersV1MaintenanceSchedule.decode(
      value,
      options
    )
  end
end

defimpl Poison.Encoder,
  for: GoogleApi.Redis.V1.Model.GoogleCloudSaasacceleratorManagementProvidersV1MaintenanceSchedule do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
