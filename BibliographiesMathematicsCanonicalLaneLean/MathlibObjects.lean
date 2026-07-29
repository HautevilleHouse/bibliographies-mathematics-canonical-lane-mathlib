namespace HautevilleHouse
namespace BibliographiesMathematicsCanonicalLaneLean

structure BibliographySpace where
  carrier : Type

structure BibliographyAdmittedObject where
  bibliography : BibliographySpace
  wellFormedBibliography : Prop
  citationNetworkComplete : Prop
  classificationAssigned : Prop
  conclusion : citationNetworkComplete ∧ classificationAssigned

def BibliographyWitnessClosed (O : BibliographyAdmittedObject) : Prop :=
  O.citationNetworkComplete ∧ O.classificationAssigned

end BibliographiesMathematicsCanonicalLaneLean
end HautevilleHouse
