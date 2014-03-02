@test "the fpm gem is installed into the chef bundle" {
  run /opt/chef/embedded/bin/gem list | grep fpm
}
