trigger contactDescInsert on Contact (before insert) {
    for(contact con: trigger.new){
        con.Description='Contact created succesfully by using insert';
    }
}