# Hello, world!
#
# This is an example function named 'hello'
# which prints 'Hello, world!'.
#
# You can learn more about package authoring with RStudio at:
#
#   http://r-pkgs.had.co.nz/
#
# Some useful keyboard shortcuts for package authoring:
#
#   Install Package:           'Cmd + Shift + B'
#   Check Package:             'Cmd + Shift + E'
#   Test Package:              'Cmd + Shift + T'

electrode_locations_from_bids <- function(data,
                                          bids_dir,
                                          electrode = "electrode",
                                          drop_na = FALSE) {

  bids_string <- data$epochs$recording

  subject <- gsub(".*(sub-.+?)[_].*", "\\1", bids_string)
  session <- gsub(".*(ses-.+?)[_].*", "\\1", bids_string)

  has_session <- session != bids_string
  if (has_session) {
    eeg_dir <- paste(bids_dir, subject, session, "eeg", sep = "/")
  } else {
    eeg_dir <- paste(bids_dir, subject, "eeg", sep = "/")
  }

  electrode_files <- list.files(eeg_dir, "*_electrodes.tsv", full.names = TRUE)
  electrode_file <- electrode_files[1]

  if (length(electrode_files) == 0) {
    warning("Didn't find any 'electrodes.tsv' files in ", eeg_dir)
  } else if (length(electrode_files) > 1) {
    warning("Found more than one 'electrodes.tsv' file in ", eeg_dir,
            ", taking only the first (", electrode_file, ")")
  }

  electrodes <- read.table(electrode_file,
                           sep = '\t',
                           header = TRUE,
                           na.strings = "n/a")



  coordsystem_file <- list.files(eeg_dir, "*_coordsystem.json", full.names = TRUE)
  coordsystem <- jsonlite::read_json(coordsystem_file)$EEGCoordinateSystem

  # TODO: Implement more coordinate systems
  # (see https://bids-specification.readthedocs.io/en/stable/appendices/coordinate-systems.html)
  if (coordsystem == "ARS") {
    cartesian_coords <- with(electrodes,
                             data.frame(cart_x = -y, cart_y = x, cart_z = z))
  } else {
    cartesian_coords <- with(electrodes,
                             data.frame(cart_x = x, cart_y = y, cart_z = z))
  }

  spherical_coords <- eegUtils:::cart_to_spherical(cartesian_coords)

  projected_coords <- eegUtils:::stereo_norm(spherical_coords)

  chan_info <- cbind(name = electrodes$name,
                     spherical_coords,
                     cartesian_coords,
                     projected_coords)

  if (drop_na) {
    na_channels <- subset(chan_info, is.na(x) | is.na(y))$name
    if (length(na_channels) > 0) {
      warning("Dropping channels with no location: ",
              paste(na_channels, collapse = " "), "\n")
    }
    chan_info <- subset(chan_info, !name %in% na_channels)
  }

  names(chan_info)[1] <- electrode

  data$chan_info <- chan_info

  return(data)
}
