metadata    :name        => "rkhunter",
            :description => "Utility to assist in the update/management of rkhunter",
            :author      => "Drew A. Blessing <drew.blessing@mac.com>",
            :license     => "MIT",
            :version     => "0.1",
            :url         => "http://github.com/dblessing/mcollective-rkhunter"
            :timeout     => 15

action "propupd", :description => "Runs rkhunter with the --propupd flag" do
  output  :status,
          :description  => "The status from the rkhunter command",
          :display_as   => "Command Status",
          :default      => "unknown status"

  output  :out,
          :description  => "The output from the rkhunter command",
          :display_as   => "Command Output",
          :default      => "unknown output"

  output  :err,
          :description  => "The error output from the rkhunter command",
          :display_as   => "Command Error Output",
          :default      => "unknown error output"
end
