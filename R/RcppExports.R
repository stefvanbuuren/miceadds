# Generated by using Rcpp::compileAttributes() -> do not edit by hand
# Generator token: 10BE3573-1514-4C36-9D1C-5A225CD40393

miceadds_rcpp_create_interactions <- function(Yr, Xr, Xallr, index_int, MI, maxcols, use_weights, weights_obs) {
    .Call('_miceadds_miceadds_rcpp_create_interactions', PACKAGE = 'miceadds', Yr, Xr, Xallr, index_int, MI, maxcols, use_weights, weights_obs)
}

kernelplsaux <- function(Yr, Xr, nc) {
    .Call('_miceadds_kernelplsaux', PACKAGE = 'miceadds', Yr, Xr, nc)
}

kernelpls_1dim_C <- function(Yr, Xr, nc) {
    .Call('_miceadds_kernelpls_1dim_C', PACKAGE = 'miceadds', Yr, Xr, nc)
}

miceadds_rcpp_ml_mcmc_sampler <- function(y_obs, X, xtx_inv, ztz_list, Z_list, beta_init, Psi_list_init, sigma2_init, alpha_init, u_list_init, idcluster_list, onlyintercept_list, ncluster_list, sigma2_nu0, sigma2_sigma2_0, psi_nu0_list, psi_S0_list, NR, est_sigma2, est_probit, parameter_index, est_parameter, npar, iter, save_iter, verbose, print_iter, est_thresh, K, sd_proposal, ridge) {
    .Call('_miceadds_miceadds_rcpp_ml_mcmc_sampler', PACKAGE = 'miceadds', y_obs, X, xtx_inv, ztz_list, Z_list, beta_init, Psi_list_init, sigma2_init, alpha_init, u_list_init, idcluster_list, onlyintercept_list, ncluster_list, sigma2_nu0, sigma2_sigma2_0, psi_nu0_list, psi_S0_list, NR, est_sigma2, est_probit, parameter_index, est_parameter, npar, iter, save_iter, verbose, print_iter, est_thresh, K, sd_proposal, ridge)
}

miceadds_rcpp_arma_chol_ridge <- function(sigma0, ridge) {
    .Call('_miceadds_miceadds_rcpp_arma_chol_ridge', PACKAGE = 'miceadds', sigma0, ridge)
}

miceadds_rcpp_mvrnorm <- function(mu, sigma, ridge) {
    .Call('_miceadds_miceadds_rcpp_mvrnorm', PACKAGE = 'miceadds', mu, sigma, ridge)
}

miceadds_rcpp_rwishart <- function(df, S, ridge) {
    .Call('_miceadds_miceadds_rcpp_rwishart', PACKAGE = 'miceadds', df, S, ridge)
}

miceadds_rcpp_riwishart <- function(df, S, ridge) {
    .Call('_miceadds_miceadds_rcpp_riwishart', PACKAGE = 'miceadds', df, S, ridge)
}

miceadds_rcpp_rtnorm_double <- function(mu, sigma, lower, upper) {
    .Call('_miceadds_miceadds_rcpp_rtnorm_double', PACKAGE = 'miceadds', mu, sigma, lower, upper)
}

miceadds_rcpp_rtnorm <- function(mu, sigma, lower, upper) {
    .Call('_miceadds_miceadds_rcpp_rtnorm', PACKAGE = 'miceadds', mu, sigma, lower, upper)
}

miceadds_rcpp_arma2vec <- function(x) {
    .Call('_miceadds_miceadds_rcpp_arma2vec', PACKAGE = 'miceadds', x)
}

miceadds_rcpp_pnorm <- function(x, mu, sigma) {
    .Call('_miceadds_miceadds_rcpp_pnorm', PACKAGE = 'miceadds', x, mu, sigma)
}

miceadds_rcpp_qnorm <- function(x, mu, sigma) {
    .Call('_miceadds_miceadds_rcpp_qnorm', PACKAGE = 'miceadds', x, mu, sigma)
}

miceadds_rcpp_rtnorm2 <- function(mu, sigma0, lower, upper, minval, maxval) {
    .Call('_miceadds_miceadds_rcpp_rtnorm2', PACKAGE = 'miceadds', mu, sigma0, lower, upper, minval, maxval)
}

miceadds_rcpp_ml_mcmc_compute_xtx <- function(X) {
    .Call('_miceadds_miceadds_rcpp_ml_mcmc_compute_xtx', PACKAGE = 'miceadds', X)
}

miceadds_rcpp_ml_mcmc_compute_ztz <- function(Z, idcluster, ncluster) {
    .Call('_miceadds_miceadds_rcpp_ml_mcmc_compute_ztz', PACKAGE = 'miceadds', Z, idcluster, ncluster)
}

miceadds_rcpp_ml_mcmc_predict_fixed <- function(X, beta) {
    .Call('_miceadds_miceadds_rcpp_ml_mcmc_predict_fixed', PACKAGE = 'miceadds', X, beta)
}

miceadds_rcpp_ml_mcmc_subtract_fixed <- function(y, X, beta) {
    .Call('_miceadds_miceadds_rcpp_ml_mcmc_subtract_fixed', PACKAGE = 'miceadds', y, X, beta)
}

miceadds_rcpp_ml_mcmc_predict_random <- function(Z, u, idcluster) {
    .Call('_miceadds_miceadds_rcpp_ml_mcmc_predict_random', PACKAGE = 'miceadds', Z, u, idcluster)
}

miceadds_rcpp_ml_mcmc_predict_random_list <- function(Z_list, u_list, idcluster_list, NR, N) {
    .Call('_miceadds_miceadds_rcpp_ml_mcmc_predict_random_list', PACKAGE = 'miceadds', Z_list, u_list, idcluster_list, NR, N)
}

miceadds_rcpp_ml_mcmc_predict_fixed_random <- function(X, beta, Z_list, u_list, idcluster_list, NR) {
    .Call('_miceadds_miceadds_rcpp_ml_mcmc_predict_fixed_random', PACKAGE = 'miceadds', X, beta, Z_list, u_list, idcluster_list, NR)
}

miceadds_rcpp_ml_mcmc_subtract_random <- function(y, Z, u, idcluster, onlyintercept) {
    .Call('_miceadds_miceadds_rcpp_ml_mcmc_subtract_random', PACKAGE = 'miceadds', y, Z, u, idcluster, onlyintercept)
}

miceadds_rcpp_ml_mcmc_sample_beta <- function(xtx_inv, X, Z_list, y, u_list, idcluster_list, sigma2, onlyintercept_list, NR, ridge) {
    .Call('_miceadds_miceadds_rcpp_ml_mcmc_sample_beta', PACKAGE = 'miceadds', xtx_inv, X, Z_list, y, u_list, idcluster_list, sigma2, onlyintercept_list, NR, ridge)
}

miceadds_rcpp_ml_mcmc_sample_u <- function(X, beta, Z_list, y, ztz_list, idcluster_list, ncluster_list, sigma2, Psi_list, onlyintercept_list, NR, u0_list, ridge) {
    .Call('_miceadds_miceadds_rcpp_ml_mcmc_sample_u', PACKAGE = 'miceadds', X, beta, Z_list, y, ztz_list, idcluster_list, ncluster_list, sigma2, Psi_list, onlyintercept_list, NR, u0_list, ridge)
}

miceadds_rcpp_crossprod_one_matrix <- function(X) {
    .Call('_miceadds_miceadds_rcpp_crossprod_one_matrix', PACKAGE = 'miceadds', X)
}

miceadds_rcpp_ml_mcmc_sample_covariance_matrix <- function(u, nu0, S0, ridge) {
    .Call('_miceadds_miceadds_rcpp_ml_mcmc_sample_covariance_matrix', PACKAGE = 'miceadds', u, nu0, S0, ridge)
}

miceadds_rcpp_print_arma_mat <- function(x, row1, row2, col1, col2, digits) {
    invisible(.Call('_miceadds_miceadds_rcpp_print_arma_mat', PACKAGE = 'miceadds', x, row1, row2, col1, col2, digits))
}

miceadds_rcpp_ml_mcmc_sample_psi <- function(u_list, nu0_list, S0_list, NR, ridge) {
    .Call('_miceadds_miceadds_rcpp_ml_mcmc_sample_psi', PACKAGE = 'miceadds', u_list, nu0_list, S0_list, NR, ridge)
}

miceadds_rcpp_ml_mcmc_sample_variance <- function(e, nu0, sigma2_0, ridge) {
    .Call('_miceadds_miceadds_rcpp_ml_mcmc_sample_variance', PACKAGE = 'miceadds', e, nu0, sigma2_0, ridge)
}

miceadds_rcpp_ml_mcmc_sample_sigma2 <- function(y, X, beta, Z_list, u_list, idcluster_list, onlyintercept_list, nu0, sigma2_0, NR, ridge) {
    .Call('_miceadds_miceadds_rcpp_ml_mcmc_sample_sigma2', PACKAGE = 'miceadds', y, X, beta, Z_list, u_list, idcluster_list, onlyintercept_list, nu0, sigma2_0, NR, ridge)
}

miceadds_rcpp_ml_mcmc_sample_latent_probit <- function(X, beta, Z_list, u_list, idcluster_list, NR, y_int, alpha, minval, maxval) {
    .Call('_miceadds_miceadds_rcpp_ml_mcmc_sample_latent_probit', PACKAGE = 'miceadds', X, beta, Z_list, u_list, idcluster_list, NR, y_int, alpha, minval, maxval)
}

miceadds_rcpp_ml_mcmc_probit_fill_index_lower <- function(y_int, alpha) {
    .Call('_miceadds_miceadds_rcpp_ml_mcmc_probit_fill_index_lower', PACKAGE = 'miceadds', y_int, alpha)
}

miceadds_rcpp_ml_mcmc_probit_fill_index_upper <- function(y_int, alpha) {
    .Call('_miceadds_miceadds_rcpp_ml_mcmc_probit_fill_index_upper', PACKAGE = 'miceadds', y_int, alpha)
}

miceadds_rcpp_ml_mcmc_probit_category_prob <- function(y_int, alpha, mu1, use_log) {
    .Call('_miceadds_miceadds_rcpp_ml_mcmc_probit_category_prob', PACKAGE = 'miceadds', y_int, alpha, mu1, use_log)
}

miceadds_rcpp_ml_mcmc_probit_loglike <- function(y_int, alpha, mu1, use_log) {
    .Call('_miceadds_miceadds_rcpp_ml_mcmc_probit_loglike', PACKAGE = 'miceadds', y_int, alpha, mu1, use_log)
}

miceadds_rcpp_rnorm_double <- function(mu, sigma) {
    .Call('_miceadds_miceadds_rcpp_rnorm_double', PACKAGE = 'miceadds', mu, sigma)
}

miceadds_rcpp_ml_mcmc_sample_thresholds <- function(X, beta, Z_list, u_list, idcluster_list, NR, K, alpha, sd_proposal, y_int) {
    .Call('_miceadds_miceadds_rcpp_ml_mcmc_sample_thresholds', PACKAGE = 'miceadds', X, beta, Z_list, u_list, idcluster_list, NR, K, alpha, sd_proposal, y_int)
}

miceadds_rcpp_impute_pmm6 <- function(y, ry01, x, ridge, coefu1, donorsample) {
    .Call('_miceadds_miceadds_rcpp_impute_pmm6', PACKAGE = 'miceadds', y, ry01, x, ridge, coefu1, donorsample)
}

scale2_C <- function(x) {
    .Call('_miceadds_scale2_C', PACKAGE = 'miceadds', x)
}

scale2_NA_C <- function(x) {
    .Call('_miceadds_scale2_NA_C', PACKAGE = 'miceadds', x)
}

miceadds_rcpp_weighted_sd <- function(x, w, eps) {
    .Call('_miceadds_miceadds_rcpp_weighted_sd', PACKAGE = 'miceadds', x, w, eps)
}

miceadds_rcpp_weighted_cor <- function(x, y, wt, eps) {
    .Call('_miceadds_miceadds_rcpp_weighted_cor', PACKAGE = 'miceadds', x, y, wt, eps)
}

miceadds_rcpp_sort_partial_index <- function(v, n) {
    .Call('_miceadds_miceadds_rcpp_sort_partial_index', PACKAGE = 'miceadds', v, n)
}

miceadds_rcpp_weighted_pmm_match_case <- function(ds, weights_obs, donors, donor_ind) {
    .Call('_miceadds_miceadds_rcpp_weighted_pmm_match_case', PACKAGE = 'miceadds', ds, weights_obs, donors, donor_ind)
}

miceadds_rcpp_weighted_pmm_match <- function(yhatmis, yhatobs, yobs, weights_obs, donors) {
    .Call('_miceadds_miceadds_rcpp_weighted_pmm_match', PACKAGE = 'miceadds', yhatmis, yhatobs, yobs, weights_obs, donors)
}

# Register entry points for exported C++ functions
methods::setLoadAction(function(ns) {
    .Call('_miceadds_RcppExport_registerCCallable', PACKAGE = 'miceadds')
})
