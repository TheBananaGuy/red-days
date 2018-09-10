class HolidayComponent extends React.Component{

	// Save holiday details
	state = {
		id: this.props.data.id,
		type: this.props.data.type,
		date: this.props.data.date,
		name: this.props.data.name
	}

	render () {
		
		// Output data
		return (
			<div className={this.state.type}>{this.state.name}</div>
		);
	}
}