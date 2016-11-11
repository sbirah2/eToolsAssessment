using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

#region Addition Namespaces
using eToolsSystem.Entities.POCOs;
#endregion
namespace eToolsSystem.Entities.DTOs
{
    public class CategoryDTO
    {
        public string CategoryDescription { get; set; }
        public IEnumerable<CategoryStockItem> Stocks { get; set; }
    }
}
