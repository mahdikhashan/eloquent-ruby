require_relative "chapter-1.rb"
require "minitest/autorun"

class DocumentTest < Minitest::Test

  def setup
    @doc = Document.new( 
      'my-title', 
      'my-author', 
      'Content of the book.' 
    )
  end

  def test_attribute
    assert_equal 'my-title', @doc.title
  end

  def test_author_in_attr
    refute_match /^author/i, @doc.author
  end

  def test_words
    assert_equal ['Content', 'of', 'the', 'book.'], @doc.words
  end

  def test_word_count
    assert_equal 4, @doc.word_count
  end

  def test_count_words_in
    assert_equal 2, @doc.count_words_in( 'My Content' )
  end
  
  def test_that_will_be_skipped
    skip 'test it later.'
  end
end
