using System;
using System.Collections.Generic;
using System.Diagnostics;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Telerik.Web.UI;
using Telerik.Web.UI.Calendar.Collections;
using Telerik.Web.UI.PersistenceFramework;

namespace Demo.Persistence
{
  public partial class _default : System.Web.UI.Page
  {


    private DateTime[] _Dates;

    protected override void CreateChildControls()
    {
      base.CreateChildControls();
      persistMgr.StorageProvider = new CookieStateStorageProvider();
      persistMgr.SerializationProvider = new JsonStateSerializer();
    }
    
    protected void Page_Load(object sender, EventArgs e)
    {
    }

    protected void saveBtn_Click(object sender, EventArgs e)
    {
      persistMgr.SaveState();
    }

    protected void persistMgr_SaveCustomSettings(object sender, PersistenceManagerSaveStateEventArgs e)
    {

      var dates = cal.SelectedDates.ToArray();

      e.CustomSettings.Add(new ControlSetting()
      {
        Name = "dates",
        Value = dates
      });

    }

    protected void loadBtn_Click(object sender, EventArgs e)
    {
      persistMgr.LoadState();
    }

    protected void persistMgr_LoadCustomSettings(object sender, PersistenceManagerLoadStateEventArgs e)
    {

      if (!e.CustomSettings.ControlSettings.Any(c => c.Name == "dates"))
        return;

      this._Dates = (DateTime[])e.CustomSettings.ControlSettings.First(c => c.Name == "dates").Value;

    }

    protected override void OnPreRenderComplete(EventArgs e)
    {
      base.OnPreRenderComplete(e);

      if (_Dates == null)
        return;

      int i = 0;
      cal.SelectedDates.Clear();
      foreach (var dt in _Dates)
      {
        cal.SelectedDates.Insert(i++, new RadDate(dt));
      }

    }

  }
}