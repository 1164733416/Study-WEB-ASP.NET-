using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Web;

namespace code_first.Models
{
    public class Order
    {
        [Key]
        public int OrderId { get; set; }
        [StringLength(50)]
        public string OrderCode { get; set; }
        public decimal OrderAmount { get; set; }
        public virtual List<OrderDetail> OrderDetail { get; set; }

    }
}