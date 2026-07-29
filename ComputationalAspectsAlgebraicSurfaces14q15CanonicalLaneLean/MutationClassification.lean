import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ComputationalAspectsAlgebraicSurfaces14q15CanonicalLaneLean

structure MutationClassification where
  surface : Type
  mutationType : Type

structure MutationClassification_AdmittedObject where
  mutationClassification : MutationClassification
  projectedLanguage : String
  solver : String

structure AdmissibleClass where
  lane : MutationClassification_AdmittedObject
  solverDecidesProjectedLanguage : Decides lane.solver lane.projectedLanguage
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

end ComputationalAspectsAlgebraicSurfaces14q15CanonicalLaneLean
end HautevilleHouse