import BibliographiesMathematicsCanonicalLaneLean.CitationNetwork

namespace HautevilleHouse
namespace BibliographiesMathematicsCanonicalLaneLean

structure ClassificationHierarchyPackage {R : BibliographicRecordPackage}
    {C : CitationNetworkPackage R} where
  classificationCodes : List String
  hierarchyTree : Prop
  codesConsistent : Prop

structure ClassificationHierarchyEvidence {R : BibliographicRecordPackage}
    {C : CitationNetworkPackage R}
    (H : ClassificationHierarchyPackage R C) where
  hierarchyTreeClosed : H.hierarchyTree
  codesConsistentClosed : H.codesConsistent

def ClassificationHierarchyClosed {R : BibliographicRecordPackage}
    {C : CitationNetworkPackage R}
    (H : ClassificationHierarchyPackage R C) : Prop :=
  H.hierarchyTree ∧ H.codesConsistent

theorem classification_hierarchy_closed_from_evidence
    {R : BibliographicRecordPackage} {C : CitationNetworkPackage R}
    (H : ClassificationHierarchyPackage R C)
    (E : ClassificationHierarchyEvidence H) : ClassificationHierarchyClosed H := by
  exact And.intro E.hierarchyTreeClosed E.codesConsistentClosed

end BibliographiesMathematicsCanonicalLaneLean
end HautevilleHouse