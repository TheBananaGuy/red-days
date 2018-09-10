class WeekComponent extends React.Component {
	render() {
		// Prepare an array of date objects for the selected week
		var startDate = this.props.week;
		var allDays = [];
		for (var day=0; day<7; day++) {
			// Adding the 'day' makes the sequence go in a crazy incremental fibonacci sequence fo some reason
			// TODO: Incrementing by 1 seems working fine for now, but please resolve it later
			var plusOne;
			day == 0 ? plusOne = 0 : plusOne = 1;
			var output = new Date(startDate.setDate(startDate.getDate() + plusOne));
			// Save a date object linked to the component
			allDays.push(<DayComponent date={output} />);
		}

		// This will return as many components as there was in our array
		return (
			<div className='Days'>
				{allDays}
			</div>
		);
	}
}