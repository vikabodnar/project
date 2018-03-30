require File.expand_path(File.dirname(__FILE__) + '/neo')


def my_method(n,m) #my method
  n==m
end



class MyKoan < Neo::Koan

  
def test_my_method    #Testing my method
    assert_equal false, my_method(3,10)
  end


  def my_array #Testing the array
    mas = Array.new
    assert_equal [], mas

    array[0] = 10
    assert_equal [10], mas

    array[1] = 335
    assert_equal [1, 335], mas

    array[2] = 650
    assert_equal [1, 335, 650], mas

    array << 102
    assert_equal [1, 2, 650, 102] , mas
  end


  def my_strings #Testing the strings
    ques = "What's your name?"
    q = ques
    sent = " My name is Victoria!"
    q << sent
    assert_equal "What's your name? My name is Victoria!", q
  end


  def test_while_statement #Testing while statement
    a = 300
    result = 35
    i = 1
    while i <= 5
      result = result - 5
      a = a * 2
      i += 1
    end
    assert_equal 10, result
  end

  def test_hashes #Testing hashes
    hash1 = Hash.new
    hash1[:Vika] = 3

    assert_equal 3, hash1[:Vika]
    assert_equal nil, hash1[:Sam]

    hash2 = Hash.new("Hello")
    hash2[:Vika] = 3

    assert_equal 3, hash2[:Vika]
    assert_equal "Hello", hash2[:Sam]
  end





   def test_for_statement #Testing for statement
    arr = ["one", "two", "three"]
    res = []
    for item in arr
      res << item.upcase
    end
    assert_equal ["ONE", "TWO", "THREE"], res
  end




 
  

  class Human
     def set_name(a_name)
      @name = a_name
    end
    def name
      @name
    end
  end

  class Boy < Human
    def what_is_your_name
      "My name is "+ @name
    end
  end

  def test_you_can_create_accessor_methods_to_return_instance_variables2
    f = Boy.new
    f.set_name("Sam")

    assert_equal "Sam", f.name
    assert_equal "My name is Sam" ,f.what_is_your_name
  end

end



 

  


