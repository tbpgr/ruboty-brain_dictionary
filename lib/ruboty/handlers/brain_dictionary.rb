require 'ruboty/brain_dictionary/actions/learn'
require 'ruboty/brain_dictionary/actions/remember'
require 'ruboty/brain_dictionary/actions/dict'
require 'ruboty/brain_dictionary/actions/forget'

module Ruboty
  module Handlers
    class BrainDictionary < Base
      on(/learn\s{1}(?<key>.+)?\s{1}(?<value>.+)?\z/,
        name: 'learn',
        description: 'learn key-value'
      )
      on(/remember\s{0,1}(?<key>.+)?\z/,
        name: 'remember',
        description: 'remember your ruboty brain_dictionary that match with your keys.'
      )
      on(/dict\s{1}(?<key>.+)?\z/,
         name: 'dict',
         description: 'show your value from brain.',
         all: true
      )
      on(/forget\s{0,1}(?<key>.+)?\z/,
        name: 'forget',
        description: 'forget your ruboty brain_dictionary that match with your key.'
      )

      def learn(message)
        Ruboty::BrainDictionary::Actions::Learn.new(message).call
      end

      def remember(message)
        Ruboty::BrainDictionary::Actions::Remember.new(message).call
      end

      def dict(message)
        Ruboty::BrainDictionary::Actions::Dict.new(message).call
      end

      def forget(message)
        Ruboty::BrainDictionary::Actions::Forget.new(message).call
      end
    end
  end
end
