public class primeNumber {
    public static Boolean isPrime(Integer num) {
        if(num<=1){
         Boolean isPrime=false;
            return isPrime;
        }
        else if(num==2){
           Boolean isPrime=true;
            return isPrime; 
        }
        for(integer i =3; i<=Math.sqrt(num); i+=2){
            if(math.mod(num, i)==0){
                Boolean isPrime=false;
            return isPrime;
            }
            else{
                Boolean isPrime=false;
            return isPrime;
            }
        }
        Boolean isPrime=true;
            return isPrime;
}
}