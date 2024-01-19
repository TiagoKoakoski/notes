# logrotate_service/manifests/init.pp
class logrotate_service (
  String $log_path,
  String $rotation_frequency = 'daily',
  Integer $rotation_count = 15,
  String $log_owner = 'root',
  String $log_group = 'root',
  String $log_permissions = '0644',
) {

  # Instalação do Logrotate
  package { 'logrotate':
    ensure => installed,
  }

  # Configuração do arquivo de logrotate para o serviço
  file { "/etc/logrotate.d/${title}":
    ensure => present,
    source => "puppet:///modules/logrotate_service/logrotate-config",
    owner  => $log_owner,
    group  => $log_group,
    mode   => $log_permissions,
    log_path => $log_path,
    rotation_frequency => $rotation_frequency,
    rotation_count => $rotation_count,
  }

  # Executa o Logrotate diariamente (pode variar dependendo do cron do sistema)
  cron { "logrotate_${title}_daily":
    command => "/usr/sbin/logrotate /etc/logrotate.conf",
    hour    => 2,
    minute  => 0,
  }

}
