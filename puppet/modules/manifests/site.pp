# site.pp

node 'your_node_name' {
  class { 'proxy_config':
    proxy_address => 'seu_proxy',
    proxy_port    => 8080,
  }
}

node 'seu_nodo' {
  class { 'logrotate_service':
    title              => 'kibana',
    log_path           => '/var/log/kibana/*.log',
    rotation_frequency => 'daily',
    rotation_count     => 15,
    log_owner          => 'kibana',
    log_group          => 'kibana',
    log_permissions    => '0640',
  }
}