defmodule NevodGrpc.Node.FloatOptsEntry do
  @moduledoc false

  use Protobuf, map: true, syntax: :proto3, protoc_gen_elixir_version: "0.12.0"

  field :key, 1, type: :string
  field :value, 2, type: :float
end

defmodule NevodGrpc.Node.IntOptsEntry do
  @moduledoc false

  use Protobuf, map: true, syntax: :proto3, protoc_gen_elixir_version: "0.12.0"

  field :key, 1, type: :string
  field :value, 2, type: :int64
end

defmodule NevodGrpc.Node.StringOptsEntry do
  @moduledoc false

  use Protobuf, map: true, syntax: :proto3, protoc_gen_elixir_version: "0.12.0"

  field :key, 1, type: :string
  field :value, 2, type: :string
end

defmodule NevodGrpc.Node.BoolOptsEntry do
  @moduledoc false

  use Protobuf, map: true, syntax: :proto3, protoc_gen_elixir_version: "0.12.0"

  field :key, 1, type: :string
  field :value, 2, type: :bool
end

defmodule NevodGrpc.Node.BytesOptsEntry do
  @moduledoc false

  use Protobuf, map: true, syntax: :proto3, protoc_gen_elixir_version: "0.12.0"

  field :key, 1, type: :string
  field :value, 2, type: :bytes
end

defmodule NevodGrpc.Node do
  @moduledoc false

  use Protobuf, syntax: :proto3, protoc_gen_elixir_version: "0.12.0"

  field :id, 1, type: :string

  field :float_opts, 2,
    repeated: true,
    type: NevodGrpc.Node.FloatOptsEntry,
    json_name: "floatOpts",
    map: true

  field :int_opts, 3,
    repeated: true,
    type: NevodGrpc.Node.IntOptsEntry,
    json_name: "intOpts",
    map: true

  field :string_opts, 4,
    repeated: true,
    type: NevodGrpc.Node.StringOptsEntry,
    json_name: "stringOpts",
    map: true

  field :bool_opts, 5,
    repeated: true,
    type: NevodGrpc.Node.BoolOptsEntry,
    json_name: "boolOpts",
    map: true

  field :bytes_opts, 6,
    repeated: true,
    type: NevodGrpc.Node.BytesOptsEntry,
    json_name: "bytesOpts",
    map: true
end

defmodule NevodGrpc.NodesListInput do
  @moduledoc false

  use Protobuf, syntax: :proto3, protoc_gen_elixir_version: "0.12.0"

  field :data, 1, repeated: true, type: NevodGrpc.Node
  field :graph_id, 2, type: :uint32, json_name: "graphId"
end

defmodule NevodGrpc.NodeInput.FloatOptsEntry do
  @moduledoc false

  use Protobuf, map: true, syntax: :proto3, protoc_gen_elixir_version: "0.12.0"

  field :key, 1, type: :string
  field :value, 2, type: :float
end

defmodule NevodGrpc.NodeInput.IntOptsEntry do
  @moduledoc false

  use Protobuf, map: true, syntax: :proto3, protoc_gen_elixir_version: "0.12.0"

  field :key, 1, type: :string
  field :value, 2, type: :int64
end

defmodule NevodGrpc.NodeInput.StringOptsEntry do
  @moduledoc false

  use Protobuf, map: true, syntax: :proto3, protoc_gen_elixir_version: "0.12.0"

  field :key, 1, type: :string
  field :value, 2, type: :string
end

defmodule NevodGrpc.NodeInput.BoolOptsEntry do
  @moduledoc false

  use Protobuf, map: true, syntax: :proto3, protoc_gen_elixir_version: "0.12.0"

  field :key, 1, type: :string
  field :value, 2, type: :bool
end

defmodule NevodGrpc.NodeInput.BytesOptsEntry do
  @moduledoc false

  use Protobuf, map: true, syntax: :proto3, protoc_gen_elixir_version: "0.12.0"

  field :key, 1, type: :string
  field :value, 2, type: :bytes
end

defmodule NevodGrpc.NodeInput do
  @moduledoc false

  use Protobuf, syntax: :proto3, protoc_gen_elixir_version: "0.12.0"

  field :id, 1, type: :string

  field :float_opts, 2,
    repeated: true,
    type: NevodGrpc.NodeInput.FloatOptsEntry,
    json_name: "floatOpts",
    map: true

  field :int_opts, 3,
    repeated: true,
    type: NevodGrpc.NodeInput.IntOptsEntry,
    json_name: "intOpts",
    map: true

  field :string_opts, 4,
    repeated: true,
    type: NevodGrpc.NodeInput.StringOptsEntry,
    json_name: "stringOpts",
    map: true

  field :bool_opts, 5,
    repeated: true,
    type: NevodGrpc.NodeInput.BoolOptsEntry,
    json_name: "boolOpts",
    map: true

  field :bytes_opts, 6,
    repeated: true,
    type: NevodGrpc.NodeInput.BytesOptsEntry,
    json_name: "bytesOpts",
    map: true

  field :graph_id, 7, type: :uint32, json_name: "graphId"
end

defmodule NevodGrpc.NodeList do
  @moduledoc false

  use Protobuf, syntax: :proto3, protoc_gen_elixir_version: "0.12.0"

  field :data, 1, repeated: true, type: NevodGrpc.Node
end

defmodule NevodGrpc.NodeGraphInput do
  @moduledoc false

  use Protobuf, syntax: :proto3, protoc_gen_elixir_version: "0.12.0"

  field :graph_id, 1, type: :uint32, json_name: "graphId"
end

defmodule NevodGrpc.NodeGraphIdInput do
  @moduledoc false

  use Protobuf, syntax: :proto3, protoc_gen_elixir_version: "0.12.0"

  field :graph_id, 1, type: :uint32, json_name: "graphId"
  field :id, 2, type: :string
end