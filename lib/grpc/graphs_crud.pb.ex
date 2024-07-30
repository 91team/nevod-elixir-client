defmodule NevodGrpc.Graph do
  @moduledoc false

  use Protobuf, syntax: :proto3, protoc_gen_elixir_version: "0.12.0"

  field :id, 1, type: :uint32
  field :name, 2, type: :string
  field :db_id, 3, type: :uint32, json_name: "dbId"
end

defmodule NevodGrpc.GraphList do
  @moduledoc false

  use Protobuf, syntax: :proto3, protoc_gen_elixir_version: "0.12.0"

  field :data, 1, repeated: true, type: NevodGrpc.Graph
end

defmodule NevodGrpc.GraphInput do
  @moduledoc false

  use Protobuf, syntax: :proto3, protoc_gen_elixir_version: "0.12.0"

  field :name, 1, type: :string
  field :db_id, 2, type: :uint32, json_name: "dbId"
end

defmodule NevodGrpc.GraphDbInput do
  @moduledoc false

  use Protobuf, syntax: :proto3, protoc_gen_elixir_version: "0.12.0"

  field :db_id, 1, type: :uint32, json_name: "dbId"
end

defmodule NevodGrpc.GraphUpdInput do
  @moduledoc false

  use Protobuf, syntax: :proto3, protoc_gen_elixir_version: "0.12.0"

  field :id, 1, type: :uint32
  field :name, 2, type: :string
  field :db_id, 3, type: :uint32, json_name: "dbId"
end