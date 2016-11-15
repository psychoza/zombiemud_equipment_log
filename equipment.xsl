<?xml version="1.0" encoding="ISO-8859-1"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
  <xsl:template match="/">
    <html>
      <head>
        <meta name="author" content="Jesse Hutchison" />
        <link rel="stylesheet" type="text/css" href="styles/reset.css" />
        <link rel="stylesheet" type="text/css" href="styles/equipment.css" />
      </head>
      <body style="background-color: #CCCCCC;">
        <div id="monsterlog">
          <h1><img src="https://dl.dropboxusercontent.com/u/63437940/ZombieMUD/images/zombiehead.jpg" width="18" height="20" style="vertical-align: middle;" /> Psychoza's ZombieMUD Equipment Log <img src="https://dl.dropboxusercontent.com/u/63437940/ZombieMUD/images/zombiehead.jpg" width="18" height="20" style="vertical-align: middle;" /></h1>
          <h2>
            <a href="http://zombiemud.org/">
              <img src="https://dl.dropboxusercontent.com/u/63437940/ZombieMUD/images/banner1c.jpg" alt="Join us at ZombieMUD.org" width="88" height="31" border="0" />
            </a>
          </h2>
          <h2>-This is very much a Work In Progress-</h2>
          <br />
          <div class="infospan">
            <xsl:for-each select="Database/Items/Armours/Slots/Slot">
              -<a><xsl:attribute name="href">equipment.xml#<xsl:value-of select="Name"/></xsl:attribute><xsl:value-of select="Name"/></a>
            </xsl:for-each><br /><br />
            <!-- <xsl:for-each select="Database/Items/Weapons/Item">
              <xsl:sort select="Slot"/>
              -<a><xsl:attribute name="href">equipment.xml#<xsl:value-of select="Slot"/></xsl:attribute><xsl:value-of select="Slot"/></a>
            </xsl:for-each><br /><br /> -->
            Armours...<xsl:value-of select="count(Database/Items/Armours/Item/Slots/Slot/Items/Item)" /><br/>
            Weapons...<xsl:value-of select="count(Database/Items/Weapons/Item)" />
          </div>
          <br />
          <h1>-Armours-</h1>
          <table class="equipmentTable">
            <tr>
              <th>Type</th>
              <th>Name</th>
              <th>Armour Class</th>
              <th>Stats</th>
              <th>Resists</th>
              <th>Extra</th>
              <th>Decay</th>
            </tr>
            <xsl:for-each select="Database/Items/Armours/Slots/Slot">
              <xsl:for-each select="Items/Item">
                <xsl:sort select="Name"/>
                <tr>
                  <td class="slot"><xsl:attribute name="slot"><xsl:value-of select="Slot"/></xsl:attribute><xsl:value-of select="Slot"/></td>
                  <td class="item"><xsl:value-of select="Name"/></td>
                  <td class="item"><xsl:value-of select="AC"/> (<xsl:value-of select="GeneralAC"/> in general)</td>
                  <td class="item">
                    <table class="itemTable">
                      <xsl:for-each select="Stats/Stat">
                        <tr>
                          <td><xsl:value-of select="Desc"/></td>
                        </tr>
                      </xsl:for-each>
                    </table>
                  </td>
                  <td class="item">
                    <table class="itemTable">
                      <xsl:for-each select="Resists/Resist">
                        <tr>
                          <td><xsl:value-of select="Desc"/></td>
                        </tr>
                      </xsl:for-each>
                    </table>
                  </td>
                  <td class="item">
                    <table class="itemTable">
                      <xsl:for-each select="Extra/Line">
                        <tr>
                          <td><xsl:value-of select="Desc"/></td>
                        </tr>
                      </xsl:for-each>
                    </table>
                  </td>
                  <td class="decay"><xsl:value-of select="Decay"/></td>
                </tr>
              </xsl:for-each>
            </xsl:for-each>
          </table>
          <br/>
          <br/>
          <br/>
          <h1>-Weapons-</h1>
          <table class="equipmentTable">
            <tr>
              <th>Type</th>
              <th>Name</th>
              <th>Weapon Class</th>
              <th>Hit / Damage</th>
              <th>Preferences</th>
              <th>Stats</th>
              <th>Resists</th>
              <th>Skills / Spells</th>
              <th>Extra</th>
              <th>Decay</th>
            </tr>
            <xsl:for-each select="Database/Items/Weapons/Item">
              <xsl:sort select="Slot"/>
              <tr>
                <td class="item"><xsl:value-of select="Slot"/></td>
                <td class="item"><xsl:value-of select="Name"/></td>
                <td class="item"><xsl:value-of select="WC"/> (<xsl:value-of select="GeneralWC"/> in general)</td>
                <td class="item">
                  <table class="itemTable">
                    <xsl:for-each select="HitDamages/HitDamage">
                      <tr>
                        <td><xsl:value-of select="Desc"/></td>
                      </tr>
                    </xsl:for-each>
                  </table>
                </td>
                <td class="item"><xsl:value-of select="Preference"/></td>
                <td class="item">
                  <table class="itemTable">
                    <xsl:for-each select="Stats/Stat">
                      <tr>
                        <td><xsl:value-of select="Desc"/></td>
                      </tr>
                    </xsl:for-each>
                  </table>
                </td>
                <td class="item"><xsl:value-of select="Resists"/></td>
                <td class="item"><xsl:value-of select="SkillSpells"/></td>
                <td class="item">
                  <table class="itemTable">
                    <xsl:for-each select="Extra/Line">
                      <tr>
                        <td><xsl:value-of select="Desc"/></td>
                      </tr>
                    </xsl:for-each>
                  </table>
                </td>
                <td class="decay"><xsl:value-of select="Decay"/></td>
              </tr>
            </xsl:for-each>
          </table>
        </div>
      </body>
    </html>
  </xsl:template>
</xsl:stylesheet>
