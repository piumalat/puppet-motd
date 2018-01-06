class motd::install {
 file { 'motd_file':
   ensure  => file,
   owner   => 'root',
   group   => 'root',
   mode    => '0755',
   path    => '/etc/motd',
   content => template("${module_name}/motd.erb"),
 }
}
