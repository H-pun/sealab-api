using SealabAPI.Base;
using SealabAPI.DataAccess.Entities;

namespace SealabAPI.DataAccess.Models
{
    public class SeelabsListGroupResponse : BaseModel
    {
        public int IdGroup { get; set; }
        public string[] Names { get; set; }
        public SeelabsListGroupResponse(dynamic group)
        {
            IdGroup = group.id_group;
            Names = ((List<string>)group.names).Select(name => name[2..]).ToArray();
        }
    }
}