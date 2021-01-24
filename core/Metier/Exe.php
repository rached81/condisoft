<?php



use Doctrine\ORM\Mapping as ORM;

/**
 * Exe
 *
 * @ORM\Table(name="exe")
 * @ORM\Entity
 */
class Exe
{
    /**
     * @var integer
     *
     * @ORM\Column(name="exe", type="integer", nullable=false)
     * @ORM\Id
     * @ORM\GeneratedValue(strategy="IDENTITY")
     */
    private $exe;

    /**
     * @var integer
     *
     * @ORM\Column(name="idETAT", type="integer", nullable=false)
     */
    private $idetat;



    /**
     * Get exe
     *
     * @return integer
     */
    public function getExe()
    {
        return $this->exe;
    }

    /**
     * Set idetat
     *
     * @param integer $idetat
     *
     * @return Exe
     */
    public function setIdetat($idetat)
    {
        $this->idetat = $idetat;

        return $this;
    }

    /**
     * Get idetat
     *
     * @return integer
     */
    public function getIdetat()
    {
        return $this->idetat;
    }
}
