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
    public class Category
    {
        [Key]
        public int CategoryID { get; set; } 

        [Required(ErrorMessage="Category decsription is required")]
        [StringLength(50)]
        public string Description { get; set; }

        public virtual ICollection<StockItem> StockItems { get; set; }
    }
}
