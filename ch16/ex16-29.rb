# logger

# Setting Up a Logger

require 'logger'
logger = Logger.new(STDERR)

logger = Logger.new('mylogfile.log')
logger = Logger.new('/tmp/some_log_file.log')


logger = Logger.new('mylogfile.log', 'daily')
logger = Logger.new('mylogfile.log', 'weekly')
logger = Logger.new('mylogfile.log', 'monthly')


logger = Logger.new('mylogfile.log', 10, 100000)
