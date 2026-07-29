import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ComputationalAspectsAlgebraicSurfaces14q15CanonicalLaneLean

structure CohomologyCompute where
  sheaf : Type
  cohomologyGroups : ℕ → Type

structure CohomologyCompute_AdmittedObject where
  cohomologyCompute : CohomologyCompute
  projectedLanguage : String
  solver : String

structure AdmissibleClass where
  lane : CohomologyCompute_AdmittedObject
  solverDecidesProjectedLanguage : Decides lane.solver lane.projectedLanguage
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

end ComputationalAspectsAlgebraicSurfaces14q15CanonicalLaneLean
end HautevilleHouse