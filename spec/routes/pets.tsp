import "@typespec/http";
import "@typespec/openapi";
import "../models";

using TypeSpec.Http;
using TypeSpec.OpenAPI;

namespace PetService.Routes;

@route("/pets/{id}")
interface Pets {
  @operationId("get-pet")
  @summary("Get a pet by ID")
  @get
  get(@path id: string): {
    @statusCode
    statusCode: 200;

    @body pet: Pet;
  };
}