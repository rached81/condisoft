<?php



use Doctrine\ORM\Mapping as ORM;

/**
 * StkEtat
 *
 * @ORM\Table(name="stk_rds")
 * @ORM\Entity
 */
class StkRds
{
    /**
     * @var integer
     *
     * @ORM\Column(name="rds_code", type="integer", nullable=false)
     * @ORM\Id
     * @ORM\GeneratedValue(strategy="IDENTITY")
     */
    private $rdsCode;

    /**
     * @var string
     *
     * @ORM\Column(name="rds_libelle", type="string", length=500, nullable=true)
     */
    private $rdsLibelle;
    
    
       /**
     * @var integer
     *
     * @ORM\Column(name="rds_exercice", type="integer", nullable=true)
     */
    private $rdsExercice;
    
    
     /**
     * @var integer
     *
     * @ORM\Column(name="rds_mag", type="integer", nullable=true)
     */
    private $rdsMag;

    
     /**
     * @var \StkArticle
     *
     * 
     * 
     * @ORM\ManyToOne(targetEntity="StkArticle")
     * @ORM\JoinColumns({
     *   @ORM\JoinColumn(name="rds_artCode", referencedColumnName="art_code")
     * })
     */
    private $rdsArtcode;
    
    
    
    
      /**
     * @var float
     *
     * @ORM\Column(name="rds_qte", type="float", precision=10, scale=0, nullable=true)
     */
    private $rdsQte;
    
    
     /**
     * @var \DateTime
     *
     * @ORM\Column(name="rds_date", type="date", nullable=true)
     */
    private $rdsDate;



   

    /**
     * Get rdsCode
     *
     * @return integer
     */
    public function getRdsCode()
    {
        return $this->rdsCode;
    }

    /**
     * Set rdsLibelle
     *
     * @param string $rdsLibelle
     *
     * @return StkRds
     */
    public function setRdsLibelle($rdsLibelle)
    {
        $this->rdsLibelle = $rdsLibelle;

        return $this;
    }

    /**
     * Get rdsLibelle
     *
     * @return string
     */
    public function getRdsLibelle()
    {
        return $this->rdsLibelle;
    }

    /**
     * Set rdsExercice
     *
     * @param integer $rdsExercice
     *
     * @return StkRds
     */
    public function setRdsExercice($rdsExercice)
    {
        $this->rdsExercice = $rdsExercice;

        return $this;
    }

    /**
     * Get rdsExercice
     *
     * @return integer
     */
    public function getRdsExercice()
    {
        return $this->rdsExercice;
    }

    /**
     * Set rdsMag
     *
     * @param integer $rdsMag
     *
     * @return StkRds
     */
    public function setRdsMag($rdsMag)
    {
        $this->rdsMag = $rdsMag;

        return $this;
    }

    /**
     * Get rdsMag
     *
     * @return integer
     */
    public function getRdsMag()
    {
        return $this->rdsMag;
    }

    /**
     * Set rdsQte
     *
     * @param float $rdsQte
     *
     * @return StkRds
     */
    public function setRdsQte($rdsQte)
    {
        $this->rdsQte = $rdsQte;

        return $this;
    }

    /**
     * Get rdsQte
     *
     * @return float
     */
    public function getRdsQte()
    {
        return $this->rdsQte;
    }

    /**
     * Set rdsArtcode
     *
     * @param \StkArticle $rdsArtcode
     *
     * @return StkRds
     */
    public function setRdsArtcode(\StkArticle $rdsArtcode = null)
    {
        $this->rdsArtcode = $rdsArtcode;

        return $this;
    }

    /**
     * Get rdsArtcode
     *
     * @return \StkArticle
     */
    public function getRdsArtcode()
    {
        return $this->rdsArtcode;
    }

    /**
     * Set rdsDate
     *
     * @param \DateTime $rdsDate
     *
     * @return StkRds
     */
    public function setRdsDate($rdsDate)
    {
        $this->rdsDate = $rdsDate;

        return $this;
    }

    /**
     * Get rdsDate
     *
     * @return \DateTime
     */
    public function getRdsDate()
    {
        return $this->rdsDate;
    }
}
