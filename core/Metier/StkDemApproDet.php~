<?php



use Doctrine\ORM\Mapping as ORM;

/**
 * StkDemApproDet
 *
 * @ORM\Table(name="stk_dem_appro_det", indexes={@ORM\Index(name="IDX_70DD644DDC14EBC6", columns={"demapro_code"})})
 * @ORM\Entity
 */
class StkDemApproDet
{

    
    /**
     * @var \StkArticle
     *
     * @ORM\Id
     * @ORM\GeneratedValue(strategy="NONE")
     * @ORM\OneToOne(targetEntity="StkArticle")
     * @ORM\JoinColumns({
     *   @ORM\JoinColumn(name="demapro_artCode", referencedColumnName="art_code")
     * })
     */
    private $demaproArtcode;

    /**
     * @var integer
     *
     * @ORM\Column(name="demapro_seq", type="integer", nullable=true)
     */
    private $demaproSeq;

    /**
     * @var float
     *
     * @ORM\Column(name="demapro_qte", type="float", precision=10, scale=0, nullable=true)
     */
    private $demaproQte;

    /**
     * @var float
     *
     * @ORM\Column(name="demapro_qteStk", type="float", precision=10, scale=0, nullable=true)
     */
    private $demaproQtestk;

    /**
     * @var \StkDemApproEnt
     *
     * @ORM\Id
     * @ORM\GeneratedValue(strategy="NONE")
     * @ORM\OneToOne(targetEntity="StkDemApproEnt")
     * @ORM\JoinColumns({
     *   @ORM\JoinColumn(name="demapro_code", referencedColumnName="demapro_code")
     * })
     */
    private $demaproCode;



    /**
     * Set demaproArtcode
     *
     * @param string $demaproArtcode
     *
     * @return StkDemApproDet
     */
    public function setDemaproArtcode($demaproArtcode)
    {
        $this->demaproArtcode = $demaproArtcode;

        return $this;
    }

    /**
     * Get demaproArtcode
     *
     * @return string
     */
    public function getDemaproArtcode()
    {
        return $this->demaproArtcode;
    }

    /**
     * Set demaproSeq
     *
     * @param integer $demaproSeq
     *
     * @return StkDemApproDet
     */
    public function setDemaproSeq($demaproSeq)
    {
        $this->demaproSeq = $demaproSeq;

        return $this;
    }

    /**
     * Get demaproSeq
     *
     * @return integer
     */
    public function getDemaproSeq()
    {
        return $this->demaproSeq;
    }

    /**
     * Set demaproQte
     *
     * @param float $demaproQte
     *
     * @return StkDemApproDet
     */
    public function setDemaproQte($demaproQte)
    {
        $this->demaproQte = $demaproQte;

        return $this;
    }

    /**
     * Get demaproQte
     *
     * @return float
     */
    public function getDemaproQte()
    {
        return $this->demaproQte;
    }

    /**
     * Set demaproQtestk
     *
     * @param float $demaproQtestk
     *
     * @return StkDemApproDet
     */
    public function setDemaproQtestk($demaproQtestk)
    {
        $this->demaproQtestk = $demaproQtestk;

        return $this;
    }

    /**
     * Get demaproQtestk
     *
     * @return float
     */
    public function getDemaproQtestk()
    {
        return $this->demaproQtestk;
    }

    /**
     * Set demaproCode
     *
     * @param \StkDemApproEnt $demaproCode
     *
     * @return StkDemApproDet
     */
    public function setDemaproCode(\StkDemApproEnt $demaproCode)
    {
        $this->demaproCode = $demaproCode;

        return $this;
    }

    /**
     * Get demaproCode
     *
     * @return \StkDemApproEnt
     */
    public function getDemaproCode()
    {
        return $this->demaproCode;
    }
}
