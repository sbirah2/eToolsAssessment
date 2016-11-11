using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

#region Additional Namespaces
using System.ComponentModel;
using eToolsSystem.Entities;
using eToolsSystem.Entities.DTOs;
using eToolsSystem.Entities.POCOs;
using eToolsSystem.DAL;
using System.Data.Entity.Validation;
#endregion

namespace eToolsSystem.BLL
{
    [DataObject]
    public class ToolsController
    {

        #region Assessment Query
        [DataObjectMethod(DataObjectMethodType.Select, false)]
        public List<CategoryDTO> CategoryStockList()
        {
            using (ToolsContext context = new ToolsContext())
            {
                #region Student Code here
                //insert query code

                //replace the following line of code to return your results
                return null;
                #endregion
                var results = from x in context.StockItems
                              group x by new { x.Categories.Description} into tempdataset
                              select new CategoryDTO
                              {
                                  CategoryDescription = tempdataset.Key.Description,


                                  Stocks = (from x in tempdataset
                                                     select new CategoryStockItem
                                                     {
                                                         Name = x.Description,
                                                         OnHand = x.QuantityOnHand,
                                                         Markup = x.SellingPrice - x.PurchasePrice

                                                     })
                              };
                return results.ToList();
            }
        }
        #endregion

        #region Assessment Command

        [DataObjectMethod(DataObjectMethodType.Insert,true)]
        public void Categories_Add(Category item)
        {
            using (ToolsContext context = new ToolsContext())
            {
                #region Student Code here
                //insert add code
                item.CategoryID = context.Categories.Max(r => r.CategoryID) + 1;
                context.Categories.Add(item);
                context.SaveChanges();
                //replace the following line of code to return your results
                //return 0;
                #endregion
            }
        }

        [DataObjectMethod(DataObjectMethodType.Update,true)]
        public void Categories_Update(Category item)
        {
            using (ToolsContext context = new ToolsContext())
            {
                #region Student Code here
                //insert udpate code
                context.Entry(item).State =
                    System.Data.Entity.EntityState.Modified;

                //commit of the transaction
                context.SaveChanges();

                #endregion
            }
        }


        [DataObjectMethod(DataObjectMethodType.Delete, true)]
        public void Categories_Delete(Category removeItem)
        {
            Categories_Delete(removeItem.CategoryID);
        }
        public void Categories_Delete(int categoryid)
        {
            using (ToolsContext context = new ToolsContext())
            {
                #region Student Code here
                //insert Delete code
                var existing = context.Categories.Find(categoryid);
                context.Categories.Remove(existing);
                context.SaveChanges();

                #endregion
            }
        }

        [DataObjectMethod(DataObjectMethodType.Select,false)]
        public List<Category> Categories_List()
        {
            using (ToolsContext context = new ToolsContext())
            {
                return context.Categories.ToList();
            }
        }

        [DataObjectMethod(DataObjectMethodType.Select,false)]
        public Category Categories_FindbyID(int categoryid)
        {
            using (ToolsContext context = new ToolsContext())
            {
                return context.Categories.Find(categoryid);
            }
        }

        #endregion
      
    }
}
