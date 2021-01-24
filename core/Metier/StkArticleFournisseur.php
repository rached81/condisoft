<?php



use Doctrine\ORM\Mapping as ORM;

/**
 * StkArticleFournisseur
 *
 * @ORM\Table(name="stk_article_fournisseur", indexes={@ORM\Index(name="fk_stk_article_fournisseur_stk_etat1_idx", columns={"frs_artEtatCode"}), @ORM\Index(name="fk_stk_article_fournisseur_stk_fournisseur1_idx", columns={"frs_code"}), @ORM\Index(name="IDX_57EE174C7E354607", columns={"art_code"})})
 * @ORM\Entity
 */
class StkArticleFournisseur
{
    /**
     * @var string
     *
     * @ORM\Column(name="frs_artRef", type="string", length=100, nullable=true)
     */
    private $frsArtref;

    /**
     * @var \StkArticle
     *
     * @ORM\Id
     * @ORM\GeneratedValue(strategy="NONE")
     * @ORM\ManyToOne(targetEntity="StkArticle")
     * @ORM\JoinColumns({
     *   @ORM\JoinColumn(name="art_code", referencedColumnName="art_code")
     * })
     */
    private $artCode;

    /**
     * @var \StkEtat
     *
     * @ORM\ManyToOne(targetEntity="StkEtat")
     * @ORM\JoinColumns({
     *   @ORM\JoinColumn(name="frs_artEtatCode", referencedColumnName="etat_code")
     * })
     */
    private $frsArtetatcode;

    /**
     * @var \StkFournisseur
     *
     * @ORM\Id
     * @ORM\GeneratedValue(strategy="NONE")
     * @ORM\OneToOne(targetEntity="StkFournisseur")
     * @ORM\JoinColumns({
     *   @ORM\JoinColumn(name="frs_code", referencedColumnName="frs_code")
     * })
     */
    private $frsCode;



    /**
     * Set frsArtref
     *
     * @param string $frsArtref
     *
     * @return StkArticleFournisseur
     */
    public function setFrsArtref($frsArtref)
    {
        $this->frsArtref = $frsArtref;

        return $this;
    }

    /**
     * Get frsArtref
     *
     * @return string
     */
    public function getFrsArtref()
    {
        return $this->frsArtref;
    }

    /**
     * Set artCode
     *
     * @param \StkArticle $artCode
     *
     * @return StkArticleFournisseur
     */
    public function setArtCode(\StkArticle $artCode)
    {
        $this->artCode = $artCode;

        return $this;
    }

    /**
     * Get artCode
     *
     * @return \StkArticle
     */
    public function getArtCode()
    {
        return $this->artCode;
    }

    /**
     * Set frsArtetatcode
     *
     * @param \StkEtat $frsArtetatcode
     *
     * @return StkArticleFournisseur
     */
    public function setFrsArtetatcode(\StkEtat $frsArtetatcode = null)
    {
        $this->frsArtetatcode = $frsArtetatcode;

        return $this;
    }

    /**
     * Get frsArtetatcode
     *
     * @return \StkEtat
     */
    public function getFrsArtetatcode()
    {
        return $this->frsArtetatcode;
    }

    /**
     * Set frsCode
     *
     * @param \StkFournisseur $frsCode
     *
     * @return StkArticleFournisseur
     */
    public function setFrsCode(\StkFournisseur $frsCode)
    {
        $this->frsCode = $frsCode;

        return $this;
    }

    /**
     * Get frsCode
     *
     * @return \StkFournisseur
     */
    public function getFrsCode()
    {
        return $this->frsCode;
    }
}
