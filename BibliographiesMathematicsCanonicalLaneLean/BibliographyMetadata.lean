import HautevilleHouse.BibliographiesMathematicsCanonicalLaneLean.MathlibObjects

namespace HautevilleHouse
namespace BibliographiesMathematicsCanonicalLaneLean

structure BibliographyEntry where
  title : String
  authorList : List String
  year : Nat
  doi : Option String
  fields : List String

structure BibliographyDatabase where
  entries : List BibliographyEntry
  citationGraph : List (Nat × Nat)
  completenessFlag : Prop
  classificationFlag : Prop

structure BibliographyMetadataPackage where
  database : BibliographyDatabase
  entryCount : Nat
  citationEdges : Nat
  metadataComplete : Prop
  metadataConsistent : Prop

structure BibliographyMetadataEvidence (P : BibliographyMetadataPackage) where
  metadataCompleteClosed : P.metadataComplete
  metadataConsistentClosed : P.metadataConsistent

def BibliographyMetadataClosed (P : BibliographyMetadataPackage) : Prop :=
  P.metadataComplete ∧ P.metadataConsistent

theorem bibliography_metadata_closed_from_evidence (P : BibliographyMetadataPackage)
    (E : BibliographyMetadataEvidence P) : BibliographyMetadataClosed P := by
  exact And.intro E.metadataCompleteClosed E.metadataConsistentClosed

end BibliographiesMathematicsCanonicalLaneLean
end HautevilleHouse
