import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BibliographiesMathematicsCanonicalLaneLean

structure ClassificationScheme where
  name : String
  categories : List String
  hierarchy : Prop
  mutuallyExclusive : Prop
  exhaustive : Prop

def classificationClosed (c : ClassificationScheme) : Prop := c.hierarchy ∧ c.mutuallyExclusive ∧ c.exhaustive

end BibliographiesMathematicsCanonicalLaneLean
end HautevilleHouse