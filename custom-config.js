module.exports = {
	extends: 'lighthouse:default',
	settings: {
		onlyAudits: [
			'first-meaningful-paint',
			'speed-index',
			'first-cpu-idle',
			'interactive',
		],
	},
	performance: {
		title: 'Performance',
		description: 'This category judges DH performance',
		auditRefs: [
			{id: 'first-meaningful-paint', weight: 2, group: 'metrics'},
			{id: 'first-cpu-idle', weight: 3, group: 'metrics'},
			{id: 'interactive', weight: 5, group: 'metrics'},
		],
	},
  categories: {
    performance: {
      auditRefs: [
        {id: 'my-performance-metric', weight: 2, group: 'metrics'},
      ],
    }
  },
  groups: {
    'metrics': {
      title: 'Metrics',
      description: 'These metrics encapsulate DH web app\'s performance across a number of dimensions.'
    },
  }
};
  