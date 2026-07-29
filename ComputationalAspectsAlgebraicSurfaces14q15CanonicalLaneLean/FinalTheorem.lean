import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ComputationalAspectsAlgebraicSurfaces14q15CanonicalLaneLean

def ConstrainedAlgebraicSurfaceClosure (A : AlgebraicSurfaceAdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_algebraic_surface_endgame (A : AlgebraicSurfaceAdmissibleClass) :
    ConstrainedAlgebraicSurfaceClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end ComputationalAspectsAlgebraicSurfaces14q15CanonicalLaneLean
end HautevilleHouse
