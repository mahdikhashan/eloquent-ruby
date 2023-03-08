# Author: Mahdi Khashan
# Copyright 2023 MIT
#
# Document: an example ruby class
#
# class that models a plain text document, complete with title and author
# 
# doc = Document.new( 'Contentology', 'Mr Author', 'Content is king.' )
# puts doc.title
# puts doc.author
# puts doc.content
#
# Document instances know how to parse their content into words/
#
# puts doc.words
# puts doc.word_count
#
class Document
  attr_accessor :title, :author, :content

  def initialize(title, author, content)
    @title = title
    @author = author
    @content = content
  end

  def title new_title
    unless @read_only
      @title = new_title
    end
  end

  def words
    @content.split
  end

  def faulty_method
    begin
      raise DocumentException.new "error"
    rescue DocumentException => e
      puts e
    end
  end

  def word_count
    words.size
  end

  def count_words_in string
    words = string.split
    words.size
  end
end

class DocumentException < Exception; end
