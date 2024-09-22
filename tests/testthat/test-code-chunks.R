test_that("`read_chunk_toml()` works as expected", {
  
  skip_if_not_installed(pkg = "RcppTOML")
  
  expect_snapshot_value(read_chunk_toml(path = "quarto_chunk_data.toml"),
                        style = "json2")
})

test_that("`quarto_chunks()` works as expected", {
  
  skip_if_not_installed(pkg = "RcppTOML")
  
  expect_snapshot_value(read_chunk_toml(path = "quarto_chunk_data.toml") |> chunks(),
                        style = "json2")
})
