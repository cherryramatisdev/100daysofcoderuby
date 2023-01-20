# frozen_string_literal: true
# typed: true

extend T::Sig

sig { params(url: String).returns(T.untyped) }
def get(url); end
