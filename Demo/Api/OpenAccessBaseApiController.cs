// Code is generated by Telerik Add OpenAccess Service Wizard
// using WebApiBaseApiController.tt template

using System.Net;
using System.Net.Http;
using System.Web;
using System.Web.Http;
using System.Linq;
using Telerik.OpenAccess;

namespace Demo
{
    public abstract partial class OpenAccessBaseApiController<TEntity, TContext> : ApiController
        where TContext : OpenAccessContext, new()
    {
        protected IOpenAccessBaseRepository<TEntity, TContext> repository;

        public virtual IQueryable<TEntity> Get()
        {
            var allEntities = repository.GetAll();

            return allEntities;
        }

		/// <summary>
        /// Creates a new entity based on the provided data
        /// </summary>
        /// <param name="entity">The new entity to be created</param>
        /// <returns>HTTP Status:
        /// - Accepted when operation is successful or 
        /// - MethodNotAllowed if the operation is disabled for this entity or
        /// - BadRequest if the provided entity is NULL</returns>
        public virtual HttpResponseMessage Post(TEntity entity)
        {
            if (entity == null)
                throw new HttpResponseException(HttpStatusCode.BadRequest);

            //TODO: should we check if the incomming entity is not an existing one?
            TEntity newEntity = repository.AddNew(entity);

            var response = CreateResponse(HttpStatusCode.Accepted, newEntity);
            return response;
        }

        protected abstract HttpResponseMessage CreateResponse(HttpStatusCode httpStatusCode, TEntity entityToEmbed);
    }
}
