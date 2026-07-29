import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ComputationalAspectsAlgebraicSurfaces14q15CanonicalLaneLean

structure CanonicalRing where
  sectionRing : Type
  pluricanonicalSheaf : ℕ → Type

structure CanonicalRing_AdmittedObject where
  canonicalRing : CanonicalRing
  projectedLanguage : String
  solver : String

structure AdmissibleClass where
  lane : CanonicalRing_AdmittedObject
  solverDecidesProjectedLanguage : Decides lane.solver lane.projectedLanguage
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

end ComputationalAspectsAlgebraicSurfaces14q15CanonicalLaneLean
end HautevilleHouse