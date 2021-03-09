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

defmodule GoogleApi.Blogger.V3.Model.BlogList do
  @moduledoc """


  ## Attributes

  *   `blogUserInfos` (*type:* `list(GoogleApi.Blogger.V3.Model.BlogUserInfo.t)`, *default:* `nil`) - Admin level list of blog per-user information.
  *   `items` (*type:* `list(GoogleApi.Blogger.V3.Model.Blog.t)`, *default:* `nil`) - The list of Blogs this user has Authorship or Admin rights over.
  *   `kind` (*type:* `String.t`, *default:* `nil`) - The kind of this entity. Always blogger#blogList.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :blogUserInfos => list(GoogleApi.Blogger.V3.Model.BlogUserInfo.t()) | nil,
          :items => list(GoogleApi.Blogger.V3.Model.Blog.t()) | nil,
          :kind => String.t() | nil
        }

  field(:blogUserInfos, as: GoogleApi.Blogger.V3.Model.BlogUserInfo, type: :list)
  field(:items, as: GoogleApi.Blogger.V3.Model.Blog, type: :list)
  field(:kind)
end

defimpl Poison.Decoder, for: GoogleApi.Blogger.V3.Model.BlogList do
  def decode(value, options) do
    GoogleApi.Blogger.V3.Model.BlogList.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Blogger.V3.Model.BlogList do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
