defmodule NevodGrpc.TwoNodesInput do
  @moduledoc false

  use Protobuf, syntax: :proto3, protoc_gen_elixir_version: "0.12.0"

  field :graph_id, 1, type: :uint32, json_name: "graphId"
  field :node1_id, 2, type: :string, json_name: "node1Id"
  field :node2_id, 3, type: :string, json_name: "node2Id"
  field :links_limit, 4, type: :uint32, json_name: "linksLimit"
end

defmodule NevodGrpc.CommonNeighboursInput do
  @moduledoc false

  use Protobuf, syntax: :proto3, protoc_gen_elixir_version: "0.12.0"

  field :graph_id, 1, type: :uint32, json_name: "graphId"
  field :node1_id, 2, type: :string, json_name: "node1Id"
  field :node2_id, 3, type: :string, json_name: "node2Id"
  field :links_limit, 4, type: :uint32, json_name: "linksLimit"
  field :mode, 5, type: NevodGrpc.KHopMode, enum: true
end

defmodule NevodGrpc.CommonNeighboursResult do
  @moduledoc false

  use Protobuf, syntax: :proto3, protoc_gen_elixir_version: "0.12.0"

  field :nodes, 1, repeated: true, type: NevodGrpc.Node
  field :links, 2, repeated: true, type: NevodGrpc.Link
  field :neighbour_ids, 3, repeated: true, type: :string, json_name: "neighbourIds"
  field :pathes, 4, repeated: true, type: NevodGrpc.Path
end