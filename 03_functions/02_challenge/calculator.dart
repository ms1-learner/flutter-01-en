void main() {
  print(calculator("#")(10, 50)); // Invalid operator
  print(calculator("*")(5, 3)); // 15
}

Function calculator(String operator) {
  if (operator != "+" &&
      operator != "-" &&
      operator != "*" &&
      operator != "/" &&
      operator != "~/" &&
      operator != "%") {
    return (num num1, num num2) => "Unknown operator";
  }
  return (num num1, num num2) {
    if (operator == "+") {
      return num1 + num2;
    }
    if (operator == "-") {
      return num1 - num2;
    }
    if (operator == "*") {
      return num1 * num2;
    }
    if (operator == "/") {
      if (num2 != 0) {
        return num1 / num2;
      } else {
        return "Can't divide by zero!";
      }
    }
    if (operator == "~/") {
      if (num2 != 0) {
        return num1 ~/ num2;
      } else {
        return "Can't divide by zero!";
      }
    }
    if (operator == "%") {
      return num1 % num2;
    }
    ;
  };
}
