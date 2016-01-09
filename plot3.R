# Retrieve the source data
#  This command will return a 'data' variable which we will contain the data set for each of the
#  graphs.
source('retrieve-data.R')

png(
    filename = 'plot3.png',
    width = 480,
    height = 480,
    units = 'px',
    bg = 'transparent'
)

# Now that we have the data, build the graph
# Draw the initial graph without any data on it
with(
    data,
    plot(
        Time,
        Sub_metering_1,
        type = 'n',
        xlab = '',
        ylab = 'Energy sub metering'
    )
)

# Add in the data for the first sub metering
with(
    data,
    lines(
        Time,
        Sub_metering_1,
        col = 'red'
    )
)

# Add in the data for the second sub metering
with(
    data,
    lines(
        Time,
        Sub_metering_2,
        col = 'red'
    )
)

with(
    data,
    lines(
        Time,
        Sub_metering_3,
        col = 'blue'
    )
)

legend(
    'topright',
    c('Sub_metering_1', 'Sub_metering_2', 'Sub_metering_3'),
    col = c('black', 'red', 'blue'),
    lwd = 1
)

# Copy the graph to the current directory
dev.off()