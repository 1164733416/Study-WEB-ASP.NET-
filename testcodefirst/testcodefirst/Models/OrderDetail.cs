using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;
using System.Linq;
using System.Web;

namespace testcodefirst.Models
{
    public class OrderDetail
    {
        [Key]
        public int OrderDetailId { get; set; }
        public decimal price { get; set; }
        public int Count { get; set; }
        [ForeignKey("Order")]
        public int OrderId { get; set; }
        public virtual Order Order { get; set; }


    }
}