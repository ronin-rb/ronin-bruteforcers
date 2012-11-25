#
# Ronin Bruteforcers - A Ruby library for Ronin that provides various
# bruteforcers.
#
# Copyright (c) 2011-2012 Hal Brodigan (postmodern.mod3 at gmail.com)
#
# This program is free software; you can redistribute it and/or modify
# it under the terms of the GNU General Public License as published by
# the Free Software Foundation; either version 2 of the License, or
# (at your option) any later version.
#
# This program is distributed in the hope that it will be useful,
# but WITHOUT ANY WARRANTY; without even the implied warranty of
# MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
# GNU General Public License for more details.
#
# You should have received a copy of the GNU General Public License
# along with this program; if not, write to the Free Software
# Foundation, Inc., 51 Franklin St, Fifth Floor, Boston, MA  02110-1301  USA
#

require 'ronin/ui/cli/script_command'
require 'ronin/bruteforcers/bruteforcer'

module Ronin
  module UI
    module CLI
      module Commands
        class Bruteforcer < ScriptCommand

          summary 'Loads and runs a bruteforcer'

          script_class Ronin::Bruteforcers::Bruteforcer

          # scanner options
          option :first, :type => true, :flag => '-N'
          option :import, :type => true, :flag => '-I'

          def execute
            if @import
              bruteforce_method = if @first then :import_credential
                                  else           :import_credentials
                                  end

              formatter = lambda { |credential| credential.to_ary.join("\t") }
            else
              bruteforce_method = if @first then :bruteforce
                                  else           :bruteforce_all
                                  end

              formatter = lambda { |*credentials| credentials.join("\t") }
            end

            print_info "Bruteforcing ..."

            @script.send(bruteforce_method) do |*credentials|
              print_info "Found: #{formatter[*credentials]}"
            end

            print_info "Bruteforce complete."
          end

        end
      end
    end
  end
end
