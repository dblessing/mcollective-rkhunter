# Rkhunter Application/Client

class MCollective::Application::Rkhunter<MCollective::Application

  description "An application to interact with Rkhunter agent"

  usage <<END_OF_USAGE
mco rkhunter [OPTIONS] [FILTERS] <ACTION>

The ACTION can be one of the following:

  propupd - run rkhunter with the --propupd flag
END_OF_USAGE

  def post_option_parser(configuration)
    if ARGV.length >= 1
      configuration[:command] = ARGV.shift
    end
  end

  def client
    @client ||= rpcclient("rkhunter")
  end

  def propupd_command
    results = client.propupd
    status  = results[:body][:data][:status]
    err     = results[:body][:data][:err]

    if status != 0
      printf("Propupd error: %s\n", err)
    end

    halt client.stats
  end

  def main
    impl_method = "%s_command" % configuration[:command]

    if respond_to?(impl_method)
      send(impl_method)
    else
      raise "Do not know how to handle the '%s' command" % [configuration[:command]]
    end
  end
end
