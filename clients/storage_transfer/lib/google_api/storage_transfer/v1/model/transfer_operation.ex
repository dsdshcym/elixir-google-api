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

defmodule GoogleApi.StorageTransfer.V1.Model.TransferOperation do
  @moduledoc """
  A description of the execution of a transfer.

  ## Attributes

  *   `counters` (*type:* `GoogleApi.StorageTransfer.V1.Model.TransferCounters.t`, *default:* `nil`) - Information about the progress of the transfer operation.
  *   `endTime` (*type:* `DateTime.t`, *default:* `nil`) - End time of this transfer execution.
  *   `errorBreakdowns` (*type:* `list(GoogleApi.StorageTransfer.V1.Model.ErrorSummary.t)`, *default:* `nil`) - Summarizes errors encountered with sample error log entries.
  *   `name` (*type:* `String.t`, *default:* `nil`) - A globally unique ID assigned by the system.
  *   `notificationConfig` (*type:* `GoogleApi.StorageTransfer.V1.Model.NotificationConfig.t`, *default:* `nil`) - Notification configuration.
  *   `projectId` (*type:* `String.t`, *default:* `nil`) - The ID of the Google Cloud Platform Project that owns the operation.
  *   `startTime` (*type:* `DateTime.t`, *default:* `nil`) - Start time of this transfer execution.
  *   `status` (*type:* `String.t`, *default:* `nil`) - Status of the transfer operation.
  *   `transferJobName` (*type:* `String.t`, *default:* `nil`) - The name of the transfer job that triggers this transfer operation.
  *   `transferSpec` (*type:* `GoogleApi.StorageTransfer.V1.Model.TransferSpec.t`, *default:* `nil`) - Transfer specification.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :counters => GoogleApi.StorageTransfer.V1.Model.TransferCounters.t(),
          :endTime => DateTime.t(),
          :errorBreakdowns => list(GoogleApi.StorageTransfer.V1.Model.ErrorSummary.t()),
          :name => String.t(),
          :notificationConfig => GoogleApi.StorageTransfer.V1.Model.NotificationConfig.t(),
          :projectId => String.t(),
          :startTime => DateTime.t(),
          :status => String.t(),
          :transferJobName => String.t(),
          :transferSpec => GoogleApi.StorageTransfer.V1.Model.TransferSpec.t()
        }

  field(:counters, as: GoogleApi.StorageTransfer.V1.Model.TransferCounters)
  field(:endTime, as: DateTime)
  field(:errorBreakdowns, as: GoogleApi.StorageTransfer.V1.Model.ErrorSummary, type: :list)
  field(:name)
  field(:notificationConfig, as: GoogleApi.StorageTransfer.V1.Model.NotificationConfig)
  field(:projectId)
  field(:startTime, as: DateTime)
  field(:status)
  field(:transferJobName)
  field(:transferSpec, as: GoogleApi.StorageTransfer.V1.Model.TransferSpec)
end

defimpl Poison.Decoder, for: GoogleApi.StorageTransfer.V1.Model.TransferOperation do
  def decode(value, options) do
    GoogleApi.StorageTransfer.V1.Model.TransferOperation.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.StorageTransfer.V1.Model.TransferOperation do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
