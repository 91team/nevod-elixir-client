defmodule NevodGrpc.NNodesInput do
  @moduledoc false

  use Protobuf, syntax: :proto3, protoc_gen_elixir_version: "0.12.0"

  field :graph_id, 1, type: :uint32, json_name: "graphId"
  field :node_ids, 2, repeated: true, type: :string, json_name: "nodeIds"
end

defmodule NevodGrpc.IsomorphsResult do
  @moduledoc false

  use Protobuf, syntax: :proto3, protoc_gen_elixir_version: "0.12.0"

  field :isomorphs, 1, repeated: true, type: NevodGrpc.Isomorph
end

defmodule NevodGrpc.Isomorph do
  @moduledoc false

  use Protobuf, syntax: :proto3, protoc_gen_elixir_version: "0.12.0"

  field :nodes, 1, repeated: true, type: NevodGrpc.Node
  field :links, 2, repeated: true, type: NevodGrpc.Link
end