﻿using System.Web;
using System.Web.Mvc;

namespace PROG7311_POE_ST10122437_Task_2
{
    public class FilterConfig
    {
        public static void RegisterGlobalFilters(GlobalFilterCollection filters)
        {
            filters.Add(new HandleErrorAttribute());
        }
    }
}
