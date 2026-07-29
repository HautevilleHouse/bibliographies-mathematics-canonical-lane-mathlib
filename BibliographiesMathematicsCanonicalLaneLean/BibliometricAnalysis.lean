import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BibliographiesMathematicsCanonicalLaneLean

structure BibliometricIndicator where
  name : String
  value : Float
  normalized : Prop
  robust : Prop
  comparable : Prop

def indicatorClosed (i : BibliometricIndicator) : Prop := i.normalized ∧ i.robust ∧ i.comparable

end BibliographiesMathematicsCanonicalLaneLean
end HautevilleHouse