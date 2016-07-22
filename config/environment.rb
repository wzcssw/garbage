# Load the Rails application.
require File.expand_path('../application', __FILE__)

require 'will_paginate'


# Initialize the Rails application.
Rails.application.initialize!
# will_paginate custom label
WillPaginate::ViewHelpers.pagination_options[:previous_label] = '«'
WillPaginate::ViewHelpers.pagination_options[:next_label] = '»'
