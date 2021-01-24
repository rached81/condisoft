<?php



use Doctrine\ORM\Mapping as ORM;

/**
 * StkStock
 *
 * @ORM\Table(name="stk_stock", indexes={@ORM\Index(name="IDX_FE4077947E354607", columns={"art_code"})})
 * @ORM\Entity
 */
class StkStock
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
     * @var float
     *
     * @ORM\Column(name="stk_initial", type="float", precision=10, scale=0, nullable=true)
     */
    private $stkInitial;

    /**
     * @var float
     *
     * @ORM\Column(name="stk_entre", type="float", precision=10, scale=0, nullable=true)
     */
    private $stkEntre;

    /**
     * @var float
     *
     * @ORM\Column(name="stk_sortie", type="float", precision=10, scale=0, nullable=true)
     */
    private $stkSortie;

    /**
     * @var float
     *
     * @ORM\Column(name="stk_finale", type="float", precision=10, scale=0, nullable=true)
     */
    private $stkFinale;

    /**
     * @var float
     *
     * @ORM\Column(name="stk_alert", type="float", precision=10, scale=0, nullable=true)
     */
    private $stkAlert;

    /**
     * @var float
     *
     * @ORM\Column(name="stk_securite", type="float", precision=10, scale=0, nullable=true)
     */
    private $stkSecurite;

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
     * Set magCode
     *
     * @param integer $magCode
     *
     * @return StkStock
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
     * @return StkStock
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
     * Set stkInitial
     *
     * @param float $stkInitial
     *
     * @return StkStock
     */
    public function setStkInitial($stkInitial)
    {
        $this->stkInitial = $stkInitial;

        return $this;
    }

    /**
     * Get stkInitial
     *
     * @return float
     */
    public function getStkInitial()
    {
        return $this->stkInitial;
    }

    /**
     * Set stkEntre
     *
     * @param float $stkEntre
     *
     * @return StkStock
     */
    public function setStkEntre($stkEntre)
    {
        $this->stkEntre = $stkEntre;

        return $this;
    }

    /**
     * Get stkEntre
     *
     * @return float
     */
    public function getStkEntre()
    {
        return $this->stkEntre;
    }

    /**
     * Set stkSortie
     *
     * @param float $stkSortie
     *
     * @return StkStock
     */
    public function setStkSortie($stkSortie)
    {
        $this->stkSortie = $stkSortie;

        return $this;
    }

    /**
     * Get stkSortie
     *
     * @return float
     */
    public function getStkSortie()
    {
        return $this->stkSortie;
    }

    /**
     * Set stkFinale
     *
     * @param float $stkFinale
     *
     * @return StkStock
     */
    public function setStkFinale($stkFinale)
    {
        $this->stkFinale = $stkFinale;

        return $this;
    }

    /**
     * Get stkFinale
     *
     * @return float
     */
    public function getStkFinale()
    {
        return $this->stkFinale;
    }

    /**
     * Set stkAlert
     *
     * @param float $stkAlert
     *
     * @return StkStock
     */
    public function setStkAlert($stkAlert)
    {
        $this->stkAlert = $stkAlert;

        return $this;
    }

    /**
     * Get stkAlert
     *
     * @return float
     */
    public function getStkAlert()
    {
        return $this->stkAlert;
    }

    /**
     * Set stkSecurite
     *
     * @param float $stkSecurite
     *
     * @return StkStock
     */
    public function setStkSecurite($stkSecurite)
    {
        $this->stkSecurite = $stkSecurite;

        return $this;
    }

    /**
     * Get stkSecurite
     *
     * @return float
     */
    public function getStkSecurite()
    {
        return $this->stkSecurite;
    }

    /**
     * Set artCode
     *
     * @param \StkArticle $artCode
     *
     * @return StkStock
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
}
