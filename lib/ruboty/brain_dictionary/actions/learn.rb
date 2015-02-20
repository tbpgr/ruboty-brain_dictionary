require 'ruboty/brain_dictionary/actions/brain_dictionary_helper'

module Ruboty
  module BrainDictionary
    module Actions
      class Learn < Ruboty::Actions::Base
        def call
          message.reply(learn)
        end

        private

        def learn
          dict = BrainDictionaryHelper.dictionary(message.robot)
          key = message[:key]
          dict[key] = message[:value]
          "I learn #{key}:#{message[:value]}"
        rescue => e
          e.message
        end
      end
    end
  end
end
