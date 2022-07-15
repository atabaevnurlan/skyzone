trigger contactDescUpdate on Contact (before update) {
    for(contact con:Trigger.new){
        con.description='Contact updated successfully by '+ userinfo.getUserName();
    }
}