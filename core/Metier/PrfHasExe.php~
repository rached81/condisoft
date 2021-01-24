<?php



use Doctrine\ORM\Mapping as ORM;

/**
 * PrfHasExe
 *
 * @ORM\Table(name="prf_has_exe")
 * @ORM\Entity
 */
class PrfHasExe
{
    /**
     * @var integer
     *
     * @ORM\Column(name="id", type="integer", nullable=false)
     * @ORM\Id
     * @ORM\GeneratedValue(strategy="IDENTITY")
     */
    private $id;

    /**
     * @var integer
     *
     * @ORM\Column(name="idPRF", type="integer", nullable=false)
     */
    private $idprf;

    /**
     * @var integer
     *
     * @ORM\Column(name="exe", type="integer", nullable=false)
     */
    private $exe;



    /**
     * Get id
     *
     * @return integer
     */
    public function getId()
    {
        return $this->id;
    }

    /**
     * Set idprf
     *
     * @param integer $idprf
     *
     * @return PrfHasExe
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
     * Set exe
     *
     * @param integer $exe
     *
     * @return PrfHasExe
     */
    public function setExe($exe)
    {
        $this->exe = $exe;

        return $this;
    }

    /**
     * Get exe
     *
     * @return integer
     */
    public function getExe()
    {
        return $this->exe;
    }
}
