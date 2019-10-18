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


##### ????? #####

#Graph 5:Part.C.Score ???????
ggplot(dataset, aes(x=Part.C.Score)) + geom_histogram(bins=15) + facet_wrap(~Location)
# Graph 4: Part.A.Score (~Age.Band) ???
ggplot(dataset, aes(x=Part.A.Score)) + geom_histogram(bins=10) + facet_wrap(~Age.Band)
# Graph 5



######### POSSIBLE ##########
ggplot(dataset, aes(x=Location, y=Age)) + geom_boxplot()


#completion Time
ggplot(dataset, aes(x=Completion.Time, y=Part.B.Score)) + geom_point() + facet_wrap(~Age.Band)

ggplot(dataset, aes(x=Location, y=Part.C.Score)) + geom_boxplot() + scale_y_log10()


######### COURSEWORK ##########

# Histogram: Age - Outlier 1
ggplot(dataset, aes(x=Age)) + geom_histogram(bins=30)
ggplot(dataset, aes(x=Age, fill=Age.Band)) + geom_histogram(bins=50) + labs(title="Age of all Participants")

p <- ggplot(dataset, aes(x=Age, fill=Age.Band)) + geom_histogram(bins=50) + labs(title="Age of All Participants", y="Total Number of Participants", x="Participants seperated by Age") + scale_fill_discrete(limits=c("U", "Y", "M", "O"))
# Histogram: Part.B.Score - Outlier 2
ggplot(dataset, aes(x=Part.B.Score)) + geom_histogram(bins=100)


# Graph 1: Age,Band and Part.C.Score(~Location)
ggplot(dataset, aes(x=Age.Band, y=Part.C.Score)) + geom_bar(stat="Identity") + facet_wrap(~Location)
# Graph 2: Age.Band and Completion.Time (~Gender)
ggplot(dataset, aes(x=Age.Band, y=Completion.Time)) +geom_boxplot() + facet_wrap(~Gender)
# Graph 3: Age.Band and Part.A.Score
ggplot(dataset, aes(x=Age.Band, y=Part.A.Score,)) + geom_boxplot()
# Graph 4: Age and Part.B.Score
ggplot(dataset, aes(x=Age, y=Part.B.Score)) + geom_point() + geom_smooth()
# Graph 5: Location and Part.B.Score
ggplot(dataset, aes(x=Location, y=Part.B.Score)) + geom_bar(stat="Identity") + facet_wrap(~Age.Band)


# OPTIMISATION GRAPH

# GRAPH DESIGN
p + theme(panel.border = element_blank(), panel.grid.major = element_blank(), panel.grid.minor = element_blank(), panel.background = element_blank(), axis.line = element_line(colour = "grey"))

p + theme(panel.border = element_blank(), panel.grid.major = element_blank(), panel.grid.minor = element_blank(), panel.background = element_blank(), axis.line = element_line(colour = "grey"), plot.title = element_text(hjust=0.5, face="bold")) + scale_fill_brewer(palette="RdYlGn")
