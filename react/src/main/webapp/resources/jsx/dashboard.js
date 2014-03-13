/** @jsx React.DOM */

var Comment = React.createClass({
    render: function () {
        return (
            <div className="comment">
                <h2 className="commentAuthor">
          {this.props.name}
                </h2>
        {this.props.children}
            </div>
            );
    }
});

var CommentList = React.createClass({
    render: function () {
        var nodes = this.props.data.map(function (app) {
            return <Comment name={app.author}>{app.text}</Comment>;
        });

        return (
            <div className="commentList">
        {nodes}
            </div>
            );
    }
});

var CommentForm = React.createClass({
    render: function () {
        return (
            <div className="commentForm">
            Hello, world! I am a CommentForm.
            </div>
            );
    }
});

var CommentBox = React.createClass({
    getInitialState: function() {
        return {data: []};
    },
    loadCommentsFromServer: function () {
        $.ajax({
            url: this.props.url,
            dataType: 'json',
            success: function (data) {
                this.setState({data: data});
            }.bind(this),

            error: function (xhr, status, err) {
                console.error(this.props.url, status, err.toString());
            }.bind(this)
        });
    },
    componentWillMount: function() {
        this.loadCommentsFromServer();
    },
    render: function () {
        return (
            <div className="commentBox">
                <h1>Comments</h1>
                <CommentList data={this.state.data}/>

            </div>
            );
    }
});

React.renderComponent(
    <CommentBox url="resources/jsx/data.json"/>,
    document.getElementById('content')
);
