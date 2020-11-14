using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data.Entity;

namespace CodeFirst.Models
{
    public class CodeFirstDemoContext:DbContext
    {
        public CodeFirstDemoContext() : base("name=CodeFirstDemoContext") { }
        public DbSet<Order> Order { get; set; }
        public DbSet<OrderDetail> OrderDetail{ get; set; }

    }
}