require 'ruboty/brain_dictionary/actions/brain_dictionary_helper'

module Ruboty
  module BrainDictionary
    module Actions
      class Forget < Ruboty::Actions::Base
        def call
          message.reply(forget)
        end

        private

        def forget
          dict = BrainDictionaryHelper.dictionary(message.robot)
          key = message[:key]
          ret = dict.delete(key)
          ret.nil? ? "no key '#{key}'" : "success delete key '#{key}'"
        rescue => e
          e.message
        end
      end
    end
  end
end
