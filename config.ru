# config.ru
require 'zeitwerk'

loader = Zeitwerk::Loader.new
loader.push_dir(File.expand_path('lib'))
loader.setup

require File.expand_path('./lib/api/v1/controller/application_controller', __dir__)

run CqrsExercise
