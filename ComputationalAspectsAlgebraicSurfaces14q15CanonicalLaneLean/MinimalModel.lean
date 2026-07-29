import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ComputationalAspectsAlgebraicSurfaces14q15CanonicalLaneLean

structure MinimalModel where
  surface : Type
  canonicalDivisor : Type

structure MinimalModel_AdmittedObject where
  minimalModel : MinimalModel
  projectedLanguage : String
  solver : String

structure AdmissibleClass where
  lane : MinimalModel_AdmittedObject
  solverDecidesProjectedLanguage : Decides lane.solver lane.projectedLanguage
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

end ComputationalAspectsAlgebraicSurfaces14q15CanonicalLaneLean
end HautevilleHouse