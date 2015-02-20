require 'ruboty/brain_dictionary/actions/brain_dictionary_helper'

module Ruboty
  module BrainDictionary
    module Actions
      class Dict < Ruboty::Actions::Base
        def call
          dict_message = dict
          return if dict_message.empty?
          message.reply(dict_message)
        end

        private

        def dict
          d = BrainDictionaryHelper.dictionary(message.robot)
          key = message[:key]
          return if (key.nil? || key.empty?)
          d.key?(key) ? d[key] : ''
        rescue => e
          e.message
        end
      end
    end
  end
end
