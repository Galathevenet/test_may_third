class Price < ApplicationRecord

  abo = { 3: 3.73, 6: 5.99, 9: 9.94 }
  cta = 0.2193
  taxes_abo = 13.92 + 18.24

  def price_abo(puissance)
    puissance_annuelle = (self.abo[puissance]) * 12
    reseau = taxes_abo + 8.52 * puissance
    ht = puissance_annuelle + reseau + cta * reseau
    ht * 1.055
  end

  def price_conso(conso)
    ht = (conso / 1000 * 100.3) + conso / 1000 + conso / 1000 * 6.63 + conso / 1000 * 37.10
    (ht * 1.20) / 1000
  end

  def prix_total(puissance, conso)
    price_abo(puissance) + price_conso(conso)
  end

end
