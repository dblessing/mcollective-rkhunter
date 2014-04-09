module MCollective
  module Agent
    class Rkhunter<RPC::Agent
      activate_when do
        File.executable?("/usr/bin/rkhunter")
      end

      action "propupd" do
        reply[:status] = run("/usr/bin/rkhunter --propupd", :stdout => :out, :stderr => :err)
      end
    end
  end
end
