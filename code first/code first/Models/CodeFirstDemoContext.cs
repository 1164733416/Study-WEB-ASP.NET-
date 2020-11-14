using System;
using System.Collections.Generic;
using System.Data.Entity;
using System.Linq;
using System.Web;

namespace code_first.Models
{
    public class CodeFirstDemoContext : DbContext
    {
        public CodeFirstDemoContext() : base("name=CodeFirstDemoContext") { }
        public DbSet<Order> Order { get; set; }
        public DbSet<OrderDetail> OrderDetail { get; set; }

    }
}