<?php



use Doctrine\ORM\Mapping as ORM;

/**
 * Hera
 *
 * @ORM\Table(name="hera")
 * @ORM\Entity
 */
class Hera
{
    /**
     * @var integer
     *
     * @ORM\Column(name="idHERA", type="integer", nullable=false)
     * @ORM\Id
     * @ORM\GeneratedValue(strategy="IDENTITY")
     */
    private $idhera;

    /**
     * @var string
     *
     * @ORM\Column(name="HERAnom", type="string", length=45, nullable=true)
     */
    private $heranom;



    /**
     * Get idhera
     *
     * @return integer
     */
    public function getIdhera()
    {
        return $this->idhera;
    }

    /**
     * Set heranom
     *
     * @param string $heranom
     *
     * @return Hera
     */
    public function setHeranom($heranom)
    {
        $this->heranom = $heranom;

        return $this;
    }

    /**
     * Get heranom
     *
     * @return string
     */
    public function getHeranom()
    {
        return $this->heranom;
    }
}
