trigger contactDescUpdateINSERT on Contact (before insert, before update){
    for(contact con:Trigger.new){
        if(trigger.isInsert){
            con.description='Contact created successfully by using ContactBeforeInsert trigger';
        }
        if(trigger.isUpdate){
            con.Description= 'Contact updated successfully by '+ userInfo.getUserName() ;
        }
    }    
}