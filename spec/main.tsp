import "@typespec/versioning";
import "./routes";

using TypeSpec.Versioning;

@service({
  title: "PetService API",
})
@versioned(Versions)
namespace PetService;
enum Versions {
  v1,
}