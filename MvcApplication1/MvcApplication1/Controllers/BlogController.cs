using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace MvcApplication1.Controllers
{
    public class BlogController : Controller
    {
        //
        // GET: /Default1/

        public ActionResult Index()
        {
            ViewBag.Message = "My first test"; 
            return View();
        }

    }
}
