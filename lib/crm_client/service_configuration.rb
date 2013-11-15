module CrmClient
  module ServiceConfiguration
    def self.included(base)
      base.send('use_hydra', Crm::HYDRA)
      #base.send('force_ssl')
      base.send('set_resource_host', Crm::HOST)
      base.send('configure_index_response', {collection: 'collection', total: 'total'})
    end
  end
end