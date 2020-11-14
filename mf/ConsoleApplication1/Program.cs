using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace ConsoleApplication1
{
    class Program
    {
            //static void AddTestData()
            //{
            //    ////ModelFirstContainer dbContext = new ModelFirstContainer();
            //    using (Model1Container1 db = new Model1Container1())
            //    {
            //        Customer _customer = new Customer { Name = "bill", Age = 65, CompanyName = "Microsoft", Telephone = "32929292" };
            //        Order _order1 = new Order { Amount = 15, CreateTime = DateTime.Now, OrderNo = "20190001", CustomerID = _customer.ID };
            //        Order _order2 = new Order { Amount = 16, CreateTime = DateTime.Now, OrderNo = "20190002", Customer = _customer };
            //        Product _product = new Product
            //        {
            //            ID = Guid.NewGuid(),
            //            Name = "office系列",
            //            Price = 1999,
            //            Weight = 30,
            //            Customer = new List<Customer>() { _customer }
            //        };
            //        db.Customer集.Add(_customer);
            //        db.Product集.Add(_product);
            //        db.Order集.Add(_order1);
            //        db.Order集.Add(_order2);

            //    }
            //}
            //static void SearchCustomerOrder()
            //{
            //    using (Model1Container1 db = new Model1Container1())
            //    {
            //        var _orderList = from o in db.Order集
            //                         where o.Customer.Name == "bill"
            //                         select o;
            //        Console.WriteLine("客户bill的所有订单如下：");
            //        _orderList.ToList().ForEach(o => Console.WriteLine(string.Format(
            //            "订单号：{0},订单金额:{1},订单创建时间:{2}", o.OrderNo, o.Amount, o.CreateTime)));
            //        Console.ReadKey();
            //    }
            //}


            
            static void Main(string[] args)
        {
            //AddTestData();
            //SearchCustomerOrder();
            Customer _customer = new Customer { Name = "bill", Age = 65, CompanyName = "Microsoft", Telephone = "32929292" };
                Order o = new Order() { Customer=_customer, CreateTime = DateTime.Now };            
                Model1Container1 db = new Model1Container1();
             db.Order集.Add(o);
             //int result = db.SaveChanges(); 
             var orders = from od in db.Order集 select od;
 
             foreach (Order order2 in orders)
             {
                 Console.WriteLine("OrderID:{0},OrderDate:{1}", order2.ID, order2.CreateTime);
             }
 
             Console.Read();
        }
    }
}
