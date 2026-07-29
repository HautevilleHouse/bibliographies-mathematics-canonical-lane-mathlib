import BibliographiesMathematicsCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace BibliographiesMathematicsCanonicalLaneLean

structure BibliographicRecordPackage where
  record : BibliographicObject
  metadataComplete : Prop
  authorityChecked : Prop
  classificationAssigned : Prop

structure BibliographicRecordEvidence (P : BibliographicRecordPackage) where
  metadataCompleteClosed : P.metadataComplete
  authorityCheckedClosed : P.authorityChecked
  classificationAssignedClosed : P.classificationAssigned

def BibliographicRecordClosed (P : BibliographicRecordPackage) : Prop :=
  P.metadataComplete ∧ P.authorityChecked ∧ P.classificationAssigned

theorem bibliographic_record_closed_from_evidence
    (P : BibliographicRecordPackage) (E : BibliographicRecordEvidence P) :
    BibliographicRecordClosed P := by
  exact And.intro E.metadataCompleteClosed
    (And.intro E.authorityCheckedClosed E.classificationAssignedClosed)

end BibliographiesMathematicsCanonicalLaneLean
end HautevilleHouse