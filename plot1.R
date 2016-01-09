# Retrieve the source data
#  This command will return a 'data' variable which we will contain the data set for each of the
#  graphs.
source('retrieve-data.R')

png(
    filename = 'plot1.png',
    width = 480,
    height = 480,
    units = 'px',
    bg = 'transparent'
)

# Now that we have the data, build the graph
with(
    data,
     hist(
         Global_active_power,
         main = 'Global Active Power',
         xlab = 'Global Active Power (kilowatts)',
         ylab = 'Frequency',
         col = 'red'
     )
 )

# Copy the graph to the current directory
dev.off()