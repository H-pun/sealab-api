﻿using Microsoft.AspNetCore.Http;
using SealabAPI.Base;
using SealabAPI.DataAccess.Entities;
using SealabAPI.Helpers;

namespace SealabAPI.DataAccess.Models
{
    public class UpdatePostCategoryRequest : BaseModel
    {
        public Guid Id { get; set; }
        public string Name { get; set; }
    }
}