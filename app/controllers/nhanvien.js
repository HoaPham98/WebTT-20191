const dateFormat = require('dateformat');
const isEmpty = require('lodash.isempty');
const moment = require('moment');
const fetch = require('node-fetch');

const { Department } = require('../models/departments');

// exports.insertNews = async function (req, res) {
//     var now = new Date();
//     var created_at = dateFormat(now, "yyyy-mm-dd HH:MM:ss");
//     var updated_at = created_at;
//     var newsTemp = {};
//     newsTemp.title = req.body.title;
//     newsTemp.content = req.body.content;
//     newsTemp.created_at = created_at;
//     newsTemp.updated_at = updated_at;

//     //console.log(newDramatic);
//     const news = await News.query()
//         .allowGraph('[title, content, created_at, updated_at]')
//         .insert(newsTemp)
//         //.then(res.send("okInsertDrama"))
//     req.flash('flash', 'Thêm thành công');
//     res.redirect(301, '/admin/news'); 
// }

// exports.updateNews = async function (req, res) {
//     var now = new Date();
//     // var backOneWeek = new Date(now);
//     // backOneWeek.setDate(backOneWeek.getDate() - 7);
//     var updated_at = dateFormat(now, "yyyy-mm-dd HH:MM:ss");
//     const news = await News.query()
//         .findById(req.body.id)
//         .patch({
//             title: req.body.title,
//             content: req.body.content,     
//             updated_at: updated_at
//         })
//     req.flash('flash', 'Cập nhật thành công');
//     res.redirect(301, '/admin/news'); 
// }

// exports.delNews = async function (req, res) {
//     const news = await News.query()
//         .deleteById(req.params.id)
//     res.send("success");
// }

// async function getNewsUIByTime(req, res) {
//     var regex = /^((?:(?:1[6-9]|2[0-9])\d{2})(-)(?:(?:(?:0[13578]|1[02])(-)31)|((0[1,3-9]|1[0-2])(-)(29|30))))$|^(?:(?:(?:(?:1[6-9]|[2-9]\d)?(?:0[48]|[2468][048]|[13579][26])|(?:(?:16|[2468][048]|[3579][26])00)))(-)02(-)29)$|^(?:(?:1[6-9]|2[0-9])\d{2})(-)(?:(?:0[1-9])|(?:1[0-2]))(-)(?:0[1-9]|1\d|2[0-8])$/
//     var regexTitle = /\`|\~|\@|\#|\$|\%|\^|\&|\*|\(|\)|\+|\=|\[|\{|\]|\}|\||\\|\<|\>|\/|\""|\;/
//     var title = req.query.title;
//     var time = req.query.time;
//     var start = time + " 00:00:00";
//     var end = time + " 23:59:59";

//     if(regex.test(time) && (!regexTitle.test(title)) && title.length > 0){
//         var news = await News.query()
//         .where('title', 'like', '%'+title+'%')
//         .where('updated_at', '>', start)
//         .where('updated_at', '<', end)
//     }
//     else if(!regexTitle.test(title) && time.length==0 && title.length > 0){
//         var news = await News.query()
//         .where('title', 'like', '%'+title+'%')

//     }else if(!regexTitle.test(title) && regex.test(time) && title.length == 0){
//         var news = await News.query()
//         .where('updated_at', '>', start)
//         .where('updated_at', '<', end)

//     } else {              
//         var news = []
//     }

//     res.render('admin/news_manage.ejs', {
//         message: req.flash('flash'),
//         user: req.user,
//         records: news,
//         error : req.flash("error"),
//         success: req.flash("success"),
//         session:req.session,
//         title: "Admin Main Page",

//     });

// }
function checkStatus(response) {
    if (response.ok) {
        return Promise.resolve(response);
    } else {
        return Promise.reject(new Error(response.statusText));
    }
}

function parseJSON(response) {
    return response.json();
}

function parseJSONWithPromise(response) {
    return Promise.resolve(response.json());
}

function setTime(req) {
    var params = {
        startTime: req.query.startTime + ' 00:00:00',
        endTime: req.query.endTime + ' 23:59:59'
    };

    return query = Object.keys(params)
    .map(k => k + '=' + params[k])
    .join('&');
}

async function getNewsByTimeUI(req, res) {
    const departments = await Department.query();
    var url = 'https://dsd10-kong.herokuapp.com/kpis';
    var id = req.query.id;
    url = url + '?id=' + id + '&' + setTime(req);
    var kpiEmployee = [];
    fetch(url)
    .then(checkStatus)
    .then(parseJSONWithPromise)
    .then(data => {
        kpiEmployee = data.data;
        console.log(kpiEmployee);
        res.render('admin/thong_ke_kpi_nhan_vien.ejs', {
            message: req.flash('flash'),
            departs: departments,
            user: req.user,
            startTime: req.query.startTime,
            endTime: req.query.endTime,
            records: kpiEmployee,
            error : req.flash("error"),
            success: req.flash("success"),
            session:req.session,
            title: "Admin Main Page",

        }); 
    })
    .catch(error => console.log('There was a problem!', error))
}

async function getNewsUI(req, res) {
    if(isEmpty(req.query)){
        const departments = await Department.query();
        console.log(departments[0].id)
        var url = 'https://dsd10-kong.herokuapp.com/kpis?id=1&startTime=2019-11-01%2000:00:00&endTime=2019-12-30%2000:00:00';
        // var department = req.query.department;
        //var urls = department.map(id => departmentKPI + '?' + setUrlForCompare(req) + '&' + 'departmentId=' + id)
        var kpiEmployee = [];
        fetch(url)
        .then(checkStatus)
        .then(parseJSONWithPromise)
        .then(data => {
            kpiEmployee = data.data;
            console.log(kpiEmployee);
            res.render('admin/thong_ke_kpi_nhan_vien.ejs', {
                message: req.flash('flash'),
                departs: departments,
                user: req.user,
                startTime: '2019-11-01',
                endTime: '2019-12-30',
                records: kpiEmployee,
                error : req.flash("error"),
                success: req.flash("success"),
                session:req.session,
                title: "Admin Main Page",

            }); 
        })
        .catch(error => console.log('There was a problem!', error))
    }else{
        getNewsByTimeUI(req, res)
    }
    

    // var startTemp = moment().subtract(7, 'days');
    // startTemp = startTemp.format('YYYY-MM-DD');
    // var nowTemp = moment().format('YYYY-MM-DD');

    // var start =  startTemp + " 00:00:00";
    // var end = nowTemp + "23:59:59";
    // const news = await News.query()
    // .where('updated_at', '>', start)
    // .where('updated_at', '<', end)

}

async function getNewsByTimeUI(req, res) {
    const departments = await Department.query();
    var url = 'https://dsd10-kong.herokuapp.com/kpis';
    var id = req.query.id;
    url = url + '?id=' + id + '&' + setTime(req);
    var kpiEmployee = [];
    fetch(url)
    .then(checkStatus)
    .then(parseJSONWithPromise)
    .then(data => {
        kpiEmployee = data.data;
        console.log(kpiEmployee);
        res.render('admin/thong_ke_kpi_nhan_vien.ejs', {
            message: req.flash('flash'),
            departs: departments,
            user: req.user,
            startTime: req.query.startTime,
            endTime: req.query.endTime,
            records: kpiEmployee,
            error : req.flash("error"),
            success: req.flash("success"),
            session:req.session,
            title: "Admin Main Page",

        }); 
    })
    .catch(error => console.log('There was a problem!', error))
}

async function getChart(req, res) {
    if(isEmpty(req.query)){
        const departments = await Department.query();
        console.log(departments[0].id)
        var url = 'https://dsd10-kong.herokuapp.com/kpis?id=1&startTime=2019-11-01%2000:00:00&endTime=2019-12-30%2000:00:00';
        // var department = req.query.department;
        //var urls = department.map(id => departmentKPI + '?' + setUrlForCompare(req) + '&' + 'departmentId=' + id)
        var kpiEmployee = [];
        fetch(url)
        .then(checkStatus)
        .then(parseJSONWithPromise)
        .then(data => {
            kpiEmployee = data.data;
            console.log(kpiEmployee);
            res.render('admin/bieu_do.ejs', {
                message: req.flash('flash'),
                departs: departments,
                user: req.user,
                startTime: '2019-11-01',
                endTime: '2019-12-30',
                records: kpiEmployee,
                error : req.flash("error"),
                success: req.flash("success"),
                session:req.session,
                title: "Admin Main Page",

            }); 
        })
        .catch(error => console.log('There was a problem!', error))
    }else{
        getChartByTime(req, res)
    }

}

async function getChartByTime(req, res) {

    res.render('admin/bieu_do.ejs', {
        message: req.flash('flash'),
        user: req.user,
        startTime: req.query.start,
        endTime: req.query.end,
        error : req.flash("error"),
        success: req.flash("success"),
        session:req.session,
        title: "Admin Main Page",

    }); 


}

async function getCompareKPICriterias(req, res) {
    if(isEmpty(req.query)){
        const departments = await Department.query();
        var url = 'https://it4883microservice.herokuapp.com/kpi-compare-criterias?id=1&startTime=2019-11-01%2000:00:00&endTime=2019-12-30%2000:00:00';
        // var department = req.query.department;
        //var urls = department.map(id => departmentKPI + '?' + setUrlForCompare(req) + '&' + 'departmentId=' + id)
        var kpiEmployee = [];
        fetch(url)
        .then(checkStatus)
        .then(parseJSONWithPromise)
        .then(data => {

            kpiEmployee = data.data.sap_xep;
            criterias = data.data.tieu_chi;
            console.log(criterias)
            res.render('admin/sosanh_kpi_nhan_vien.ejs', {
                message: req.flash('flash'),
                departs: departments,
                id : data.data.id,
                user: req.user,
                startTime: '2019-11-01',
                endTime: '2019-12-30',
                records: kpiEmployee,
                criterias: criterias,
                error : req.flash("error"),
                success: req.flash("success"),
                session:req.session,
                title: "Admin Main Page",

            }); 
        })
        .catch(error => console.log('There was a problem!', error))
    }else{
        getCompareKPICriteriasByTime(req, res)
    }
}

async function getCompareKPICriteriasByTime(req, res) {
    const departments = await Department.query();
    var id = req.query.depart_id;
    var url = 'https://it4883microservice.herokuapp.com/kpi-compare-criterias';
    url = url + '?id=' + id + '&' + setTime(req);
        //var urls = department.map(id => departmentKPI + '?' + setUrlForCompare(req) + '&' + 'departmentId=' + id)
        var kpiEmployee = [];
        fetch(url)
        .then(checkStatus)
        .then(parseJSONWithPromise)
        .then(data => {

            kpiEmployee = data.data.sap_xep;
            criterias = data.data.tieu_chi;
            console.log(criterias)
            res.render('admin/sosanh_kpi_nhan_vien.ejs', {
                message: req.flash('flash'),
                departs: departments,
                id : data.data.id,
                user: req.user,
                startTime: req.query.startTime,
                endTime: req.query.endTime,
                records: kpiEmployee,
                criterias: criterias,
                error : req.flash("error"),
                success: req.flash("success"),
                session:req.session,
                title: "Admin Main Page",

            }); 
        })
        .catch(error => console.log('There was a problem!', error))
    }


    async function getAllKPIByTimeUI(req, res) {
        const departments = await Department.query();
        var url = 'https://dsd10-kong.herokuapp.com/kpi-all-company';
        url = url + '?' + setTime(req);
        var kpiEmployee = [];
        fetch(url)
        .then(checkStatus)
        .then(parseJSONWithPromise)
        .then(data => {
            kpiEmployee = data.data;
            console.log(kpiEmployee);
            res.render('admin/kpi_tong_hop.ejs', {
                message: req.flash('flash'),
                departs: departments,
                user: req.user,
                startTime: req.query.startTime,
                endTime: req.query.endTime,
                records: kpiEmployee,
                error : req.flash("error"),
                success: req.flash("success"),
                session:req.session,
                title: "Admin Main Page",

            }); 
        })
        .catch(error => console.log('There was a problem!', error))
    }

async function getAllKPIUI(req, res) {
        if(isEmpty(req.query)){

            const departments = await Department.query();
            var url = 'https://dsd10-kong.herokuapp.com/kpi-all-company?startTime=2019-11-01%2000:00:00&endTime=2019-12-30%2000:00:00';
        // var department = req.query.department;
        //var urls = department.map(id => departmentKPI + '?' + setUrlForCompare(req) + '&' + 'departmentId=' + id)
        var kpiEmployee = [];
        fetch(url)
        .then(checkStatus)
        .then(parseJSONWithPromise)
        .then(data => {
            kpiEmployee = data.data;
                //console.log(data)
                //console.log(kpiEmployee);
                res.render('admin/kpi_tong_hop.ejs', {
                    message: req.flash('flash'),
                    departs: departments,
                    user: req.user,
                    startTime: '2019-11-01',
                    endTime: '2019-12-30',
                    records: kpiEmployee,
                    error : req.flash("error"),
                    success: req.flash("success"),
                    session:req.session,
                    title: "Admin Main Page",

                }); 
            })
        .catch(error => console.log('There was a problem!', error))
    }else{
        getAllKPIByTimeUI(req, res)
    }
}

async function getDetailKPIEmployeeUI(req, res) {
    var url = 'https://dsd10-kong.herokuapp.com/kpi-percent';
    var id = req.query.id;
    console.log(id)
    var employee_id = req.query.employee_id;
    var startTime = req.query.startTime + ' 00:00:00';
    var endTime = req.query.endTime + ' 23:59:59';
    console.log(startTime + ' ' + endTime)
    url = url + '?id='+ id + '&employee_id='+ employee_id+ '&startTime='+startTime + '&endTime='+ endTime
    var kpiEmployee = [];
    fetch(url)
    .then(checkStatus)
    .then(parseJSONWithPromise)
    .then(data => {
        kpiEmployee = data.data.result;
        console.log(kpiEmployee);
        res.render('admin/chitiet_kpi_nhan_vien.ejs', {
            message: req.flash('flash'),
            user: req.user,
            records: kpiEmployee,
            error : req.flash("error"),
            success: req.flash("success"),
            session:req.session,
            title: "Admin Main Page",

        }); 
    })
    .catch(error => console.log('There was a problem!', error))

    // var startTemp = moment().subtract(7, 'days');
    // startTemp = startTemp.format('YYYY-MM-DD');
    // var nowTemp = moment().format('YYYY-MM-DD');

    // var start =  startTemp + " 00:00:00";
    // var end = nowTemp + "23:59:59";
    // const news = await News.query()
    // .where('updated_at', '>', start)
    // .where('updated_at', '<', end)

}
async function getKPIDepartmentByTimeUI(req, res) {
    const departments = await Department.query();
    var url = 'https://dsd10-kong.herokuapp.com/kpi-departments?';
    var id = req.query.id;
    url = url + setTime(req);
    var kpiDepartment = [];
    fetch(url)
    .then(checkStatus)
    .then(parseJSONWithPromise)
    .then(data => {
        kpiDepartment = data.data;
        console.log(kpiDepartment);
        res.render('admin/phong_ban.ejs', {
            message: req.flash('flash'),
            departs: departments,
            user: req.user,
            startTime: req.query.startTime,
            endTime: req.query.endTime,
            records: kpiDepartment,
            error : req.flash("error"),
            success: req.flash("success"),
            session:req.session,
            title: "Admin Main Page",

        }); 
    })
    .catch(error => console.log('There was a problem!', error))
}

async function getKPIDepartmentUI(req, res) {
    if(isEmpty(req.query)){
        const departments = await Department.query();
        console.log(departments[0].id)
        var url = 'https://dsd10-kong.herokuapp.com/kpi-departments?startTime=2019-11-01%2000:00:00&endTime=2019-12-30%2000:00:00';
        // var department = req.query.department;
        //var urls = department.map(id => departmentKPI + '?' + setUrlForCompare(req) + '&' + 'departmentId=' + id)
        var kpiDepartment = [];
        fetch(url)
        .then(checkStatus)
        .then(parseJSONWithPromise)
        .then(data => {
            kpiDepartment = data.data;
            console.log(kpiDepartment);
            res.render('admin/phong_ban.ejs', {
                message: req.flash('flash'),
                departs: departments,
                user: req.user,
                startTime: '2019-11-01',
                endTime: '2019-12-30',
                records: kpiDepartment,
                error : req.flash("error"),
                success: req.flash("success"),
                session:req.session,
                title: "Admin Main Page",

            }); 
        })
        .catch(error => console.log('There was a problem!', error))
    }else{
        getKPIDepartmentByTimeUI(req, res)
    }
}

async function getDetailKPIDepartmentUI(req, res) {
    var url = 'https://it4883microservice.herokuapp.com/kpi-department-percent';
    var id = req.query.id;
    var startTime = req.query.startTime + ' 00:00:00';
    var endTime = req.query.endTime + ' 23:59:59';
    console.log(startTime + ' ' + endTime)
    url = url + '?id='+ id + '&startTime='+startTime + '&endTime='+ endTime
    var kpiDepart = [];
    fetch(url)
    .then(checkStatus)
    .then(parseJSONWithPromise)
    .then(data => {
        kpiDepart = data.data.result;
        //console.log(kpiEmployee);
        res.render('admin/detai_department.ejs', {
            message: req.flash('flash'),
            user: req.user,
            records: kpiDepart,
            error : req.flash("error"),
            success: req.flash("success"),
            session:req.session,
            title: "Admin Main Page",

        }); 
    })
    .catch(error => console.log('There was a problem!', error))

}

async function getCompareDepartKPICriterias(req, res) {
    if(isEmpty(req.query)){
        const departments = await Department.query();
        var url = 'https://it4883microservice.herokuapp.com/kpi-department-criterias?id=1&startTime=2019-11-01%2000:00:00&endTime=2019-12-30%2000:00:00';
        // var department = req.query.department;
        //var urls = department.map(id => departmentKPI + '?' + setUrlForCompare(req) + '&' + 'departmentId=' + id)
        var kpiDepart = [];
        fetch(url)
        .then(checkStatus)
        .then(parseJSONWithPromise)
        .then(data => {

            kpiDepart = data.data.sap_xep;
            criterias = data.data.tieu_chi;
            console.log(criterias)
            res.render('admin/sosanh_kpi_phong_ban.ejs', {
                message: req.flash('flash'),
                departs: departments,
                user: req.user,
                startTime: '2019-11-01',
                endTime: '2019-12-30',
                records: kpiDepart,
                criterias: criterias,
                error : req.flash("error"),
                success: req.flash("success"),
                session:req.session,
                title: "Admin Main Page",

            }); 
        })
        .catch(error => console.log('There was a problem!', error))
    }else{
        getCompareDepartKPICriteriasByTime(req, res)
    }
}

async function getCompareDepartKPICriteriasByTime(req, res) {
    const departments = await Department.query();
    var id = req.query.depart_id;
    var url = 'https://it4883microservice.herokuapp.com/kpi-department-criterias';
    url = url + '?id=' + id + '&' + setTime(req);
        //var urls = department.map(id => departmentKPI + '?' + setUrlForCompare(req) + '&' + 'departmentId=' + id)
        var kpiDepart = [];
        fetch(url)
        .then(checkStatus)
        .then(parseJSONWithPromise)
        .then(data => {

            kpiDepart = data.data.sap_xep;
            criterias = data.data.tieu_chi;
            console.log(criterias)
            res.render('admin/sosanh_kpi_phong_ban.ejs', {
                message: req.flash('flash'),
                departs: departments,
                user: req.user,
                startTime: req.query.startTime,
                endTime: req.query.endTime,
                records: kpiDepart,
                criterias: criterias,
                error : req.flash("error"),
                success: req.flash("success"),
                session:req.session,
                title: "Admin Main Page",

            }); 
        })
        .catch(error => console.log('There was a problem!', error))
    }

module.exports = {
    getNewsUI,
    getDetailKPIEmployeeUI,
    getAllKPIUI,
    getCompareKPICriterias,
    getChart,
    getKPIDepartmentUI,
    getCompareDepartKPICriterias,
    getDetailKPIDepartmentUI
}