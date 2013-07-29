


node.save

node_cached = search(:node, "name:#{node.name} AND chef_environment:#{node.chef_environment}")
sttime=Time.now.to_f
while node_cached.roles.empty? || node_cached.roles.nil?
  if (Time.now.to_f-sttime)>=60
    Chef::Log.error "Timeout exceeded while node have been indexed.."
    exit 1
  else
    Chef::Log.info "Waiting until node #{node.name} indexing."
    sleep 5
    node_cached = search(:node, "name:#{node.name} AND chef_environment:#{node.chef_environment}")
  end
end
