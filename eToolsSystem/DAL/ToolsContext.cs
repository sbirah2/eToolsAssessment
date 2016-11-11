using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

#region Additional Namespaces
using System.Data.Entity;
using eToolsSystem.Entities;
#endregion

namespace eToolsSystem.DAL
{
    internal class ToolsContext:DbContext
    {
        public ToolsContext() : base("name=ToolsDB") { }

        public DbSet<Category> Categories { get; set; }
        public DbSet<StockItem> StockItems { get; set; }
       
    }
}
