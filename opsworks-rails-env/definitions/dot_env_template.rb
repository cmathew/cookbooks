define :dot_env_template do
  template "#{params[:deploy_to]}/.env" do
    source ".env.erb"
    owner params[:user]
    group params[:group]
    mode "0660"
    variables :env => params[:environment_variables]
  end
end