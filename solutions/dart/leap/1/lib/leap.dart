class Leap {
  // Put your code here
 bool leapYear(int year) {
    if (year % 100 == 0) {
      if (year % 400 == 0) {
        return true;
      }
      return false;
    } else if (year % 4 == 0) {
      return true;
    } else {
      return false;
    }
  }
}
void main(){ 
  final isLeap = Leap().leapYear(2000); 
  print(isLeap); 
}


// year = input; 
// IF (year % 100 == 0 && year % 400 == 0) Then 
// year is leap year 
// else if( year % 4 == 0) Then 
// year is leap year
// else => not a leap year 