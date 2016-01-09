# Retrieve the source data
#  This command will return a 'data' variable which we will contain the data set for each of the
#  graphs.
#source('retrieve-data.R')

png(
    filename = 'plot4.png',
    width = 480,
    height = 480,
    units = 'px',
    bg = 'transparent'
)

par(mfrow = c(2, 2))

# Build the Top-Left graph (same as "plot2")
with(
    data,
    plot(
        Time,
        Global_active_power,
        type = 'l',
        xlab = '',
        ylab = 'Global Active Power (kilowatts)'
    )
)

# Build the Top-Right graph
with(
    data,
    plot(
        Time,
        Voltage,
        type = 'l',
        xlab = 'datetime',
        ylab = 'Voltage'
    )
)

# Build the Bottom-Left graph
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
    lwd = 1,
    box.lwd = 0
)

# Build the Bottom-Right graph
with(
    data,
    plot(
        Time,
        Global_reactive_power,
        type = 'l',
        xlab = 'datetime'
    )
)

# Copy the graph to the current directory
dev.off()