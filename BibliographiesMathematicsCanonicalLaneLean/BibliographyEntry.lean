import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BibliographiesMathematicsCanonicalLaneLean

structure BibliographyEntry where
  identifier : String
  title : String
  authors : List String
  year : Nat
  source : String
  verified : Prop

def entryVerified (e : BibliographyEntry) : Prop := e.verified

end BibliographiesMathematicsCanonicalLaneLean
end HautevilleHouse