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

defmodule GoogleApi.Vault.V1.Model.Hold do
  @moduledoc """
  Represents a hold within Vault. A hold restricts purging of
  artifacts based on the combination of the query and accounts restrictions.
  A hold can be configured to either apply to an explicitly configured set
  of accounts, or can be applied to all members of an organizational unit.

  ## Attributes

  *   `accounts` (*type:* `list(GoogleApi.Vault.V1.Model.HeldAccount.t)`, *default:* `nil`) - If set, the hold applies to the enumerated accounts and org_unit must be
      empty.
  *   `corpus` (*type:* `String.t`, *default:* `nil`) - The corpus to be searched.
  *   `holdId` (*type:* `String.t`, *default:* `nil`) - The unique immutable ID of the hold. Assigned during creation.
  *   `name` (*type:* `String.t`, *default:* `nil`) - The name of the hold.
  *   `orgUnit` (*type:* `GoogleApi.Vault.V1.Model.HeldOrgUnit.t`, *default:* `nil`) - If set, the hold applies to all members of the organizational unit and
      accounts must be empty. This property is mutable. For groups holds,
      set the accounts field.
  *   `query` (*type:* `GoogleApi.Vault.V1.Model.CorpusQuery.t`, *default:* `nil`) - The corpus-specific query. If set, the corpusQuery must match corpus
      type.
  *   `updateTime` (*type:* `DateTime.t`, *default:* `nil`) - The last time this hold was modified.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :accounts => list(GoogleApi.Vault.V1.Model.HeldAccount.t()),
          :corpus => String.t(),
          :holdId => String.t(),
          :name => String.t(),
          :orgUnit => GoogleApi.Vault.V1.Model.HeldOrgUnit.t(),
          :query => GoogleApi.Vault.V1.Model.CorpusQuery.t(),
          :updateTime => DateTime.t()
        }

  field(:accounts, as: GoogleApi.Vault.V1.Model.HeldAccount, type: :list)
  field(:corpus)
  field(:holdId)
  field(:name)
  field(:orgUnit, as: GoogleApi.Vault.V1.Model.HeldOrgUnit)
  field(:query, as: GoogleApi.Vault.V1.Model.CorpusQuery)
  field(:updateTime, as: DateTime)
end

defimpl Poison.Decoder, for: GoogleApi.Vault.V1.Model.Hold do
  def decode(value, options) do
    GoogleApi.Vault.V1.Model.Hold.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Vault.V1.Model.Hold do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
