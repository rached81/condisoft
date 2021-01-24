<?php



use Doctrine\ORM\Mapping as ORM;

/**
 * Grbdroit
 *
 * @ORM\Table(name="grbdroit")
 * @ORM\Entity
 */
class Grbdroit
{
    /**
     * @var integer
     *
     * @ORM\Column(name="idGRBDROIT", type="integer", nullable=false)
     * @ORM\Id
     * @ORM\GeneratedValue(strategy="IDENTITY")
     */
    private $idgrbdroit;

    /**
     * @var string
     *
     * @ORM\Column(name="GRBDROITnom", type="string", length=45, nullable=true)
     */
    private $grbdroitnom;

    /**
     * @var \DateTime
     *
     * @ORM\Column(name="GRBDROITdcr", type="date", nullable=true)
     */
    private $grbdroitdcr;



    /**
     * Get idgrbdroit
     *
     * @return integer
     */
    public function getIdgrbdroit()
    {
        return $this->idgrbdroit;
    }

    /**
     * Set grbdroitnom
     *
     * @param string $grbdroitnom
     *
     * @return Grbdroit
     */
    public function setGrbdroitnom($grbdroitnom)
    {
        $this->grbdroitnom = $grbdroitnom;

        return $this;
    }

    /**
     * Get grbdroitnom
     *
     * @return string
     */
    public function getGrbdroitnom()
    {
        return $this->grbdroitnom;
    }

    /**
     * Set grbdroitdcr
     *
     * @param \DateTime $grbdroitdcr
     *
     * @return Grbdroit
     */
    public function setGrbdroitdcr($grbdroitdcr)
    {
        $this->grbdroitdcr = $grbdroitdcr;

        return $this;
    }

    /**
     * Get grbdroitdcr
     *
     * @return \DateTime
     */
    public function getGrbdroitdcr()
    {
        return $this->grbdroitdcr;
    }
}
