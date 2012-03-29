using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace Building.Code
{
    public class LogHelper
    {
        public static void Write(string text)
        {
            BuildingEntities db = new BuildingEntities();
            UserLog log = new UserLog {Date = DateTime.Now, Text = text};
            db.UserLogs.AddObject(log);
            db.SaveChanges();
        }
    }
}