# frozen_string_literal: true
# typed: true

extend T::Sig

def params; end
sig { params(kwargs: T.untyped).returns(T.untyped) }
def content_type(*kwargs); end
