from flask import Blueprint, render_template, redirect, url_for, request, session
from utilities.db.quries import DBQuery
from flask import flash
# profile blueprint definition
profile = Blueprint('profile', __name__, static_folder='static', static_url_path='/profile',
                    template_folder='templates')


# Routes
@profile.route('/profile')
def redirect_profile():
    if session['logged_in']:
        query = DBQuery()
        user = query.get_user_details(session['email'])
        print(user)
        print(int(22/5))
        rank_comments = int(user[0].comments_num)
        rank_final_dec = int(user[0].final_dec_num)*3
        rank_level = rank_comments + rank_final_dec
        print(type(session['email']))

        if rank_level <= 20:
            level = 'Bronze'
        elif rank_level <= 50:
            level = 'Silver'
        elif rank_level <= 100:
            level = 'Gold'
        elif rank_level <= 170:
            level = 'Titanium'
        else:
            level = 'Diamond'
        print(type(level))
        update_level = query.update_level(session['email'], level)
        return render_template('profile.html', register=False, logged_in=True, user=user)
    else:
        return render_template('profile.html', register=False, logged_in=False)


@profile.route('/profile/registration', methods=['POST', 'GET'])
def redirect_registration():
    if request.method == 'POST':
        query = DBQuery()
        affect_row = query.set_new_user(request.form['email'], request.form['first_name'], request.form['last_name'],
                                        request.form['password'], request.form['birth_date'],
                                        request.form['city'])
        return redirect('/')
    else:
        print('im here')
        return render_template('profile.html', register=True, logged_in=False)


@profile.route('/profile/login', methods=['POST', 'GET'])
def redirect_login():
    if request.method == 'POST':
        email_user = request.form['email']
        password = request.form['password']
        query = DBQuery()
        user = query.get_user(email_user, password)
        print(user)
        if len(user) > 0:
            session['logged_in'] = True
            session['email'] = email_user
            session['name'] = user[0].first_name
            return redirect(url_for('profile.redirect_profile', logged_in=True, user=user))
        else:
            flash("The email / password are wrong.")
    return render_template('/profile.html')


@profile.route('/profile/logout', methods=['POST', 'GET'])
def redirect_logout():
    session['logged_in'] = False
    session.pop('email', None)
    session.pop('name', None)

    return redirect('/profile')
