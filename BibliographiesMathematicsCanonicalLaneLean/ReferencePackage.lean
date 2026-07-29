import HautevilleHouse.BibliographiesMathematicsCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace BibliographiesMathematicsCanonicalLaneLean

structure BibliographicReference where
  title : String
  author : String
  year : Nat
  doi : Option String
  isComplete : Prop
  conclusion : isComplete

def ReferenceWitnessClosed (r : BibliographicReference) : Prop :=
  r.isComplete

structure ReferencePackage where
  references : List BibliographicReference
  catalogComplete : Prop
  catalogCompleteTerm : catalogComplete

structure ReferenceEvidence (R : ReferencePackage) where
  allReferencesComplete : ∀ r ∈ R.references, r.isComplete
  catalogCompleteClosed : R.catalogComplete

def ReferencePackageClosed (R : ReferencePackage) : Prop :=
  R.catalogComplete ∧ (∀ r ∈ R.references, r.isComplete)

theorem reference_package_closed_from_evidence (R : ReferencePackage) (E : ReferenceEvidence R) :
    ReferencePackageClosed R := by
  exact And.intro E.catalogCompleteClosed E.allReferencesComplete

end BibliographiesMathematicsCanonicalLaneLean
end HautevilleHouse