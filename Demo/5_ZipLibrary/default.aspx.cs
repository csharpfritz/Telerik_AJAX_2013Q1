using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Telerik.Web.Zip;

namespace Demo._5_ZipLibrary
{
  public partial class _default : System.Web.UI.Page
  {
    protected void Page_Load(object sender, EventArgs e)
    {

    }


    public IEnumerable<Product> GetGames()
    {
      
      var repo = new gamesModel();

      return repo.Products;

    }

    protected void download_Click(object sender, EventArgs e)
    {

      var games = GetGames();
      var fileLocnFormat = "/content/games/{0}.jpg";

      var ms = new MemoryStream();
      var pkg = ZipPackage.Create(ms);

      var gamesFileNames = games.Select(g => Server.MapPath(
        string.Format(fileLocnFormat, g.Name.Replace(' ', '_')))).ToArray();

      pkg.Add(gamesFileNames);
      pkg.Close(false);

      Response.Clear();
      Response.ContentType = "application/zip";
      Response.AddHeader("Content-Disposition", "attachment; filename=myPics.zip");
      Response.AddHeader("Content-Length", ms.Length.ToString());

      ms.Position = 0;
      ms.CopyTo(Response.OutputStream);

      Response.End();

    }

  }
}