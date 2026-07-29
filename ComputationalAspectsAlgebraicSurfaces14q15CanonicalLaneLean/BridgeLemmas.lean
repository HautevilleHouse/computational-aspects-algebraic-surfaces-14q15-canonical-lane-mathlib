import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ComputationalAspectsAlgebraicSurfaces14q15CanonicalLaneLean

def bridgeClosed (A : AlgebraicSurfaceAdmissibleClass) : Prop :=
  Decides A.lane.surface A.lane.projectedLanguage

theorem bridge_from_admissible_class (A : AlgebraicSurfaceAdmissibleClass) :
    bridgeClosed A := by
  exact A.surfaceDecidesProjectedLanguage

end ComputationalAspectsAlgebraicSurfaces14q15CanonicalLaneLean
end HautevilleHouse
