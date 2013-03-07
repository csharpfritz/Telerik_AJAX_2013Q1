using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Telerik.OpenAccess;

namespace Demo._7_NewFeatures
{
  public partial class GridModelBinding : System.Web.UI.Page
  {
    protected void Page_Load(object sender, EventArgs e)
    {

    }

  public IEnumerable<Product> GetProducts()
  {
    
      var repo = new gamesModel();

      return repo.Products.ToList();

  }

    public void DeleteProduct(Product p)
    {
      var repo = new gamesModel();

      var toRemove = repo.Products.First(r => r.ID == p.ID);

      repo.Delete(toRemove);
      repo.SaveChanges();

    }

    public void EditProduct(Product p)
    {
      
      // do something

    }

  
  }
}