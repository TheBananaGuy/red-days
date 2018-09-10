class MainComponent extends React.Component {

	state = {
		mod: 0,		// for skipping by week
		day: 0		// for defining the week's start
	}

	// Move one week back
	previousWeek = () => {
		this.setState({
			mod: this.state.mod - 7
		});
	}

	// Move one week forward
	nextWeek = () => {
		this.setState({
			mod: this.state.mod + 7
		});
	}

	// Choose the week's starting day
	changeDay = (day) => {
		this.setState({
			day: parseInt(day.target.value, 10)
		});
	}

	render() {
		// Unmodified week starts from monday
		function selectWeek(date) {
			var day = date.getDay(),
			diff = date.getDate() - day + (day == 0 ? -6 : 1);
			return new Date(date.setDate(diff));
		}

		// Get the date and adjust according to all the modifiers
		var currentWeek = selectWeek(new Date());
		currentWeek.setDate(currentWeek.getDate() + this.state.mod + this.state.day);

		// Prep the calendar day string
		function prepDate(date) {
			var dayName = date.getDay();
			var day = date.getDate();
			var month = date.getMonth()+1;
			var year = date.getFullYear();
			if (day.toString().length < 2) day = '0' + day;
			if (month.toString().length < 2) month = '0' + month;
			switch (dayName) {
				case 1: dayName = 'Monday'; break;
				case 2: dayName = 'Tuesday'; break;
				case 3: dayName = 'Wednesday'; break;
				case 4: dayName = 'Thursday'; break;
				case 5: dayName = 'Friday'; break;
				case 6: dayName = 'Saturday'; break;
				case 0: dayName = 'Sunday'; break;
			}
			return {
				dayName: dayName,
				day: day,
				month: month,
				year: year
			}
		}
		var dayOutput = prepDate(currentWeek);

		// Render EVERYTHING
		return (
			<div className='counter'>
				<h2>Calendar</h2>
				<div>
					<span>Week starts on </span>
					<select defaultValue={this.state.day} onChange={this.changeDay}>
						<option value='0'>Monday</option>
						<option value='1'>Tuesday</option>
						<option value='2'>Wednesday</option>
						<option value='3'>Thursday</option>
						<option value='4'>Friay</option>
						<option value='5'>Saturday</option>
						<option value='6'>Sunday</option>
					</select>
					{/*<span className='day'>{this.state.day}</span>*/}		{/* Variable output testing */}
					<br />
					<span className='date'>Current week begins on {dayOutput.dayName}, {dayOutput.day}-{dayOutput.month}-{dayOutput.year}</span>
					<br />
					<button onClick={this.previousWeek}>Previous week</button>
					{/*<span className='mod'>{this.state.mod}</span>*/}		{/* Variable output testing */}
					<button onClick={this.nextWeek}>Next week</button>
				</div>
				<div>
					<WeekComponent week={currentWeek} />
				</div>
			</div>
		);
	}
}

// Deliver
ReactDOM.render(
	<MainComponent />,
	document.getElementById('root')
);