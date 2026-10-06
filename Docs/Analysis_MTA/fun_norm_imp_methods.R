# Loading library


obtaining_norm_imp_methods <- function (data_path, file, cond_order){
  
  library(NADIA)
  
  # Raw data preprocessing
  
  preprocessed_data <- preprocess_spectronaut(file_path=file.path(data_path, file), 
                                              condition_order = cond_order, 
                                              verbose = FALSE)
  
  # Normalization metrics
  
  se_norm <- nm_prepare_se(preprocessed_data, verbose = FALSE)
  
  norm_metrics <- normalization_metrics(se_norm, 
                                        methods = "all",
                                        output_dir = file.path(data_path,"norm_metrics"))
                                        
  norm_method <- norm_metrics$final_rank
  
  # Imputation metrics
  
  se_imp <- im_prepare_se(preprocessed_data,
                          norm_method = norm_metrics$final_rank$Method[1])
  
  imp_metrics <- imputation_metrics(se_imp,
                                    assay_name = norm_metrics$final_rank$Method[1],
                                    pattern = "from_data",
                                    output_dir = file.path(data_path,"imp_metrics"))
  
  imp_method <- imp_metrics$metrics_table
  
  return (list(preproc_data = preprocessed_data,
               norm = norm_method, 
               imp = imp_method
  ))
  
}

