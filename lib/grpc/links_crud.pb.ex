defmodule NevodGrpc.DirectionType do
  @moduledoc false

  use Protobuf, enum: true, syntax: :proto3, protoc_gen_elixir_version: "0.12.0"

  field :ONEWAY, 0
  field :BOTHWAYS, 1
end

defmodule NevodGrpc.Link.FloatOptsEntry do
  @moduledoc false

  use Protobuf, map: true, syntax: :proto3, protoc_gen_elixir_version: "0.12.0"

  field :key, 1, type: :string
  field :value, 2, type: :float
end

defmodule NevodGrpc.Link.IntOptsEntry do
  @moduledoc false

  use Protobuf, map: true, syntax: :proto3, protoc_gen_elixir_version: "0.12.0"

  field :key, 1, type: :string
  field :value, 2, type: :int64
end

defmodule NevodGrpc.Link.StringOptsEntry do
  @moduledoc false

  use Protobuf, map: true, syntax: :proto3, protoc_gen_elixir_version: "0.12.0"

  field :key, 1, type: :string
  field :value, 2, type: :string
end

defmodule NevodGrpc.Link.BoolOptsEntry do
  @moduledoc false

  use Protobuf, map: true, syntax: :proto3, protoc_gen_elixir_version: "0.12.0"

  field :key, 1, type: :string
  field :value, 2, type: :bool
end

defmodule NevodGrpc.Link.BytesOptsEntry do
  @moduledoc false

  use Protobuf, map: true, syntax: :proto3, protoc_gen_elixir_version: "0.12.0"

  field :key, 1, type: :string
  field :value, 2, type: :bytes
end

defmodule NevodGrpc.Link do
  @moduledoc false

  use Protobuf, syntax: :proto3, protoc_gen_elixir_version: "0.12.0"

  field :from_node_id, 1, type: :string, json_name: "fromNodeId"
  field :to_node_id, 2, type: :string, json_name: "toNodeId"
  field :dir_type, 3, type: NevodGrpc.DirectionType, json_name: "dirType", enum: true

  field :float_opts, 4,
    repeated: true,
    type: NevodGrpc.Link.FloatOptsEntry,
    json_name: "floatOpts",
    map: true

  field :int_opts, 5,
    repeated: true,
    type: NevodGrpc.Link.IntOptsEntry,
    json_name: "intOpts",
    map: true

  field :string_opts, 6,
    repeated: true,
    type: NevodGrpc.Link.StringOptsEntry,
    json_name: "stringOpts",
    map: true

  field :bool_opts, 7,
    repeated: true,
    type: NevodGrpc.Link.BoolOptsEntry,
    json_name: "boolOpts",
    map: true

  field :bytes_opts, 8,
    repeated: true,
    type: NevodGrpc.Link.BytesOptsEntry,
    json_name: "bytesOpts",
    map: true

  field :id, 9, type: :uint32
end

defmodule NevodGrpc.LinksListInput do
  @moduledoc false

  use Protobuf, syntax: :proto3, protoc_gen_elixir_version: "0.12.0"

  field :data, 1, repeated: true, type: NevodGrpc.Link
  field :graph_id, 2, type: :uint32, json_name: "graphId"
end

defmodule NevodGrpc.LinkInput.FloatOptsEntry do
  @moduledoc false

  use Protobuf, map: true, syntax: :proto3, protoc_gen_elixir_version: "0.12.0"

  field :key, 1, type: :string
  field :value, 2, type: :float
end

defmodule NevodGrpc.LinkInput.IntOptsEntry do
  @moduledoc false

  use Protobuf, map: true, syntax: :proto3, protoc_gen_elixir_version: "0.12.0"

  field :key, 1, type: :string
  field :value, 2, type: :int64
end

defmodule NevodGrpc.LinkInput.StringOptsEntry do
  @moduledoc false

  use Protobuf, map: true, syntax: :proto3, protoc_gen_elixir_version: "0.12.0"

  field :key, 1, type: :string
  field :value, 2, type: :string
end

defmodule NevodGrpc.LinkInput.BoolOptsEntry do
  @moduledoc false

  use Protobuf, map: true, syntax: :proto3, protoc_gen_elixir_version: "0.12.0"

  field :key, 1, type: :string
  field :value, 2, type: :bool
end

defmodule NevodGrpc.LinkInput.BytesOptsEntry do
  @moduledoc false

  use Protobuf, map: true, syntax: :proto3, protoc_gen_elixir_version: "0.12.0"

  field :key, 1, type: :string
  field :value, 2, type: :bytes
end

defmodule NevodGrpc.LinkInput do
  @moduledoc false

  use Protobuf, syntax: :proto3, protoc_gen_elixir_version: "0.12.0"

  field :dir_type, 1, type: NevodGrpc.DirectionType, json_name: "dirType", enum: true

  field :float_opts, 2,
    repeated: true,
    type: NevodGrpc.LinkInput.FloatOptsEntry,
    json_name: "floatOpts",
    map: true

  field :int_opts, 3,
    repeated: true,
    type: NevodGrpc.LinkInput.IntOptsEntry,
    json_name: "intOpts",
    map: true

  field :string_opts, 4,
    repeated: true,
    type: NevodGrpc.LinkInput.StringOptsEntry,
    json_name: "stringOpts",
    map: true

  field :bool_opts, 5,
    repeated: true,
    type: NevodGrpc.LinkInput.BoolOptsEntry,
    json_name: "boolOpts",
    map: true

  field :bytes_opts, 6,
    repeated: true,
    type: NevodGrpc.LinkInput.BytesOptsEntry,
    json_name: "bytesOpts",
    map: true

  field :graph_id, 7, type: :uint32, json_name: "graphId"
  field :id, 8, type: :uint32
end

defmodule NevodGrpc.LinkList do
  @moduledoc false

  use Protobuf, syntax: :proto3, protoc_gen_elixir_version: "0.12.0"

  field :data, 1, repeated: true, type: NevodGrpc.Link
end

defmodule NevodGrpc.LinkGraphInput do
  @moduledoc false

  use Protobuf, syntax: :proto3, protoc_gen_elixir_version: "0.12.0"

  field :graph_id, 1, type: :uint32, json_name: "graphId"
end

defmodule NevodGrpc.LinkGraphIdInput do
  @moduledoc false

  use Protobuf, syntax: :proto3, protoc_gen_elixir_version: "0.12.0"

  field :graph_id, 1, type: :uint32, json_name: "graphId"
  field :id, 2, type: :uint32
end