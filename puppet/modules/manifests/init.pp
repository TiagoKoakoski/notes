# modules/proxy_config/manifests/init.pp

class proxy_config (
  String $proxy_address,
  Integer $proxy_port,
) {

  file { '/etc/environment':
    content => template('proxy_config/proxy.erb'),
  }
}