var db=require('../dbconnection');
var Announcement={
   getAnnouncementByBatchId(batch_id,callback)
   {

      var announcement_date1=new Date;
      announcement_date1=new Date(Date.now());
  
          var d = new Date(announcement_date1),
          month = '' + (d.getMonth() + 1),
          day = '' + d.getDate(),
          year = d.getFullYear();
  
          if (month.length < 2)
              month = '0' + month;
          if (day.length < 2)
              day = '0' + day;
  
              announcement_date2=[year, month, day].join('-');
          console.log(announcement_date2);

    return db.query("SELECT * FROM `announcement` WHERE batch_id=? and Date<=? ORDER BY Date DESC",[batch_id,announcement_date2],callback);
   }

}
module.exports=Announcement;