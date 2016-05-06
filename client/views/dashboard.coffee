Template.dashboard.helpers
  lastProcesses: () ->
    Processes.find(
      {
        status: { $in: [2, 3] }
      },
      {
        limit: 10,
        sort: {
          finished: -1
        }
      }
    )
  currentProcesses: () ->
    Processes.find(
      {
        status: { $in: [0, 1] }
      },
      {
        limit: 10,
        sort: {
          scheduled: 1
        }
      }
    )
