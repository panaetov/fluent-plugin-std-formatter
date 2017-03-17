require 'fluent/formatter'

module Fluent
  module TextFormatter
    class IvideonLogsFormatter < Formatter
      Plugin.register_formatter("formatter_std", self)

      def format(tag, time, record)
        if record["stack_trace"] == "None"
            maybe_tb = ""
        else
            maybe_tb = "%s\n" % [record["stack_trace"]]
        end

        return "[%s][%s][%s][%s][pid=%s]: %s\n%s" % [
            record["time_"],
            record["level"],
            record["host"],
            record["module_"],
            record["pid"],
            record["raw"],
            maybe_tb
        ]
      end
    end
  end
end
