import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BibliographiesMathematicsCanonicalLaneLean

inductive PublicationType where
  | article
  | book
  | inCollection
  | preprint
  | thesis
  | other

def PublicationType.toRank (t : PublicationType) : Nat :=
  match t with
  | article => 5
  | book => 5
  | inCollection => 4
  | preprint => 3
  | thesis => 2
  | other => 1

structure PublicationRecord where
  title : String
  authors : List String
  year : Nat
  publicationType : PublicationType
  doi : Option String
  citationCount : Nat
  isPeerReviewed : Prop
  isValidRecord : title ≠ "" ∧ authors ≠ [] ∧ year > 0

def recordClosed (r : PublicationRecord) : Prop :=
  r.isValidRecord

theorem record_validation (r : PublicationRecord) : recordClosed r :=
  r.isValidRecord

end BibliographiesMathematicsCanonicalLaneLean
end HautevilleHouse