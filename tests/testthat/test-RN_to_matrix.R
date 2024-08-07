test_that("RN_to_matrix works", {
  data(RecruitNet)
  data(CanopyCover)
  Ventisquero_RNc <- comm_to_RN(RecruitNet, CanopyCover, site = "Ventisquero")
  out <- RN_to_matrix(Ventisquero_RNc, weight = "fij")
  expect_equal(out,
               structure(c(2L, 0L, 0L, 20L, 1L, 1L, 2L, 0L, 19L, 2L, 5L, 13L,
                           13L, 3L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L,
                           0L, 0L, 0L, 0L, 2L, 1L, 0L, 0L, 3L, 2L, 0L, 11L, 0L, 1L, 2L,
                           0L, 5L, 1L, 0L, 3L, 8L, 2L, 0L, 0L, 0L, 0L, 0L, 1L, 0L, 0L, 0L,
                           0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 1L, 1L, 1L, 4L,
                           0L, 1L, 0L, 0L, 1L, 0L, 0L, 1L, 1L, 0L, 0L, 0L, 1L, 0L, 0L, 0L,
                           0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 19L,
                           3L, 0L, 6L, 0L, 12L, 7L, 2L, 40L, 16L, 2L, 59L, 41L, 16L, 1L,
                           2L, 0L, 0L, 0L, 2L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 1L, 0L, 0L, 2L,
                           0L, 0L, 0L, 0L, 2L, 0L, 0L, 12L, 0L, 1L, 2L, 0L, 6L, 1L, 0L,
                           8L, 5L, 1L, 0L, 0L, 1L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L,
                           0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 2L, 1L, 0L, 2L, 1L, 0L, 0L, 0L,
                           2L, 1L, 0L, 3L, 4L, 2L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 1L,
                           0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 5L, 6L, 0L, 13L,
                           1L, 5L, 2L, 2L, 27L, 10L, 3L, 31L, 82L, 3L, 4L, 0L, 15L, 0L,
                           0L, 2L, 0L, 0L, 0L, 0L, 0L, 0L, 1L, 0L, 0L, 0L, 0L, 3L, 3L, 0L,
                           0L, 3L, 3L, 0L, 6L, 0L, 0L, 1L, 0L, 0L, 3L, 0L, 13L, 23L, 0L,
                           0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L,
                           0L, 0L, 0L, 0L, 0L, 193L, 26L, 5L, 422L, 5L, 141L, 163L, 45L,
                           306L, 77L, 26L, 435L, 457L, 132L, 1L, 5L, 87L, 13L, 7L, 21L,
                           1L, 2L, 4L, 6L, 3L, 3L, 3L, 1L, 4L, 13L, 9L, 11L, 15L, 4L, 9L,
                           9L, 0L, 0L, 9L, 5L, 4L, 4L, 0L, 14L, 4L, 15L, 20L, 33L, 11L,
                           2L, 0L, 0L, 0L, 0L, 1L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L,
                           0L, 2L, 4L, 0L, 1L, 27L, 1L, 0L, 51L, 12L, 14L, 14L, 0L, 82L,
                           2L, 7L, 91L, 58L, 13L, 4L, 0L, 0L, 0L, 0L, 1L, 0L, 0L, 0L, 3L,
                           0L, 0L, 0L, 0L, 0L, 1L, 17L, 3L, 2L, 0L, 0L, 3L, 0L, 0L, 2L,
                           0L, 0L, 1L, 0L, 17L, 1L, 0L, 7L, 10L, 1L, 1L, 0L, 0L, 0L, 0L,
                           1L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 1L, 1L, 0L,
                           8L, 2L, 1L, 27L, 0L, 12L, 4L, 0L, 57L, 12L, 1L, 22L, 20L, 9L,
                           2L, 1L, 2L, 0L, 0L, 2L, 0L, 0L, 2L, 1L, 0L, 0L, 0L, 0L, 0L, 0L,
                           1L, 1L, 0L, 0L, 1L, 108L, 27L, 6L, 201L, 9L, 128L, 79L, 29L,
                           444L, 56L, 11L, 232L, 40L, 64L, 14L, 2L, 7L, 1L, 0L, 13L, 0L,
                           0L, 1L, 8L, 0L, 0L, 0L, 0L, 0L, 7L, 5L, 8L, 19L, 0L, 0L, 24L,
                           3L, 0L, 16L, 4L, 22L, 2L, 0L, 16L, 8L, 0L, 31L, 12L, 2L, 0L,
                           0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 1L, 0L, 1L,
                           1L, 0L, 0L, 0L, 0L, 2L, 0L, 5L, 1L, 1L, 0L, 0L, 2L, 2L, 0L, 1L,
                           3L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L,
                           0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 2L, 0L, 0L, 1L, 0L, 2L,
                           0L, 0L, 1L, 1L, 0L, 0L, 1L, 3L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L,
                           0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 1L, 0L, 0L,
                           0L, 1L, 1L, 2L, 0L, 4L, 19L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L,
                           0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L,
                           3L, 1L, 0L, 0L, 1L, 0L, 6L, 0L, 1L, 1L, 1L, 0L, 1L, 0L, 0L, 2L,
                           0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L,
                           0L, 0L, 0L, 0L, 1L, 0L, 0L, 0L, 0L, 7L, 0L, 0L, 1L, 1L, 0L, 1L,
                           0L, 4L, 0L, 0L, 0L, 0L, 0L, 0L, 2L, 0L, 0L, 0L, 0L, 0L, 0L, 0L,
                           0L, 0L, 0L, 2L, 0L, 0L, 0L, 1L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L,
                           0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L,
                           0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 1L, 0L, 0L,
                           0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L,
                           0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L,
                           0L, 0L, 1L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L,
                           0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L,
                           0L, 0L, 0L, 0L, 0L, 1L, 0L, 0L, 1L, 0L, 0L, 0L, 0L, 0L, 0L, 0L,
                           0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L,
                           0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 1L, 0L, 0L, 0L, 0L, 0L, 0L,
                           0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L,
                           0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 1L, 0L,
                           1L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L,
                           0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L,
                           0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L,
                           0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L,
                           0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L,
                           0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L,
                           0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L,
                           0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L,
                           0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L,
                           0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L,
                           0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L,
                           0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L,
                           0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L,
                           0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L,
                           0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L,
                           0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L,
                           0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L,
                           0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L,
                           0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L,
                           0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L,
                           0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L,
                           0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L,
                           0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L,
                           0L, 0L, 0L, 0L), dim = 35:36,
                         dimnames = list(c("Acer_monspessulanum",
                                           "Amelanchier_ovalis",
                                           "Berberis_hispanica",
                                           "Bupleurum_gibraltaricum",
                                           "Cistus_albidus",
                                           "Crataegus_laciniata",
                                           "Crataegus_monogyna",
                                           "Cytisus_scoparius",
                                           "Daphne_gnidium",
                                           "Digitalis_obscura",
                                           "Dorycnium_pentaphyllum",
                                           "Fraxinus_angustifolia",
                                           "Genista_cinerea",
                                           "Helleborus_foetidus",
                                           "Juniperus_oxycedrus",
                                           "Juniperus_phoenicea",
                                           "Lavandula_latifolia",
                                           "Linum_sp",
                                           "Phillyrea_latifolia",
                                           "Pinus_halepensis",
                                           "Pistacia_terebinthus",
                                           "Prunus_mahaleb",
                                           "Prunus_spinosa",
                                           "Quercus_coccifera",
                                           "Quercus_faginea",
                                           "Quercus_ilex",
                                           "Rhamnus_alaternus",
                                           "Rhamnus_lycioides",
                                           "Rhamnus_myrtifolius",
                                           "Rosa_sp1",
                                           "Ruscus_aculeatus",
                                           "Staehelina_dubia",
                                           "Thymus_mastichina",
                                           "Thymus_orospedanus",
                                           "Ulex_parviflorus"),
                                         c("Acer_monspessulanum",
                                           "Amelanchier_ovalis",
                                           "Berberis_hispanica",
                                           "Bupleurum_gibraltaricum",
                                           "Cistus_albidus",
                                           "Crataegus_laciniata",
                                           "Crataegus_monogyna",
                                           "Cytisus_scoparius",
                                           "Daphne_gnidium",
                                           "Digitalis_obscura",
                                           "Dorycnium_pentaphyllum",
                                           "Fraxinus_angustifolia",
                                           "Genista_cinerea",
                                           "Helleborus_foetidus",
                                           "Juniperus_oxycedrus",
                                           "Juniperus_phoenicea",
                                           "Lavandula_latifolia",
                                           "Linum_sp", "Open",
                                           "Phillyrea_latifolia",
                                           "Pinus_halepensis",
                                           "Pistacia_terebinthus",
                                           "Prunus_mahaleb",
                                           "Prunus_spinosa",
                                           "Quercus_coccifera",
                                           "Quercus_faginea",
                                           "Quercus_ilex",
                                           "Rhamnus_alaternus",
                                           "Rhamnus_lycioides",
                                           "Rhamnus_myrtifolius",
                                           "Rosa_sp1",
                                           "Ruscus_aculeatus",
                                           "Staehelina_dubia",
                                           "Thymus_mastichina",
                                           "Thymus_orospedanus",
                                           "Ulex_parviflorus"
                                         ))))

})
