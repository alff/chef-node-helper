# Cookbook Name:: chef-node-handlet
# Recipe:: common
#
# Copyright 2013, Mirantis IT
# Copyryght 2013, Alex Khalkuziev <master.alff@gmail.com>
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#


node.save

node_cached = search(:node, "name:#{node.name} AND chef_environment:#{node.chef_environment}")[0]
sttime=Time.now.to_f
until node_cached && node_cached["roles"].size >0
  if (Time.now.to_f-sttime)>=60
    Chef::Log.error "Timeout exceeded while node have been indexed.."
    exit 1
  else
    Chef::Log.info "Waiting until node #{node.name} indexing."
    sleep 5
    node_cached = search(:node, "name:#{node.name} AND chef_environment:#{node.chef_environment}")
  end
end
