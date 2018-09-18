# Logging Messages

require 'logger'
logger = Logger.new(STDOUT)

logger.debug "test"
logger.info "test"
logger.fatal "test"


logger.info("myprog") { "test" }

logger.add(Logger::FATAL) { "message here" }
