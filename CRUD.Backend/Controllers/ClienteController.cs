using CRUD.backend.Aplication.Clientes;
using Microsoft.AspNetCore.Authorization;
using Microsoft.AspNetCore.Mvc;
using System.Globalization;

namespace CRUD.Backend.API.Controllers
{
    [Authorize]
    [Route("api/v1/[controller]")]
    [ApiController]
    public class ClienteController : ControllerBase
    {
        private readonly IWebHostEnvironment _webHostEnvironment;

        private readonly ClienteApp _customerApp;

        public ClienteController(
            IWebHostEnvironment webHostEnvironment,

            ClienteApp clienteApp,

        )
        {
            this._webHostEnvironment = webHostEnvironment;
            this._customerApp = clienteApp;


            //Set culture
            Thread.CurrentThread.CurrentCulture = new CultureInfo("es-PE");
            Thread.CurrentThread.CurrentUICulture = CultureInfo.CreateSpecificCulture("es-PE");
            Thread.CurrentThread.CurrentUICulture.DateTimeFormat.FirstDayOfWeek = DayOfWeek.Monday;
        }   
    }
}
