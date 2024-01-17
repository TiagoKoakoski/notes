# site.pp

node 'your_node_name' {
  class { 'proxy_config':
    proxy_address => 'seu_proxy',
    proxy_port    => 8080,
  }
}