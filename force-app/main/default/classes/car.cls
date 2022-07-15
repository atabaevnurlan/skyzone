public class car {
    public class brendException extends Exception{}
    string model;
    integer year;
    string brend;
    public car (string model, integer year, string brend){
        this.model=model;
        this.year = year;
        if (Brend!='Toyota'){
            throw new brendException('only toyota for this week');
        }
    }
    
}