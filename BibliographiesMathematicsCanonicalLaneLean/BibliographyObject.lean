import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BibliographiesMathematicsCanonicalLaneLean

structure BibliographyObject where
  title : String
  authors : List String
  year : Nat
  doi : Option String
  citations : List BibliographyObject
  citationCount : Nat
  isPublished : Prop
  conclusion : isPublished

def BibliographyWitnessClosed (O : BibliographyObject) : Prop :=
  O.isPublished

end BibliographiesMathematicsCanonicalLaneLean
end HautevilleHouse