<?php



use Doctrine\ORM\Mapping as ORM;

/**
 * Etatgen
 *
 * @ORM\Table(name="etatgen")
 * @ORM\Entity
 */
class Etatgen
{
    /**
     * @var integer
     *
     * @ORM\Column(name="idETAT", type="integer", nullable=false)
     * @ORM\Id
     * @ORM\GeneratedValue(strategy="IDENTITY")
     */
    private $idetat;

    /**
     * @var string
     *
     * @ORM\Column(name="ETAdesc", type="string", length=50, nullable=false)
     */
    private $etadesc;

    /**
     * @var string
     *
     * @ORM\Column(name="ETAparam", type="text", length=65535, nullable=false)
     */
    private $etaparam;

    /**
     * @var \DateTime
     *
     * @ORM\Column(name="ETAdatecr", type="datetime", nullable=false)
     */
    private $etadatecr;



    /**
     * Get idetat
     *
     * @return integer
     */
    public function getIdetat()
    {
        return $this->idetat;
    }

    /**
     * Set etadesc
     *
     * @param string $etadesc
     *
     * @return Etatgen
     */
    public function setEtadesc($etadesc)
    {
        $this->etadesc = $etadesc;

        return $this;
    }

    /**
     * Get etadesc
     *
     * @return string
     */
    public function getEtadesc()
    {
        return $this->etadesc;
    }

    /**
     * Set etaparam
     *
     * @param string $etaparam
     *
     * @return Etatgen
     */
    public function setEtaparam($etaparam)
    {
        $this->etaparam = $etaparam;

        return $this;
    }

    /**
     * Get etaparam
     *
     * @return string
     */
    public function getEtaparam()
    {
        return $this->etaparam;
    }

    /**
     * Set etadatecr
     *
     * @param \DateTime $etadatecr
     *
     * @return Etatgen
     */
    public function setEtadatecr($etadatecr)
    {
        $this->etadatecr = $etadatecr;

        return $this;
    }

    /**
     * Get etadatecr
     *
     * @return \DateTime
     */
    public function getEtadatecr()
    {
        return $this->etadatecr;
    }
}
