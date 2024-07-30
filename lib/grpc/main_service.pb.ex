defmodule NevodGrpc.Service.Service do
  @moduledoc false

  use GRPC.Service, name: "nevod_grpc.Service", protoc_gen_elixir_version: "0.12.0"

  rpc :ping, NevodGrpc.EmptyInput, NevodGrpc.EmptyRes

  rpc :create_db, NevodGrpc.DbInput, NevodGrpc.Db

  rpc :update_db, NevodGrpc.Db, NevodGrpc.Db

  rpc :read_db, NevodGrpc.EmptyInput, NevodGrpc.DbList

  rpc :delete_db, NevodGrpc.IdInput, NevodGrpc.EmptyRes

  rpc :create_graph, NevodGrpc.GraphInput, NevodGrpc.Graph

  rpc :update_graph, NevodGrpc.GraphUpdInput, NevodGrpc.Graph

  rpc :read_graphs, NevodGrpc.GraphDbInput, NevodGrpc.GraphList

  rpc :delete_graph, NevodGrpc.IdInput, NevodGrpc.EmptyRes

  rpc :create_nodes, NevodGrpc.NodesListInput, NevodGrpc.EmptyRes

  rpc :update_node, NevodGrpc.NodeInput, NevodGrpc.Node

  rpc :read_nodes, NevodGrpc.NodeGraphInput, NevodGrpc.NodeList

  rpc :get_node, NevodGrpc.NodeGraphIdInput, NevodGrpc.Node

  rpc :delete_node, NevodGrpc.NodeGraphIdInput, NevodGrpc.EmptyRes

  rpc :create_links, NevodGrpc.LinksListInput, NevodGrpc.EmptyRes

  rpc :update_link, NevodGrpc.LinkInput, NevodGrpc.Link

  rpc :read_links, NevodGrpc.LinkGraphInput, NevodGrpc.LinkList

  rpc :get_link, NevodGrpc.LinkGraphIdInput, NevodGrpc.Link

  rpc :delete_link, NevodGrpc.LinkGraphIdInput, NevodGrpc.EmptyRes

  rpc :get_in_links_count, NevodGrpc.NodeGraphIdInput, NevodGrpc.CountResult

  rpc :get_out_links_count, NevodGrpc.NodeGraphIdInput, NevodGrpc.CountResult

  rpc :get_all_links_count, NevodGrpc.NodeGraphIdInput, NevodGrpc.CountResult

  rpc :get_in_links, NevodGrpc.NodeGraphIdInput, NevodGrpc.LinkList

  rpc :get_out_links, NevodGrpc.NodeGraphIdInput, NevodGrpc.LinkList

  rpc :get_all_links, NevodGrpc.NodeGraphIdInput, NevodGrpc.LinkList

  rpc :get_k_hop, NevodGrpc.KHopInput, NevodGrpc.KHopeResult

  rpc :get_cycles, NevodGrpc.GetCyclesInput, NevodGrpc.PathesResult

  rpc :get_shortest_path, NevodGrpc.TwoNodesInput, NevodGrpc.PathResult

  rpc :get_all_shortest_pathes, NevodGrpc.TwoNodesInput, NevodGrpc.PathesResult

  rpc :get_two_minimal_pathes, NevodGrpc.TwoNodesInput, NevodGrpc.PathesResult

  rpc :get_minimal_common_neighbours,
      NevodGrpc.CommonNeighboursInput,
      NevodGrpc.CommonNeighboursResult

  rpc :get_max_stream, NevodGrpc.TwoNodesInput, NevodGrpc.PathResult

  rpc :get_minimum_price_stream, NevodGrpc.TwoNodesInput, NevodGrpc.PathResult

  rpc :get_travelling_salesman_path, NevodGrpc.NNodesInput, NevodGrpc.PathResult

  rpc :get_is_clique, NevodGrpc.NNodesInput, NevodGrpc.BoolRes

  rpc :get_is_connectivity_area, NevodGrpc.NNodesInput, NevodGrpc.BoolRes

  rpc :get_minimal_cut, NevodGrpc.NNodesInput, NevodGrpc.NodeList

  rpc :get_topo_sort, NevodGrpc.NNodesInput, NevodGrpc.NodeList

  rpc :get_median, NevodGrpc.NNodesInput, NevodGrpc.Node

  rpc :get_isomorphs, NevodGrpc.NNodesInput, NevodGrpc.IsomorphsResult
end

defmodule NevodGrpc.Service.Stub do
  @moduledoc false

  use GRPC.Stub, service: NevodGrpc.Service.Service
end