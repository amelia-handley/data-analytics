# Box plot: Location and Completion.Time
ggplot(dataset, aes(x=Location, y=Completion.Time)) + geom_boxplot() + facet_wrap(~Age.Band)

##### ????? #####

# Graph 5
ggplot(dataset, aes(x=Gender, y=Completion.Time)) + geom_bar(stat="Identity") + facet_wrap(~Age.Band)


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

# Graph 1: Age.Band and Completion.Time (~Gender)
#ggplot(dataset, aes(x=Age.Band, y=Completion.Time)) +geom_boxplot() + facet_wrap(~Gender)
# Graph 2: Age,Band and Part.C.Score(~Location)
#ggplot(dataset, aes(x=Age.Band, y=Part.C.Score)) + geom_bar(stat="Identity") + facet_wrap(~Location)
# Graph 3: Age and Part.B.Score
#ggplot(dataset, aes(x=Age, y=Part.B.Score)) + geom_point() + geom_smooth()
# Graph 4: Age.Band and Part.A.Score
#ggplot(dataset, aes(x=Age.Band, y=Part.A.Score,)) + geom_boxplot()
# Graph 5: Location and Part.B.Score
ggplot(dataset, aes(x=Location, y=Part.B.Score, fill=Location)) + geom_bar(stat="Identity") + facet_grid(~Age.Band)


# Age Band, Part C
ggplot(dataset, aes(x=Age.Band, y=Part.C.Score, fill=Age.Band)) + geom_bar(stat="Identity") + ylim(NA,100) + scale_x_discrete(limits=c("U","Y","M","O"),labels=c("Under 16", "Young Adult\n(16-39", "Middle-Aged\n(40-64)", "Older Aged(65+)")) + facet_wrap(~Gender) + theme(legend.position="none")
# Part C Score, Location
ggplot(dataset, aes(x=Location, y=Part.C.Score, fill=Location)) + geom_bar(stat="Identity") + facet_wrap(~Age.Band)


# GRAPH DESIGN
p + theme(panel.border = element_blank(), panel.grid.major = element_blank(), panel.grid.minor = element_blank(), panel.background = element_blank(), axis.line = element_line(colour = "grey"))

p + theme(panel.border = element_blank(), panel.grid.major = element_blank(), panel.grid.minor = element_blank(), panel.background = element_blank(), axis.line = element_line(colour = "grey"), plot.title = element_text(hjust=0.5, face="bold")) + scale_fill_brewer(palette="RdYlGn")
dataset$Age.Band_f = factor(dataset$Age.Band, levels=c("U", "Y", "M", "O"), labels=c("Under 16"), "Young Adult(16-39)", "Middle Aged(40-64", "Older Adult(65+)")

# FINAL CODE

#OUTLIER 1: AGE
ggplot(dataset, aes(x=Age, fill=Age.Band)) + geom_histogram(bins=50) + labs(title="Age of All Participants", y="Number of Participants", x="Participant Age") + scale_fill_discrete(name="Age Band\nOf Partipicant", limits=c("U", "Y", "M", "O")) + theme(panel.border = element_blank(), panel.grid.major = element_blank(), panel.grid.minor = element_blank(), panel.background = element_blank(), axis.line = element_line(colour = "grey"), plot.title = element_text(hjust=0.5, face="bold"))
ggplot(dataset, aes(x=Age, fill=Age.Band)) + geom_histogram(bins=50) + labs(title="Age of All Participants", y="Number of Participants", x="Participant Age") + scale_fill_discrete(name="Age Band\nOf Partipicant", limits=c("U", "Y", "M", "O"),labels=c("Under 16\n", "Young Adult\n(16-39)\n", "Middle-Aged\n(40-64)\n", "Older Adult\n(65)\n")) + theme(panel.border = element_blank(), panel.grid.major = element_blank(), panel.grid.minor = element_blank(), panel.background = element_blank(), axis.line = element_line(colour = "grey"), plot.title = element_text(hjust=0.5, face="bold"), legend.box.background = element_rect(colour="grey"))
#OUTLIER 2: Part B Score
ggplot(dataset, aes(x=Part.B.Score, fill=Age.Band)) + geom_histogram(bins=100) + labs(title="Participants Score for Test Part B", y="Number of Participants", x="Participant Score for Test Part B") + scale_fill_discrete(name="Age Band\nOf Partipicant", limits=c("U", "Y", "M", "O")) + theme(panel.border = element_blank(), panel.grid.major = element_blank(), panel.grid.minor = element_blank(), panel.background = element_blank(), axis.line = element_line(colour = "grey"), plot.title = element_text(hjust=0.5, face="bold"))
ggplot(dataset, aes(x=Part.B.Score, fill=Age.Band)) + geom_histogram(bins=100) + labs(title="Participants Score for Test Part B", y="Number of Participants", x="Participant Score for Test Part B") + scale_fill_discrete(name="Age Band\nOf Partipicant", limits=c("U", "Y", "M", "O"),,labels=c("Under 16\n", "Young Adult\n(16-39)\n", "Middle-Aged\n(40-64)\n", "Older Adult\n(65)\n")) + theme(panel.border = element_blank(), panel.grid.major = element_blank(), panel.grid.minor = element_blank(), panel.background = element_blank(), axis.line = element_line(colour = "grey"), plot.title = element_text(hjust=0.5, face="bold"))

#GRAPH 1: Completion Time vs Age.Band
ggplot(dataset, aes(x=Age.Band, y=Completion.Time, fill=Age.Band)) +geom_boxplot() + facet_wrap(~Gender) + labs(title="Completion Time of All Three Tasks Seperated by Gender", y="Completion Time (s)", x="Age Band of Participants") + scale_x_discrete(limits=c("U","Y","M","O"),labels=c("Under 16", "Young Adult\n(16-39", "Middle-Aged\n(40-64)", "Older Adult\n(65)")) + theme(legend.position="none", panel.border = element_blank(), panel.grid.major = element_blank(), panel.grid.minor = element_blank(), panel.background = element_blank(), axis.line = element_line(colour = "grey"), plot.title = element_text(hjust=0.5, face="bold"))
#GRAPH 2: Participants score for test part b by age
ggplot(dataset, aes(x=Age, y=Part.B.Score, color=Age.Band)) + geom_point(colour="black") + geom_smooth(size=2) + xlim(NA,100) + ylim(NA,100) + labs(title="Participants Score for Test Part B by Age", y="Score for Part B", x="Age of Participant") + scale_color_discrete(name="Age Band\nOf Partipicant", limits=c("U", "Y", "M", "O"),labels=c("Under 16", "Young Adult(16-39)", "Middle Aged(40-64)", "Older Adult(65+)"))+ theme(panel.border = element_blank(), panel.grid.major = element_blank(), panel.grid.minor = element_blank(), panel.background = element_blank(), axis.line = element_line(colour = "grey"), plot.title = element_text(hjust=0.5, face="bold"), legend.box.background = element_rect(colour="grey"))
#GRAPH 3: Participants score for test a by age band
ggplot(dataset, aes(x=Age.Band, y=Part.A.Score, fill=Age.Band)) + geom_boxplot() + labs(title="Participants Score for Test A organised by Age Band", y="Part.A.Score", x="Participant Score Age Band") + scale_x_discrete(limits=c("U","Y","M","O"),labels=c("Under 16", "Young Adult\n(16-39", "Middle-Aged\n(40-64)", "Older Adult\n(65)")) + theme(legend.position="none", panel.border = element_blank(), panel.grid.major = element_blank(), panel.grid.minor = element_blank(), panel.background = element_blank(), axis.line = element_line(colour = "grey"), plot.title = element_text(hjust=0.5, face="bold"))
#GRAPH 4: Participants Score for test c by Age
ggplot(dataset, aes(x=Age, y=Part.C.Score, color=Location)) + geom_smooth(size=2) + xlim(NA,100) + facet_grid(~Location_f) + labs(title="Participants Score for Test C Compared with Participants Age", y="Participants Score for Part C", x="Participant Age") + theme(legend.position="none", panel.border = element_rect(color="grey", fill=NA, size=1), panel.grid.major = element_blank(), panel.grid.minor = element_blank(), panel.background = element_blank(), axis.line = element_line(colour = "grey"), plot.title = element_text(hjust=0.5, face="bold"))
#GRAPH 5: Participants score for test a by completion time


###SAME####
ggplot(dataset, aes(x=Age, y=Completion.Time, color=Gender)) + xlim(NA,100) + facet_wrap(~Gender) + geom_smooth() + labs(title="Completion Time of all Three Tests Compared with Age", y="Completion Time of All Three Tests", x="Age of Participants") + theme(legend.position="none", panel.border = element_blank(), panel.grid.major = element_blank(), panel.grid.minor = element_blank(), panel.background = element_blank(), axis.line = element_line(colour = "grey"), plot.title = element_text(hjust=0.5, face="bold"), legend.box.background = element_rect(colour="grey"))

ggplot(dataset, aes(x=Location, y=Part.B.Score, fill=Location)) + geom_bar(stat="Identity") + ylim(0,100) + facet_grid(~Age.Band_f) + labs(title="Participants Score for Test B at Different Locations", y="Total Score of Participants for Test B", x="Location") + theme(legend.position="none", panel.border = element_blank(), panel.grid.major = element_blank(), panel.grid.minor = element_blank(), panel.background = element_blank(), axis.line = element_line(colour = "grey"), plot.title = element_text(hjust=0.5, face="bold"))

### NEW FINAL GRAPHS
# AgeBand vs Part A (OUTLIER)
ggplot(dataset, aes(x=Age.Band, y=Part.A.Score, fill=Age.Band)) + geom_boxplot() + facet_wrap(~Gender_f) + labs(title="Participants Score for Test A vs Participant Age Band", y="Participant Score for Test Part A", x="Participant Score Age Band") + scale_x_discrete(limits=c("U","Y","M","O"),labels=c("Under 16", "Young Adult\n(16-39", "Middle-Aged\n(40-64)", "Older Adult\n(65)")) + theme(legend.position="none", panel.border = element_rect(color="grey", fill=NA, size=1), panel.grid.major = element_blank(), panel.grid.minor = element_blank(), panel.background = element_blank(), axis.line = element_line(colour = "grey"), plot.title = element_text(hjust=1, face="bold"))

# Completion Time vs Age.Band 
ggplot(dataset, aes(x=Age.Band, y=Completion.Time, fill=Age.Band)) +geom_boxplot() + facet_wrap(~Gender_f) + labs(title="Completion Time of All Three Tasks vs Age Band of Participants", y="Completion Time (s)", x="Age Band of Participants") + scale_x_discrete(limits=c("U","Y","M","O"),labels=c("Under 16", "Young Adult\n(16-39)", "Middle-Aged\n(40-64)", "Older Adult\n(65)")) + theme(legend.position="none", panel.border = element_rect(color="grey", fill=NA, size=1), panel.grid.major = element_blank(), panel.grid.minor = element_blank(), panel.background = element_blank(), axis.line = element_line(colour = "grey"), plot.title = element_text(hjust=0.5, face="bold"))

# Test B Score vs Age (OUTLIER)
ggplot(dataset, aes(x=Age, y=Part.B.Score)) + geom_point(color="blue") + labs(title="Participants Score for Test Part B vs Participant Age", y="Participant Score for Part B (%)", x="Age of Participant (Years)") + theme(panel.border = element_blank(), panel.grid.major = element_blank(), panel.grid.minor = element_blank(), panel.background = element_blank(), axis.line = element_line(colour = "grey"), plot.title = element_text(hjust=0.5, face="bold"), legend.box.background = element_rect(colour="grey"))

# Test C vs Age Band
ggplot(dataset, aes(x=Age.Band_f1, y=Part.C.Score, color=Location)) + geom_bar(stat="Identity") + facet_wrap(~Location_f) + labs(title="Participants Score for Test C Vs Participant Age Band", y="Total of All Participant Scores for Test Part C", x="Participant Age Band") + theme(legend.position="none", panel.border = element_rect(color="grey", fill=NA, size=1), panel.grid.major = element_blank(), panel.grid.minor = element_blank(), panel.background = element_blank(), axis.line = element_line(colour = "grey"), plot.title = element_text(hjust=0.5, face="bold"))

# ???


# FULLY OPTIMISED GRAPH
ggplot(dataset, aes(x=Age.Band, y=Part.A.Score, fill=Age.Band)) + geom_bar(stat="Identity") + labs(title="Participants Score for Test A vs Participant Age Band", y="Total of All Participant Scores for Test Part A", x="Participant Score Age Band") + scale_x_discrete(limits=c("U","Y","M","O"),labels=c("Under 16", "Young Adult\n(16-39", "Middle-Aged\n(40-64)", "Older Adult\n(65)")) + theme(legend.position="none", panel.border = element_rect(color="grey", fill=NA, size=1), panel.grid.major = element_blank(), panel.grid.minor = element_blank(), panel.background = element_blank(), axis.line = element_line(colour = "grey"), plot.title = element_text(hjust=0.5, face="bold"))
