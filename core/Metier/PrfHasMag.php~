<?php



use Doctrine\ORM\Mapping as ORM;

/**
 * PrfHasMag
 *
 * @ORM\Table(name="prf_has_mag", indexes={@ORM\Index(name="fk_PRF_has_MAG_MAG1_idx", columns={"MAGCOD"}), @ORM\Index(name="fk_PRF_has_MAG_PRF1_idx", columns={"idPRF"})})
 * @ORM\Entity
 */
class PrfHasMag
{
    /**
     * @var integer
     *
     * @ORM\Column(name="idPRF", type="integer", nullable=false)
     * @ORM\Id
     * @ORM\GeneratedValue(strategy="NONE")
     */
    private $idprf;

    /**
     * @var integer
     *
     * @ORM\Column(name="MAGCOD", type="integer", nullable=false)
     * @ORM\Id
     * @ORM\GeneratedValue(strategy="NONE")
     */
    private $magcod;



    /**
     * Set idprf
     *
     * @param integer $idprf
     *
     * @return PrfHasMag
     */
    public function setIdprf($idprf)
    {
        $this->idprf = $idprf;

        return $this;
    }

    /**
     * Get idprf
     *
     * @return integer
     */
    public function getIdprf()
    {
        return $this->idprf;
    }

    /**
     * Set magcod
     *
     * @param integer $magcod
     *
     * @return PrfHasMag
     */
    public function setMagcod($magcod)
    {
        $this->magcod = $magcod;

        return $this;
    }

    /**
     * Get magcod
     *
     * @return integer
     */
    public function getMagcod()
    {
        return $this->magcod;
    }
}
