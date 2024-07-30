defmodule NevodGrpc.KHopMode do
  @moduledoc false

  use Protobuf, enum: true, syntax: :proto3, protoc_gen_elixir_version: "0.12.0"

  field :IN, 0
  field :OUT, 1
  field :ALL, 2
end

defmodule NevodGrpc.KHopeResult do
  @moduledoc false

  use Protobuf, syntax: :proto3, protoc_gen_elixir_version: "0.12.0"

  field :nodes, 1, repeated: true, type: NevodGrpc.Node
  field :links, 2, repeated: true, type: NevodGrpc.Link
end

defmodule NevodGrpc.CountResult do
  @moduledoc false

  use Protobuf, syntax: :proto3, protoc_gen_elixir_version: "0.12.0"

  field :count, 1, type: :uint32
end

defmodule NevodGrpc.KHopInput do
  @moduledoc false

  use Protobuf, syntax: :proto3, protoc_gen_elixir_version: "0.12.0"

  field :graph_id, 1, type: :uint32, json_name: "graphId"
  field :id, 2, type: :string
  field :k, 3, type: :uint32
  field :mode, 4, type: NevodGrpc.KHopMode, enum: true
end

defmodule NevodGrpc.GetCyclesInput do
  @moduledoc false

  use Protobuf, syntax: :proto3, protoc_gen_elixir_version: "0.12.0"

  field :graph_id, 1, type: :uint32, json_name: "graphId"
  field :id, 2, type: :string
  field :links_limit, 3, type: :uint32, json_name: "linksLimit"
end