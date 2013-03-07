using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Demo._2_DropDownTree
{
  public partial class _default : System.Web.UI.Page
  {
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected override void CreateChildControls()
    {
      base.CreateChildControls();

      LegacyConfigureBranches();

      ConfigureBranches();
    }

    public void ConfigureBranches()
    {

      //return;

      var repo = new gamesModel();
      ddTree.DataSource = repo.Branches;

      ddTree.DataModelID = "ID";
      ddTree.DataFieldID = "ID";
      ddTree.DataFieldParentID = "ParentID";
      ddTree.DataTextField = "Name";
      ddTree.DataBind();


    }

    public void LegacyConfigureBranches()
    {
      
      var repo = new gamesModel();
      var branches = repo.Branches.OrderBy( b=> b.ParentID.HasValue ? b.ParentID : -1).ThenBy(b => b.Name).ToList();

      var outBranches = new List<BranchViewModel>();

      foreach (var b in branches)
      {
        if (!b.ParentID.HasValue)
        {
          outBranches.Add(BranchViewModel.Create(b, 0));
          continue;
        }

        var parentVm = outBranches.First(m => b.ParentID.HasValue && m.ID == b.ParentID.Value);
        var pos = outBranches.IndexOf(parentVm);
        
        outBranches.Insert(pos+1, BranchViewModel.Create(b, parentVm.Depth + 1));

      }

      legacyBranches.DataSource = outBranches;
      legacyBranches.DataTextField = "Name";
      legacyBranches.DataValueField = "ID";
      legacyBranches.DataBind();

    }

    public class BranchViewModel
    {

      private BranchViewModel() {}

      public static BranchViewModel Create(Branch b, int depth)
      {
        return new BranchViewModel
        {
          ID = b.ID,
          ParentID = b.ParentID.HasValue ? b.ParentID.Value : -1,
          Name = new String('-',depth) + " " + b.Name,
          Depth = depth
        };

      }
      
      public int ID { get; set; }
      public int ParentID { get; set; }
      public string Name { get; set; }
      public int Depth { get; set; }
    }

  }
}