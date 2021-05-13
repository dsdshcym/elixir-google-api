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

defmodule GoogleApi.Redis.V1beta1.Model.MaintenancePolicy do
  @moduledoc """
  Maintenance policy for an instance.

  ## Attributes

  *   `createTime` (*type:* `DateTime.t`, *default:* `nil`) - Output only. The time when the policy was created.
  *   `description` (*type:* `String.t`, *default:* `nil`) - Optional. Description of what this policy is for. Create/Update methods return INVALID_ARGUMENT if the length is greater than 512.
  *   `updateTime` (*type:* `DateTime.t`, *default:* `nil`) - Output only. The time when the policy was last updated.
  *   `weeklyMaintenanceWindow` (*type:* `list(GoogleApi.Redis.V1beta1.Model.WeeklyMaintenanceWindow.t)`, *default:* `nil`) - Optional. Maintenance window that is applied to resources covered by this policy. Minimum 1. For the current version, the maximum number of weekly_window is expected to be one.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :createTime => DateTime.t() | nil,
          :description => String.t() | nil,
          :updateTime => DateTime.t() | nil,
          :weeklyMaintenanceWindow =>
            list(GoogleApi.Redis.V1beta1.Model.WeeklyMaintenanceWindow.t()) | nil
        }

  field(:createTime, as: DateTime)
  field(:description)
  field(:updateTime, as: DateTime)

  field(:weeklyMaintenanceWindow,
    as: GoogleApi.Redis.V1beta1.Model.WeeklyMaintenanceWindow,
    type: :list
  )
end

defimpl Poison.Decoder, for: GoogleApi.Redis.V1beta1.Model.MaintenancePolicy do
  def decode(value, options) do
    GoogleApi.Redis.V1beta1.Model.MaintenancePolicy.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Redis.V1beta1.Model.MaintenancePolicy do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
