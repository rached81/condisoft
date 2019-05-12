<?php



use Doctrine\ORM\Mapping as ORM;

/**
 * StkConsomationDetail
 *
 * @ORM\Table(name="stk_consomation_detail")
 * @ORM\Entity
 */
class StkConsomationDetail
{
    /**
     * @var string
     *
     * @ORM\Id
     * @ORM\GeneratedValue(strategy="NONE")
     * @ORM\OneToOne(targetEntity="StkConsomationEntete")
     * @ORM\JoinColumns({
     *   @ORM\JoinColumn(name="cons_code", referencedColumnName="cons_code")
     * })
     */
    private $consCode;

    /**
     * @var \StkArticle
     *
     * @ORM\Id
     * @ORM\GeneratedValue(strategy="NONE")
     * @ORM\OneToOne(targetEntity="StkArticle")
     * @ORM\JoinColumns({
     *   @ORM\JoinColumn(name="cons_artCode", referencedColumnName="art_code")
     * })
     */
    private $consArtcode;

    /**
     * @var integer
     *
     * @ORM\Column(name="cons_exercice", type="integer", nullable=true)
     */
    private $consExercice;

    /**
     * @var integer
     *
     * @ORM\Column(name="cons_seq", type="integer", nullable=true)
     */
    private $consSeq;

    /**
     * @var string
     *
     * @ORM\Column(name="cons_qte", type="string", length=45, nullable=true)
     */
    private $consQte;
    
       /**
     * @var float
     *
     * @ORM\Column(name="cons_qtedem", type="float", precision=10, scale=0, nullable=true)
     */
    private $consQtedem;

    /**
     * @var integer
     *
     * @ORM\Column(name="cons_traceCode", type="integer", nullable=true)
     */
    private $consTracecode;

    /**
     * @var integer
     *
     * @ORM\Column(name="Cons_lotTraceCode", type="integer", nullable=true)
     */
    private $consLottracecode;



    /**
     * Set consCode
     *
     * @param string $consCode
     *
     * @return StkConsomationDetail
     */
    public function setConsCode($consCode)
    {
        $this->consCode = $consCode;

        return $this;
    }

    /**
     * Get consCode
     *
     * @return string
     */
    public function getConsCode()
    {
        return $this->consCode;
    }

    /**
     * Set consArtcode
     *
     * @param string $consArtcode
     *
     * @return StkConsomationDetail
     */
    public function setConsArtcode($consArtcode)
    {
        $this->consArtcode = $consArtcode;

        return $this;
    }

    /**
     * Get consArtcode
     *
     * @return string
     */
    public function getConsArtcode()
    {
        return $this->consArtcode;
    }

    /**
     * Set consExercice
     *
     * @param integer $consExercice
     *
     * @return StkConsomationDetail
     */
    public function setConsExercice($consExercice)
    {
        $this->consExercice = $consExercice;

        return $this;
    }

    /**
     * Get consExercice
     *
     * @return integer
     */
    public function getConsExercice()
    {
        return $this->consExercice;
    }

    /**
     * Set consSeq
     *
     * @param integer $consSeq
     *
     * @return StkConsomationDetail
     */
    public function setConsSeq($consSeq)
    {
        $this->consSeq = $consSeq;

        return $this;
    }

    /**
     * Get consSeq
     *
     * @return integer
     */
    public function getConsSeq()
    {
        return $this->consSeq;
    }

    /**
     * Set consQte
     *
     * @param string $consQte
     *
     * @return StkConsomationDetail
     */
    public function setConsQte($consQte)
    {
        $this->consQte = $consQte;

        return $this;
    }

    /**
     * Get consQte
     *
     * @return string
     */
    public function getConsQte()
    {
        return $this->consQte;
    }
    
    
    
    /**
     * Set consQtedem
     *
     * @param string $consQtedem
     *
     * @return StkConsomationDetail
     */
    public function setConsQtedem($consQtedem)
    {
        $this->consQtedem = $consQtedem;

        return $this;
    }

    /**
     * Get consQtedem
     *
     * @return string
     */
    public function getConsQtedem()
    {
        return $this->consQtedem;
    }

    /**
     * Set consTracecode
     *
     * @param integer $consTracecode
     *
     * @return StkConsomationDetail
     */
    public function setConsTracecode($consTracecode)
    {
        $this->consTracecode = $consTracecode;

        return $this;
    }

    /**
     * Get consTracecode
     *
     * @return integer
     */
    public function getConsTracecode()
    {
        return $this->consTracecode;
    }

    /**
     * Set consLottracecode
     *
     * @param integer $consLottracecode
     *
     * @return StkConsomationDetail
     */
    public function setConsLottracecode($consLottracecode)
    {
        $this->consLottracecode = $consLottracecode;

        return $this;
    }

    /**
     * Get consLottracecode
     *
     * @return integer
     */
    public function getConsLottracecode()
    {
        return $this->consLottracecode;
    }
}
