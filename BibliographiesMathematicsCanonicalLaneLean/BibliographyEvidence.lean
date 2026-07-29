import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.BibliographiesMathematicsCanonicalLaneLean.BibliographyObject

namespace HautevilleHouse
namespace BibliographiesMathematicsCanonicalLaneLean

structure BibliographyEvidence (B : BibliographyObject) where
  titleVerified : B.title ≠ ""
  authorsNonempty : B.authors ≠ []
  yearValid : B.year > 0
  citationsClosed : ∀ c ∈ B.citations, BibliographyWitnessClosed c
  publicationVerified : B.isPublished

structure BibliographyClosureCertificate where
  object : BibliographyObject
  evidence : BibliographyEvidence object
  closureWitness : BibliographyWitnessClosed object

def BibliographyClosed (B : BibliographyObject) : Prop :=
  BibliographyWitnessClosed B ∧ (∀ c ∈ B.citations, BibliographyWitnessClosed c)

theorem bibliography_closed_from_evidence (B : BibliographyObject) (E : BibliographyEvidence B) :
  BibliographyClosed B := by
  refine And.intro E.publicationVerified ?_
  intro c hc
  exact E.citationsClosed c hc

end BibliographiesMathematicsCanonicalLaneLean
end HautevilleHouse