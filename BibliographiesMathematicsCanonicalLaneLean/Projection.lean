import HautevilleHouse.BibliographiesMathematicsCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace BibliographiesMathematicsCanonicalLaneLean

def bibliographyProjection : Projection BibliographicReference := {
  toFun := fun x => x,
  idempotent := by intro x; rfl
}

theorem bibliography_projection_idempotent (x : BibliographicReference) :
    bibliographyProjection.toFun (bibliographyProjection.toFun x) = bibliographyProjection.toFun x := by
  exact bibliographyProjection.idempotent x

end BibliographiesMathematicsCanonicalLaneLean
end HautevilleHouse