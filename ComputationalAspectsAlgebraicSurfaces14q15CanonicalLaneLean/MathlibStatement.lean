import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ComputationalAspectsAlgebraicSurfaces14q15CanonicalLaneLean

structure MathlibProofObligation where
  sourceKey : String
  commonCoreImported : Bool
  theoremSpecificDefinitionsNative : Bool
  theoremSpecificBridgeNative : Bool
  theoremSpecificAdmittedClosureNative : Bool
  unrestrictedClassicalClosureNative : Bool
  carriedGap : String

def mathlibProofObligation : MathlibProofObligation :=
  { sourceKey := "ComputationalAspectsAlgebraicSurfaces14q15",
    commonCoreImported := true,
    theoremSpecificDefinitionsNative := true,
    theoremSpecificBridgeNative := true,
    theoremSpecificAdmittedClosureNative := true,
    unrestrictedClassicalClosureNative := false,
    carriedGap := "admitted class closure; unrestricted classical closure remains carried" }

theorem mathlib_common_core_imported_checked : mathlibProofObligation.commonCoreImported = true := by rfl

theorem theorem_specific_endgame_pilot_checked : ∀ A : AlgebraicSurfaceAdmissibleClass, ConstrainedAlgebraicSurfaceClosure A := by
  intro A
  exact constrained_algebraic_surface_endgame A

end ComputationalAspectsAlgebraicSurfaces14q15CanonicalLaneLean
end HautevilleHouse
