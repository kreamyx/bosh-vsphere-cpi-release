require 'forwardable'
require 'set'

module VSphereCloud
  # A {RegexpSet} is a `Set` that also behaves like a `Regexp`. When used as a
  # `Regexp` is acts as the union of its members.
  class RegexpSet < Set
    extend Forwardable

    def_delegators :to_regexp, :===, :=~, :encoding, :fixed_encoding?, :match,
                   :match?, :source, :~

    def to_regexp
      Regexp.union(map do |object|
        Regexp.try_convert(object) || /\A#{Regexp.escape(String(object))}\Z/u
      end)
    end
  end
end
