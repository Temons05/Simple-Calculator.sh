#Calculator

echo What operation would you like to perform: 
echo ============================
echo 1: Addition, 
echo 2: Subtraction
echo 3: Multiplication, 
echo 4: Division
echo ============================
read math

case "$math" in
        Addition)
            echo "Enter first no:"
            read num1
            echo "Enter second no:"
            read num2
            result=`expr $num1 + $num2`
            echo Answer: $result
            break
        ;;
        Subtraction)
            echo "Enter first no:"
            read num1
            echo "Enter second no:"
            read num2
            result=`expr $num1 - $num2`
            echo Answer: $result
            break
        ;;
        Multiplication)
            echo "Enter first no:"
            read num1
            echo "Enter second no:"
            read num2
            result=$(expr "scale=2; $num1 * $num2" | bc)
            echo Answer: $result
            break
        ;;
        Division)
            echo "Enter first no:"
            read num1
            echo "Enter second no:"
            read num2
            result=$(expr "scale=2; $num1/$num2" | bc)
            echo Answer = $result
            break
        ;;
        *)
            echo Choose 1 to 4 only!!!!
            break
        ;;
    esac
done
echo "Do you want to calculate again? (y/n):"
read i

echo "Thank you for using this program"

exit 0
