<?php



use Doctrine\ORM\Mapping as ORM;

/**
 * StkEntreDetail
 *
 * @ORM\Table(name="stk_entre_detail", indexes={@ORM\Index(name="fk_stk_entre_detail_stk_tva1_idx", columns={"tva_code"}), @ORM\Index(name="fk_stk_entre_detail_stk_article1_idx", columns={"ent_artCode"}), @ORM\Index(name="IDX_3ADC24D75A01BE47", columns={"ent_code"})})
 * @ORM\Entity
 */
class StkEntreDetail
{
    /**
     * @var integer
     *
     * @ORM\Column(name="ent_exercice", type="integer", nullable=true)
     */
    private $entExercice;

    /**
     * @var float
     *
     * @ORM\Column(name="ent_qte", type="float", precision=10, scale=0, nullable=true)
     */
    private $entQte;

    /**
     * @var float
     *
     * @ORM\Column(name="ent_qteSurplus", type="float", precision=10, scale=0, nullable=true)
     */
    private $entQtesurplus;

    /**
     * @var \DateTime
     *
     * @ORM\Column(name="ent_datePeromption", type="datetime", nullable=true)
     */
    private $entDateperomption;

    /**
     * @var float
     *
     * @ORM\Column(name="ent_PU", type="float", precision=10, scale=0, nullable=true)
     */
    private $entPu;

    /**
     * @var string
     *
     * @ORM\Column(name="ent_PTT", type="string", length=45, nullable=true)
     */
    private $entPtt;

    /**
     * @var float
     *
     * @ORM\Column(name="ent_prixTotale", type="float", precision=10, scale=0, nullable=true)
     */
    private $entPrixtotale;

    /**
     * @var string
     *
     * @ORM\Column(name="ent_codeTrace", type="string", length=45, nullable=true)
     */
    private $entCodetrace;

    /**
     * @var string
     *
     * @ORM\Column(name="ent_lotCodeTrace", type="string", length=45, nullable=true)
     */
    private $entLotcodetrace;

    /**
     * @var integer
     *
     * @ORM\Column(name="ent_artTraceEtatCode", type="integer", nullable=true)
     */
    private $entArttraceetatcode;

    /**
     * @var integer
     *
     * @ORM\Column(name="ent_seq", type="integer", nullable=true)
     */
    private $entSeq;

    /**
     * @var \StkArticle
     *
     * @ORM\Id
     * @ORM\GeneratedValue(strategy="NONE")
     * @ORM\OneToOne(targetEntity="StkArticle")
     * @ORM\JoinColumns({
     *   @ORM\JoinColumn(name="ent_artCode", referencedColumnName="art_code")
     * })
     */
    private $entArtcode;

    /**
     * @var \StkEntreEntete
     *
     * @ORM\Id
     * @ORM\GeneratedValue(strategy="NONE")
     * @ORM\OneToOne(targetEntity="StkEntreEntete")
     * @ORM\JoinColumns({
     *   @ORM\JoinColumn(name="ent_code", referencedColumnName="ent_code")
     * })
     */
    private $entCode;

    /**
     * @var \StkTva
     *
     * @ORM\ManyToOne(targetEntity="StkTva")
     * @ORM\JoinColumns({
     *   @ORM\JoinColumn(name="tva_code", referencedColumnName="tva_code")
     * })
     */
    private $tvaCode;



    /**
     * Set entExercice
     *
     * @param integer $entExercice
     *
     * @return StkEntreDetail
     */
    public function setEntExercice($entExercice)
    {
        $this->entExercice = $entExercice;

        return $this;
    }

    /**
     * Get entExercice
     *
     * @return integer
     */
    public function getEntExercice()
    {
        return $this->entExercice;
    }

    /**
     * Set entQte
     *
     * @param float $entQte
     *
     * @return StkEntreDetail
     */
    public function setEntQte($entQte)
    {
        $this->entQte = $entQte;

        return $this;
    }

    /**
     * Get entQte
     *
     * @return float
     */
    public function getEntQte()
    {
        return $this->entQte;
    }

    /**
     * Set entQtesurplus
     *
     * @param float $entQtesurplus
     *
     * @return StkEntreDetail
     */
    public function setEntQtesurplus($entQtesurplus)
    {
        $this->entQtesurplus = $entQtesurplus;

        return $this;
    }

    /**
     * Get entQtesurplus
     *
     * @return float
     */
    public function getEntQtesurplus()
    {
        return $this->entQtesurplus;
    }

    /**
     * Set entDateperomption
     *
     * @param \DateTime $entDateperomption
     *
     * @return StkEntreDetail
     */
    public function setEntDateperomption($entDateperomption)
    {
        $this->entDateperomption = $entDateperomption;

        return $this;
    }

    /**
     * Get entDateperomption
     *
     * @return \DateTime
     */
    public function getEntDateperomption()
    {
        return $this->entDateperomption;
    }

    /**
     * Set entPu
     *
     * @param float $entPu
     *
     * @return StkEntreDetail
     */
    public function setEntPu($entPu)
    {
        $this->entPu = $entPu;

        return $this;
    }

    /**
     * Get entPu
     *
     * @return float
     */
    public function getEntPu()
    {
        return $this->entPu;
    }

    /**
     * Set entPtt
     *
     * @param string $entPtt
     *
     * @return StkEntreDetail
     */
    public function setEntPtt($entPtt)
    {
        $this->entPtt = $entPtt;

        return $this;
    }

    /**
     * Get entPtt
     *
     * @return string
     */
    public function getEntPtt()
    {
        return $this->entPtt;
    }

    /**
     * Set entPrixtotale
     *
     * @param float $entPrixtotale
     *
     * @return StkEntreDetail
     */
    public function setEntPrixtotale($entPrixtotale)
    {
        $this->entPrixtotale = $entPrixtotale;

        return $this;
    }

    /**
     * Get entPrixtotale
     *
     * @return float
     */
    public function getEntPrixtotale()
    {
        return $this->entPrixtotale;
    }

    /**
     * Set entCodetrace
     *
     * @param string $entCodetrace
     *
     * @return StkEntreDetail
     */
    public function setEntCodetrace($entCodetrace)
    {
        $this->entCodetrace = $entCodetrace;

        return $this;
    }

    /**
     * Get entCodetrace
     *
     * @return string
     */
    public function getEntCodetrace()
    {
        return $this->entCodetrace;
    }

    /**
     * Set entLotcodetrace
     *
     * @param string $entLotcodetrace
     *
     * @return StkEntreDetail
     */
    public function setEntLotcodetrace($entLotcodetrace)
    {
        $this->entLotcodetrace = $entLotcodetrace;

        return $this;
    }

    /**
     * Get entLotcodetrace
     *
     * @return string
     */
    public function getEntLotcodetrace()
    {
        return $this->entLotcodetrace;
    }

    /**
     * Set entArttraceetatcode
     *
     * @param integer $entArttraceetatcode
     *
     * @return StkEntreDetail
     */
    public function setEntArttraceetatcode($entArttraceetatcode)
    {
        $this->entArttraceetatcode = $entArttraceetatcode;

        return $this;
    }

    /**
     * Get entArttraceetatcode
     *
     * @return integer
     */
    public function getEntArttraceetatcode()
    {
        return $this->entArttraceetatcode;
    }

    /**
     * Set entSeq
     *
     * @param integer $entSeq
     *
     * @return StkEntreDetail
     */
    public function setEntSeq($entSeq)
    {
        $this->entSeq = $entSeq;

        return $this;
    }

    /**
     * Get entSeq
     *
     * @return integer
     */
    public function getEntSeq()
    {
        return $this->entSeq;
    }

    /**
     * Set entArtcode
     *
     * @param \StkArticle $entArtcode
     *
     * @return StkEntreDetail
     */
    public function setEntArtcode(\StkArticle $entArtcode)
    {
        $this->entArtcode = $entArtcode;

        return $this;
    }

    /**
     * Get entArtcode
     *
     * @return \StkArticle
     */
    public function getEntArtcode()
    {
        return $this->entArtcode;
    }

    /**
     * Set entCode
     *
     * @param \StkEntreEntete $entCode
     *
     * @return StkEntreDetail
     */
    public function setEntCode(\StkEntreEntete $entCode)
    {
        $this->entCode = $entCode;

        return $this;
    }

    /**
     * Get entCode
     *
     * @return \StkEntreEntete
     */
    public function getEntCode()
    {
        return $this->entCode;
    }

    /**
     * Set tvaCode
     *
     * @param \StkTva $tvaCode
     *
     * @return StkEntreDetail
     */
    public function setTvaCode(\StkTva $tvaCode = null)
    {
        $this->tvaCode = $tvaCode;

        return $this;
    }

    /**
     * Get tvaCode
     *
     * @return \StkTva
     */
    public function getTvaCode()
    {
        return $this->tvaCode;
    }
}
