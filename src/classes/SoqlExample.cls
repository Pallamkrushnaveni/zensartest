public class SoqlExample{

public list<account> lact{set;get;}
    public SoqlExample(){
        lact=[select name,type,industry from account];
        system.debug('hi'+lact);
    }
     public void SoqlExample001(){
        lact=[select name,type,industry from account];
        system.debug('hi new method is added');
    }
    public void sqollimit(){
    lact=[select name,type,industry from account limit 5];
     
    }
    public void sqoloffset(){
    lact=[select name,type,industry from account offset 6];
    }
    public void sqolallrow(){
    lact=[select name,type,industry from account ALL ROWS];
    }
    public void sqolDelRec(){
    lact=[select name,type,industry from account where isDeleted=true ALL ROWS];
    }
    public void sqolAsc(){
    lact=[select name,type,industry from account order by name asc];
    }
     public void sqolDsc(){
    lact=[select name,type,industry from account order by name desc];
    }
}