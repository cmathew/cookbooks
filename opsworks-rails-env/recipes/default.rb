Chef::Log.info("Create .env file")

node[:deploy].each do |application, deploy|
  dot_env_template do
    deploy_to deploy[:deploy_to]
    owner deploy[:user]
    group deploy[:group]
    environment_variables deploy[:environment_variables]
  end
end