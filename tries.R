
for(v in 1:(length(numericFeaturesToKeep)-nrespvars)){
    df <- data.frame(data[ , v], data$IsAttack, data$IsDosAttack, data$IsProbeAttack
                     , data$IsR2Lattack, data$IsU2Rattack, data$IsOtherAttack)
    pairs(df, pch = 20, col = "blue", main = paste("Scatter Plot Matrix for", colnames(data[ , v])
                                                   , "and the numeric response variables"))
}
# Scatter plot that could help identify correlations between the current feature and the numeric response vars
#cat(paste('\n   -> Scatter plot for', current_feature, 'and the numeric response variables:'), fill = TRUE)
#ggplot(data = df) +
#        geom_point(aes(x = current_feature, y = .)) +
#        geom_smooth(aes(x = current_feature, y = .)) +
#        facet_wrap(~ colnames(df)[2], scales = "free") +
#        labs(x = current_feature, y = "Response Variable", title = "Scatter Plot")
# Decrease the plot size
par(mar = c(0.5, 0.5, 0.5, 0.5))  # Adjust the margin size
pairs(data[, names(data) %in% numericFeaturesToKeep], pch = 20, col = "blue", main = "Scatter Plot Matrix")

