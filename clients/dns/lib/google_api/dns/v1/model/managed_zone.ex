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

defmodule GoogleApi.DNS.V1.Model.ManagedZone do
  @moduledoc """
  A zone is a subtree of the DNS namespace under one administrative responsibility. A ManagedZone is a resource that represents a DNS zone hosted by the Cloud DNS service.

  ## Attributes

  *   `creationTime` (*type:* `String.t`, *default:* `nil`) - The time that this resource was created on the server. This is in RFC3339 text format. Output only.
  *   `description` (*type:* `String.t`, *default:* `nil`) - A mutable string of at most 1024 characters associated with this resource for the user's convenience. Has no effect on the managed zone's function.
  *   `dnsName` (*type:* `String.t`, *default:* `nil`) - The DNS name of this managed zone, for instance "example.com.".
  *   `dnssecConfig` (*type:* `GoogleApi.DNS.V1.Model.ManagedZoneDnsSecConfig.t`, *default:* `nil`) - DNSSEC configuration.
  *   `id` (*type:* `String.t`, *default:* `nil`) - Unique identifier for the resource; defined by the server (output only)
  *   `kind` (*type:* `String.t`, *default:* `dns#managedZone`) - Identifies what kind of resource this is. Value: the fixed string "dns#managedZone".
  *   `labels` (*type:* `map()`, *default:* `nil`) - User labels.
  *   `name` (*type:* `String.t`, *default:* `nil`) - User assigned name for this resource. Must be unique within the project. The name must be 1-63 characters long, must begin with a letter, end with a letter or digit, and only contain lowercase letters, digits or dashes.
  *   `nameServerSet` (*type:* `String.t`, *default:* `nil`) - Optionally specifies the NameServerSet for this ManagedZone. A NameServerSet is a set of DNS name servers that all host the same ManagedZones. Most users will leave this field unset.
  *   `nameServers` (*type:* `list(String.t)`, *default:* `nil`) - Delegate your managed_zone to these virtual name servers; defined by the server (output only)
  *   `privateVisibilityConfig` (*type:* `GoogleApi.DNS.V1.Model.ManagedZonePrivateVisibilityConfig.t`, *default:* `nil`) - For privately visible zones, the set of Virtual Private Cloud resources that the zone is visible from.
  *   `visibility` (*type:* `String.t`, *default:* `nil`) - The zone's visibility: public zones are exposed to the Internet, while private zones are visible only to Virtual Private Cloud resources.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :creationTime => String.t(),
          :description => String.t(),
          :dnsName => String.t(),
          :dnssecConfig => GoogleApi.DNS.V1.Model.ManagedZoneDnsSecConfig.t(),
          :id => String.t(),
          :kind => String.t(),
          :labels => map(),
          :name => String.t(),
          :nameServerSet => String.t(),
          :nameServers => list(String.t()),
          :privateVisibilityConfig =>
            GoogleApi.DNS.V1.Model.ManagedZonePrivateVisibilityConfig.t(),
          :visibility => String.t()
        }

  field(:creationTime)
  field(:description)
  field(:dnsName)
  field(:dnssecConfig, as: GoogleApi.DNS.V1.Model.ManagedZoneDnsSecConfig)
  field(:id)
  field(:kind)
  field(:labels, type: :map)
  field(:name)
  field(:nameServerSet)
  field(:nameServers, type: :list)
  field(:privateVisibilityConfig, as: GoogleApi.DNS.V1.Model.ManagedZonePrivateVisibilityConfig)
  field(:visibility)
end

defimpl Poison.Decoder, for: GoogleApi.DNS.V1.Model.ManagedZone do
  def decode(value, options) do
    GoogleApi.DNS.V1.Model.ManagedZone.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.DNS.V1.Model.ManagedZone do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
