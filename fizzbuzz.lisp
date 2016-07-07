(defun multiple3p (x)
  (= (rem x 3) 0)
)

(defun multiple5p (x)
  (= (rem x 5) 0)
)

(defun fizz(x)
  (if (multiple3p x)
      "Fizz"
    x)
)

(defun fizzbuzz(x)
  (if (and (multiple3p x) (multiple5p x))
      "FizzBuzz"
    (if (multiple3p x)
        "Fizz"
      (if (multiple5p x)
          "Buzz"
        x)
    )
  )
)



(loop for x from 1 to 100
  do (print (fizzbuzz x)))