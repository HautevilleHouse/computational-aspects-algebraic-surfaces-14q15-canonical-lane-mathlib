import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ComputationalAspectsAlgebraicSurfaces14q15CanonicalLaneLean

structure Projection (α : Type) where
  toFun : α → α
  idempotent : ∀ x : α, toFun (toFun x) = toFun x

structure AlgebraicSurfaceEndgameState where
  admittedObject : AlgebraicSurfaceAdmittedObject

def algebraicSurfaceProjection : Projection AlgebraicSurfaceEndgameState :=
  { toFun := fun x => x,
    idempotent := by intro x; rfl
  }

theorem algebraic_surface_projection_idempotent (x : AlgebraicSurfaceEndgameState) :
    algebraicSurfaceProjection.toFun (algebraicSurfaceProjection.toFun x) = algebraicSurfaceProjection.toFun x := by
  exact algebraicSurfaceProjection.idempotent x

end ComputationalAspectsAlgebraicSurfaces14q15CanonicalLaneLean
end HautevilleHouse
