import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ComputationalAspectsAlgebraicSurfaces14q15CanonicalLaneLean

structure SurfacePolynomialRing where
  baseField : Type
  variableList : List String

def PolynomialSet := List (String × Nat) 

structure SurfaceIdeal where
  generators : PolynomialSet

structure AlgebraicSurface where
  ideal : SurfaceIdeal
  baseField : Type

structure AlgebraicSurfaceAdmittedObject where
  surface : AlgebraicSurface
  projectedLanguage : PolynomialSet
  solver : SurfaceSolver

structure SurfaceSolver where
  accepts : PolynomialSet → Bool

def Decides (M : SurfaceSolver) (L : PolynomialSet) : Prop :=
  ∀ p : PolynomialSet, M.accepts p = true ↔ p ⊆ L

end ComputationalAspectsAlgebraicSurfaces14q15CanonicalLaneLean
end HautevilleHouse
