#
# Copyright 2018- adityahilman
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

require "fluent/plugin/input"

module Fluent
  module Plugin
    class CloudwatchLogInput < Fluent::Plugin::Input
      Fluent::Plugin.register_input("cloudwatch_log", self)

      config_param :aws_key, :string, :default => nil, :secret => true
      config_param :aws_secret, :string, :default => nil, :secret => true
      config_param :aws_region, :string, :default => nil, :secret => true

      @aws_region = ENV['aws_region']
      @aws_key = ENV['aws_key']
      @aws_secret = ENV['aws_secret']

      def configure(conf)
      	super

      	require 'aws-sdk-core'
      rescue Load
      end

      if @aws_region.nil?
      	puts "aws region is not found"
      else
      	puts @aws_region
      end

      if @aws_key.nil?
      	puts "aws key is not found"
      else
      	puts @aws_key
      end

      if @aws_secret.nil?
      	puts "aws secret is not found"
      else
      	puts @aws_secret
      end

      	
      
    end
  end
end
