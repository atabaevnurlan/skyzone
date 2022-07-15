public class fibo {
    public static integer fib(integer n){
        list<integer> f=new list<integer>(n+2);
        f[0]=0;
        f[1]=1;
        for(integer i=2; i<=n; i++){
            f[i]=f[i-1]+ f[i-2];
            
        }
        return f[n];
    }

}