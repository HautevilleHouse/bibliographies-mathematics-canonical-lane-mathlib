import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BibliographiesMathematicsCanonicalLaneLean

structure AuthorityRecord where
  identifier : String
  name : String
  variantNames : List String
  disambiguated : Prop
  authoritative : Prop

def authorityClosed (a : AuthorityRecord) : Prop := a.disambiguated ∧ a.authoritative

end BibliographiesMathematicsCanonicalLaneLean
end HautevilleHouse