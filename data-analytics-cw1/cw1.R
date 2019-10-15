# Box plot: Location and Completion.Time
ggplot(dataset, aes(x=Location, y=Completion.Time)) + geom_boxplot() + facet_wrap(~Age.Band)

# Box Plot: Location and Part.C.Score
ggplot(dataset, aes(x=Location, y=Part.C.Score, fill=Location)) + geom_boxplot() + facet_wrap(~Age.Band)

# Box Plot: Age.Band and Part.C.Score
ggplot(dataset, aes(x=Age.Band, y=Part.C.Score)) + geom_boxplot() + facet_wrap(~Location)
ggplot(dataset, aes(x=Age.Band, y=Part.C.Score)) + geom_boxplot() + facet_wrap(~Location) + scale_y_log10()

# Histogram: Part.A.Score (Age.Band)
ggplot(dataset, aes(x=Part.A.Score, fill=Age.Band)) + geom_histogram(bins=200)

# Density: Part.A.Score, density (Age.Band)
ggplot(dataset, aes(x=Part.A.Score, color=Age.Band)) + geom_density()


######### COURSEWORK ##########

# Histogram: Age - Outlier 1
ggplot(dataset, aes(x=Age)) + geom_histogram(bins=30)

# Histogram: Part.B.Score - Outlier 2
ggplot(dataset, aes(x=Part.B.Score)) + geom_histogram(bins=100)


######### UNKNOWN ##########
ggplot(dataset, aes(x=Location, y=Age)) + geom_boxplot()