import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ComputationalAspectsAlgebraicSurfaces14q15CanonicalLaneLean

structure AlgebraicSurfaceAdmissibleClass where
  lane : AlgebraicSurfaceAdmittedObject
  surfaceDecidesProjectedLanguage : Decides lane.surface lane.projectedLanguage
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AlgebraicSurfaceAdmissibleClass) : Prop :=
  Decides A.lane.surface A.lane.projectedLanguage ∧
  (A.endpointSatisfied ∨ A.remainderRecorded)

end ComputationalAspectsAlgebraicSurfaces14q15CanonicalLaneLean
end HautevilleHouse
