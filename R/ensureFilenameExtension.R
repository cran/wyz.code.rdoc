ensureFilenameExtension <- function(filename_s_1m, extension_s_1m) {
  stopifnot(length(extension_s_1m) >= 1)
  is_valuedS <- function(x_s_1) !is.na(x_s_1) && !is.null(x_s_1) && nchar(x_s_1) > 0
  is_valued <- Vectorize(is_valuedS)

  ext <- ifelse(substr(extension_s_1m, 1, 1) == '.',
                paste0('\\', extension_s_1m),
                paste0('\\.', extension_s_1m))
  special_files <- filename_s_1m %in% c('.', '..')

  wf <- function(x_s_1) which(filename_s_1m == x_s_1)
  ifelse(special_files,
         filename_s_1m,
         {
           ex <- if (length(ext) == 1) ext[1] else ext[wf(filename_s_1m)]
           if (is_valued(ex))
             suppressWarnings(paste0(sub(paste0(ex, '$'), '', filename_s_1m, perl = TRUE), substring(ex, 2)))
           else
             filename_s_1m
         }
  )
}
