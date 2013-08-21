$:.unshift (File.dirname(__FILE__))
require 'lib/Search_sc'

prompt = SearchSc.new

prompt.welcome
prompt.search
prompt.display_query
prompt.continue_search

