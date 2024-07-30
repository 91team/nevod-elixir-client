defmodule NevodGrpc.PathIdType do
  @moduledoc false

  use Protobuf, enum: true, syntax: :proto3, protoc_gen_elixir_version: "0.12.0"

  field :NODE, 0
  field :LINK, 1
end

defmodule NevodGrpc.EmptyInput do
  @moduledoc false

  use Protobuf, syntax: :proto3, protoc_gen_elixir_version: "0.12.0"

  field :empty, 1, type: :string
end

defmodule NevodGrpc.EmptyRes do
  @moduledoc false

  use Protobuf, syntax: :proto3, protoc_gen_elixir_version: "0.12.0"

  field :ok, 1, type: :string
end

defmodule NevodGrpc.IdInput do
  @moduledoc false

  use Protobuf, syntax: :proto3, protoc_gen_elixir_version: "0.12.0"

  field :id, 1, type: :uint32
end

defmodule NevodGrpc.PathesResult do
  @moduledoc false

  use Protobuf, syntax: :proto3, protoc_gen_elixir_version: "0.12.0"

  field :nodes, 1, repeated: true, type: NevodGrpc.Node
  field :links, 2, repeated: true, type: NevodGrpc.Link
  field :pathes, 3, repeated: true, type: NevodGrpc.Path
end

defmodule NevodGrpc.PathResult do
  @moduledoc false

  use Protobuf, syntax: :proto3, protoc_gen_elixir_version: "0.12.0"

  field :nodes, 1, repeated: true, type: NevodGrpc.Node
  field :links, 2, repeated: true, type: NevodGrpc.Link
  field :path, 3, type: NevodGrpc.Path
end

defmodule NevodGrpc.Path do
  @moduledoc false

  use Protobuf, syntax: :proto3, protoc_gen_elixir_version: "0.12.0"

  field :ids, 1, repeated: true, type: NevodGrpc.PathId
end

defmodule NevodGrpc.PathId do
  @moduledoc false

  use Protobuf, syntax: :proto3, protoc_gen_elixir_version: "0.12.0"

  field :id_type, 1, type: NevodGrpc.PathIdType, json_name: "idType", enum: true
  field :node_id, 2, type: :string, json_name: "nodeId"
  field :link_id, 3, type: :uint32, json_name: "linkId"
end

defmodule NevodGrpc.BoolRes do
  @moduledoc false

  use Protobuf, syntax: :proto3, protoc_gen_elixir_version: "0.12.0"

  field :res, 1, type: :bool
end