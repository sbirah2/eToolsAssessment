using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace eToolsSystem.Entities.POCOs
{
    public class CategoryStockItem
    {
        public string Name { get; set; }
        public int OnHand { get; set; }
        public decimal Markup { get; set; } 
    }
}
