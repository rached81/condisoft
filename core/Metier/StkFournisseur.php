<?php



use Doctrine\ORM\Mapping as ORM;

/**
 * StkFournisseur
 *
 * @ORM\Table(name="stk_fournisseur", indexes={@ORM\Index(name="fk_stk_fournisseur_stk_etat1_idx", columns={"frs_etatCode"}), @ORM\Index(name="fk_stk_fournisseur_stk_type_fournisseur1_idx", columns={"frs_typeCode"})})
 * @ORM\Entity
 */
class StkFournisseur
{
    /**
     * @var integer
     *
     * @ORM\Column(name="frs_code", type="integer", nullable=false)
     * @ORM\Id
     * @ORM\GeneratedValue(strategy="AUTO")
     */
    private $frsCode;

    /**
     * @var string
     *
     * @ORM\Column(name="frs_raisonSociale", type="string", length=150, nullable=true)
     */
    private $frsRaisonsociale;

    /**
     * @var string
     *
     * @ORM\Column(name="frs_adresse", type="string", length=150, nullable=true)
     */
    private $frsAdresse;

    /**
     * @var string
     *
     * @ORM\Column(name="frs_tel", type="string", length=20, nullable=true)
     */
    private $frsTel;

    /**
     * @var string
     *
     * @ORM\Column(name="frs_fax", type="string", length=20, nullable=true)
     */
    private $frsFax;
    
       /**
     * @var string
     *
     * @ORM\Column(name="frs_mf", type="string", length=40, nullable=true)
     */
    private $frsMf;

    /**
     * @var string
     *
     * @ORM\Column(name="frs_email", type="string", length=100, nullable=true)
     */
    private $frsEmail;

    /**
     * @var string
     *
     * @ORM\Column(name="frs_logo", type="string", length=200, nullable=true)
     */
    private $frsLogo;

    /**
     * @var \StkEtat
     *
     * @ORM\ManyToOne(targetEntity="StkEtat")
     * @ORM\JoinColumns({
     *   @ORM\JoinColumn(name="frs_etatCode", referencedColumnName="etat_code")
     * })
     */
    private $frsEtatcode;

    /**
     * @var \StkTypeFournisseur
     *
     * @ORM\ManyToOne(targetEntity="StkTypeFournisseur")
     * @ORM\JoinColumns({
     *   @ORM\JoinColumn(name="frs_typeCode", referencedColumnName="typfrs_code")
     * })
     */
    private $frsTypecode;



    /**
     * Get frsCode
     *
     * @return integer
     */
    public function getFrsCode()
    {
        return $this->frsCode;
    }
    
     /**
     * Set frsCode
     *
     * @param string $frsCode
     *
     * @return StkFournisseur
     */
    public function setFrsCode($frsCode)
    {
        $this->frsCode = $frsCode;

        return $this;
    }

    /**
     * Set frsRaisonsociale
     *
     * @param string $frsRaisonsociale
     *
     * @return StkFournisseur
     */
    public function setFrsRaisonsociale($frsRaisonsociale)
    {
        $this->frsRaisonsociale = $frsRaisonsociale;

        return $this;
    }

    /**
     * Get frsRaisonsociale
     *
     * @return string
     */
    public function getFrsRaisonsociale()
    {
        return $this->frsRaisonsociale;
    }

    /**
     * Set frsAdresse
     *
     * @param string $frsAdresse
     *
     * @return StkFournisseur
     */
    public function setFrsAdresse($frsAdresse)
    {
        $this->frsAdresse = $frsAdresse;

        return $this;
    }

    /**
     * Get frsAdresse
     *
     * @return string
     */
    public function getFrsAdresse()
    {
        return $this->frsAdresse;
    }

    /**
     * Set frsTel
     *
     * @param string $frsTel
     *
     * @return StkFournisseur
     */
    public function setFrsTel($frsTel)
    {
        $this->frsTel = $frsTel;

        return $this;
    }

    /**
     * Get frsTel
     *
     * @return string
     */
    public function getFrsTel()
    {
        return $this->frsTel;
    }

    /**
     * Set frsFax
     *
     * @param string $frsFax
     *
     * @return StkFournisseur
     */
    public function setFrsFax($frsFax)
    {
        $this->frsFax = $frsFax;

        return $this;
    }

    /**
     * Get frsFax
     *
     * @return string
     */
    public function getFrsFax()
    {
        return $this->frsFax;
    }

    /**
     * Set frsEmail
     *
     * @param string $frsEmail
     *
     * @return StkFournisseur
     */
    public function setFrsEmail($frsEmail)
    {
        $this->frsEmail = $frsEmail;

        return $this;
    }

    /**
     * Get frsEmail
     *
     * @return string
     */
    public function getFrsEmail()
    {
        return $this->frsEmail;
    }

    /**
     * Set frsLogo
     *
     * @param string $frsLogo
     *
     * @return StkFournisseur
     */
    public function setFrsLogo($frsLogo)
    {
        $this->frsLogo = $frsLogo;

        return $this;
    }

    /**
     * Get frsLogo
     *
     * @return string
     */
    public function getFrsLogo()
    {
        return $this->frsLogo;
    }

    /**
     * Set frsEtatcode
     *
     * @param \StkEtat $frsEtatcode
     *
     * @return StkFournisseur
     */
    public function setFrsEtatcode(\StkEtat $frsEtatcode = null)
    {
        $this->frsEtatcode = $frsEtatcode;

        return $this;
    }

    /**
     * Get frsEtatcode
     *
     * @return \StkEtat
     */
    public function getFrsEtatcode()
    {
        return $this->frsEtatcode;
    }

    /**
     * Set frsTypecode
     *
     * @param \StkTypeFournisseur $frsTypecode
     *
     * @return StkFournisseur
     */
    public function setFrsTypecode(\StkTypeFournisseur $frsTypecode = null)
    {
        $this->frsTypecode = $frsTypecode;

        return $this;
    }

    /**
     * Get frsTypecode
     *
     * @return \StkTypeFournisseur
     */
    public function getFrsTypecode()
    {
        return $this->frsTypecode;
    }

    /**
     * Set frsMf
     *
     * @param string $frsMf
     *
     * @return StkFournisseur
     */
    public function setFrsMf($frsMf)
    {
        $this->frsMf = $frsMf;

        return $this;
    }

    /**
     * Get frsMf
     *
     * @return string
     */
    public function getFrsMf()
    {
        return $this->frsMf;
    }
}
