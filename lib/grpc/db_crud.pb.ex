defmodule NevodGrpc.Db do
  @moduledoc false

  use Protobuf, syntax: :proto3, protoc_gen_elixir_version: "0.12.0"

  field :id, 1, type: :uint32
  field :name, 2, type: :string
end

defmodule NevodGrpc.DbList do
  @moduledoc false

  use Protobuf, syntax: :proto3, protoc_gen_elixir_version: "0.12.0"

  field :data, 1, repeated: true, type: NevodGrpc.Db
end

defmodule NevodGrpc.DbInput do
  @moduledoc false

  use Protobuf, syntax: :proto3, protoc_gen_elixir_version: "0.12.0"

  field :name, 1, type: :string
end