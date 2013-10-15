# Ensure our directories exist
include_recipe 'geminabox::geminabox'

# Load up the monitoring
if(node[:geminabox][:bluepill] || :this_is_all_we_support)
  include_recipe 'geminabox::bluepill'
end

# Setup the frontend
if(node[:geminabox][:nginx] || :this_is_all_we_support_now)
  include_recipe 'geminabox::nginx'
end

# Configure up server instance
if(node[:geminabox][:unicorn] || :this_is_all_we_support)
  include_recipe 'geminabox::unicorn'
end
