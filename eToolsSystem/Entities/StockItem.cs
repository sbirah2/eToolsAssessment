using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

#region Additional namespaces
using System.ComponentModel.DataAnnotations.Schema;
using System.ComponentModel.DataAnnotations;
#endregion

namespace eToolsSystem.Entities
{
    public class StockItem
    {  
        [Key]
        public int StockItemID { get; set; }
        public string Description { get; set; }
        public decimal SellingPrice { get; set; }
        public decimal PurchasePrice { get; set; }
        public int QuantityOnHand { get; set; }
        public int ReOrderLevel { get; set; }
        public bool Discontinued { get; set; }
        public int VendorID { get; set; }
        public string VendorStockNumber { get; set; }
        public int CategoryID { get; set; }
  
        public virtual Category Categories { get; set; }
    }
}
