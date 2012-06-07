require "yaml"
require "mustache"

module WeibosdkJruby
  module Config
    def self.load
      config_template_path = File.expand_path(File.dirname(__FILE__) + "/../../config_template/config.properies.erb")
      log4j_config_template_path = File.expand_path(File.dirname(__FILE__) + "/../../config_template/log4j.properties.erb")
      # config_yml_path = File.expand_path(Rails.root + "config/weibosdk.yml")
      config_yml_path = File.expand_path(File.dirname(__FILE__) + "/../../weibosdk.yml")
      weibosdk_path = File.expand_path(File.dirname(__FILE__) + "/../../weibosdk")

      hash = YAML.load_stream(open(config_yml_path))[0]['development']
      if hash
        File.open(weibosdk_path + "/config.properties", "w") { |f| f.puts Mustache.render(File.read(config_template_path), hash) }
        File.open(weibosdk_path + "/log4j.properties", "w") { |f| f.puts Mustache.render(File.read(log4j_config_template_path), hash) }
      end
    end
  end
end
