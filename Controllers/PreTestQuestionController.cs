using Microsoft.AspNetCore.Http;
using Microsoft.AspNetCore.Mvc;
using Microsoft.Extensions.Logging;
using SealabAPI.Base;
using SealabAPI.DataAccess.Entities;
using SealabAPI.DataAccess.Models.Constants;
using SealabAPI.DataAccess.Models;
using SealabAPI.DataAccess.Services;

namespace SealabAPI.Controllers
{
    [Route("api/[controller]")]
    [ApiController]
    public class PreTestQuestionController : BaseController<
        CreatePreTestQuestionRequest,
        UpdatePreTestQuestionRequest,
        DeletePreTestQuestionRequest,
        DetailPreTestQuestionResponse,
        ListPreTestQuestionResponse,
        PreTestQuestion>
    {
        private readonly ILogger<PreTestQuestionController> _logger;
        private readonly IPreTestQuestionService _service;
        public PreTestQuestionController(ILogger<PreTestQuestionController> logger, IPreTestQuestionService service) : base(service)
        {
            _logger = logger;
            _service = service;
        }
    }
}
