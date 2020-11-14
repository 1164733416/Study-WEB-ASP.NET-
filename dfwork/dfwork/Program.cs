using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace dfwork
{
    class Program
    {
        static void Main(string[] args)
        {
            mydbfEntities entity = new mydbfEntities();
            T_Customer customer = new T_Customer
            {
                ld = "2001",
                UserName = "陈云",
                sex = "男",
                phone = "13091108110",
                Grate = 93
            };
            entity.T_Customer.Add(customer);
            entity.SaveChanges();
            
        }
    }
}
