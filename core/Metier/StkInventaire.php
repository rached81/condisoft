<?php



use Doctrine\ORM\Mapping as ORM;

/**
 * StkInventaire
 *
 * @ORM\Table(name="stk_inventaire", indexes={@ORM\Index(name="fk_stk_inventaire_stk_etat1_idx", columns={"inv_etat"}), @ORM\Index(name="IDX_5F7D50397E354607", columns={"art_code"})})
 * @ORM\Entity
 */
class StkInventaire
{
    /**
     * @var integer
     *
     * @ORM\Column(name="mag_code", type="integer", nullable=false)
     * @ORM\Id
     * @ORM\GeneratedValue(strategy="NONE")
     */
    private $magCode;

    /**
     * @var integer
     *
     * @ORM\Column(name="exercice", type="integer", nullable=false)
     * @ORM\Id
     * @ORM\GeneratedValue(strategy="NONE")
     */
    private $exercice;

    /**
     * @var \DateTime
     *
     * @ORM\Column(name="invt_date", type="date", nullable=true)
     */
    private $invtDate;

    /**
     * @var float
     *
     * @ORM\Column(name="invt_qte", type="float", precision=10, scale=0, nullable=true)
     */
    private $invtQte;

    /**
     * @var float
     *
     * @ORM\Column(name="inv_stkaDateInvt", type="float", precision=10, scale=0, nullable=true)
     */
    private $invStkadateinvt;

    /**
     * @var float
     *
     * @ORM\Column(name="inv_ecart", type="float", precision=10, scale=0, nullable=true)
     */
    private $invEcart;

    /**
     * @var integer
     *
     * @ORM\Column(name="inv_num_borderau", type="integer", nullable=true)
     */
    private $invNumBorderau;

    /**
     * @var string
     *
     * @ORM\Column(name="inv_observation", type="string", length=200, nullable=true)
     */
    private $invObservation;

    /**
     * @var \StkArticle
     *
     * @ORM\Id
     * @ORM\GeneratedValue(strategy="NONE")
     * @ORM\OneToOne(targetEntity="StkArticle")
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
     *   @ORM\JoinColumn(name="inv_etat", referencedColumnName="etat_code")
     * })
     */
    private $invEtat;



    /**
     * Set magCode
     *
     * @param integer $magCode
     *
     * @return StkInventaire
     */
    public function setMagCode($magCode)
    {
        $this->magCode = $magCode;

        return $this;
    }

    /**
     * Get magCode
     *
     * @return integer
     */
    public function getMagCode()
    {
        return $this->magCode;
    }

    /**
     * Set exercice
     *
     * @param integer $exercice
     *
     * @return StkInventaire
     */
    public function setExercice($exercice)
    {
        $this->exercice = $exercice;

        return $this;
    }

    /**
     * Get exercice
     *
     * @return integer
     */
    public function getExercice()
    {
        return $this->exercice;
    }

    /**
     * Set invtDate
     *
     * @param \DateTime $invtDate
     *
     * @return StkInventaire
     */
    public function setInvtDate($invtDate)
    {
        $this->invtDate = $invtDate;

        return $this;
    }

    /**
     * Get invtDate
     *
     * @return \DateTime
     */
    public function getInvtDate()
    {
        return $this->invtDate;
    }

    /**
     * Set invtQte
     *
     * @param float $invtQte
     *
     * @return StkInventaire
     */
    public function setInvtQte($invtQte)
    {
        $this->invtQte = $invtQte;

        return $this;
    }

    /**
     * Get invtQte
     *
     * @return float
     */
    public function getInvtQte()
    {
        return $this->invtQte;
    }

    /**
     * Set invStkadateinvt
     *
     * @param float $invStkadateinvt
     *
     * @return StkInventaire
     */
    public function setInvStkadateinvt($invStkadateinvt)
    {
        $this->invStkadateinvt = $invStkadateinvt;

        return $this;
    }

    /**
     * Get invStkadateinvt
     *
     * @return float
     */
    public function getInvStkadateinvt()
    {
        return $this->invStkadateinvt;
    }

    /**
     * Set invEcart
     *
     * @param float $invEcart
     *
     * @return StkInventaire
     */
    public function setInvEcart($invEcart)
    {
        $this->invEcart = $invEcart;

        return $this;
    }

    /**
     * Get invEcart
     *
     * @return float
     */
    public function getInvEcart()
    {
        return $this->invEcart;
    }

    /**
     * Set invNumBorderau
     *
     * @param integer $invNumBorderau
     *
     * @return StkInventaire
     */
    public function setInvNumBorderau($invNumBorderau)
    {
        $this->invNumBorderau = $invNumBorderau;

        return $this;
    }

    /**
     * Get invNumBorderau
     *
     * @return integer
     */
    public function getInvNumBorderau()
    {
        return $this->invNumBorderau;
    }

    /**
     * Set invObservation
     *
     * @param string $invObservation
     *
     * @return StkInventaire
     */
    public function setInvObservation($invObservation)
    {
        $this->invObservation = $invObservation;

        return $this;
    }

    /**
     * Get invObservation
     *
     * @return string
     */
    public function getInvObservation()
    {
        return $this->invObservation;
    }

    /**
     * Set artCode
     *
     * @param \StkArticle $artCode
     *
     * @return StkInventaire
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
     * Set invEtat
     *
     * @param \StkEtat $invEtat
     *
     * @return StkInventaire
     */
    public function setInvEtat(\StkEtat $invEtat = null)
    {
        $this->invEtat = $invEtat;

        return $this;
    }

    /**
     * Get invEtat
     *
     * @return \StkEtat
     */
    public function getInvEtat()
    {
        return $this->invEtat;
    }
}
