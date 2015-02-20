require 'ruboty/brain_dictionary/actions/brain_dictionary_helper'

module Ruboty
  module BrainDictionary
    module Actions
      class Remember < Ruboty::Actions::Base
        def call
          message.reply(remember)
        end

        private

        def remember
          dict = BrainDictionaryHelper.dictionary(message.robot)
          key = message[:key]
          ret = (key.nil? || key.empty?) ? dict : dict.select { |k, v|k.include?(key) }
          ret.sort.map { |k, v| "#{k},#{v}" }.join("\n")
        rescue => e
          e.message
        end
      end
    end
  end
end
