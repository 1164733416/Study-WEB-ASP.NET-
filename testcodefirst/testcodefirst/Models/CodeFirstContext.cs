using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data.Entity;

namespace testcodefirst.Models
{
    public class CodeFirstContext:DbContext
    {
        public CodeFirstContext() : base("name=CodeFirstContext") { }
        public DbSet<Order> Order { get; set; }
        public DbSet<OrderDetail> OrderDetail { get; set; }

    }
}