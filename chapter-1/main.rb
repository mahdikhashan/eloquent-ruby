require_relative 'chapter-1.rb'

document = Document.new('my-title', 'my-author', 'content is king')
puts document.words()

document.author = 'Mahdi Khashan'
puts document.author

words_count = document.count_words_in('Mahdi Khashan is the author of the books.')
puts words_count

document.faulty_method()
