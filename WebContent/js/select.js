layui.use('form', function() {
	var form = layui.form;
		
	var province = $("#province"),
		city = $("#city"),
		district = $("#district"),
		small = $("#small");
	
	//初始将省份数据赋予
	for (var i = 0; i < provinceList.length; i++) {
		addEle(province, provinceList[i].name);
	}
	
	//赋予完成 重新渲染select
	form.render('select');
	
	//向select中 追加内容
	function addEle(ele, value) {
		var optionStr = "";
		optionStr = "<option value=" + value + " >" + value + "</option>";
		ele.append(optionStr);
	}

	//移除select中所有项 赋予初始值
	function removeEle(ele) {
		ele.find("option").remove();
		var optionStar = "<option value=" + "0" + ">" + "请选择" + "</option>";
		ele.append(optionStar);
	}

	var provinceText,
		cityText,
		cityItem,
		districtText,
		districtItem,
		smallItem,
		smallText;
	
	//选定省份后 将该省份的数据读取追加上
	form.on('select(province)', function(data) {
		provinceText = data.value;
		$.each(provinceList, function(i, item) {
			if (provinceText == item.name) {
				cityItem = i;
				return cityItem;
			}
		});
		removeEle(city);
		removeEle(district);
		$.each(provinceList[cityItem].list, function(i, item) {
			addEle(city, item.name);
		})
		//重新渲染select 
		form.render('select');
	})

	////选定市或直辖县后 将对应的数据读取追加上
	form.on('select(city)', function(data) {
		cityText = data.value;
		removeEle(district);
		$.each(provinceList, function(i, item) {
			if (provinceText == item.name) {
				cityItem = i;
				return cityItem;
			}
		});
		$.each(provinceList[cityItem].list, function(i, item) {
			if (cityText == item.name) {
				for (var n = 0; n < item.list.length; n++) {
					addEle(district, item.list[n].name);
				}
			}
		})
		//重新渲染select 
		form.render('select');
	})

	////选定市或直辖县后 将对应的数据读取追加上
	form.on('select(district)', function(data) {
		smallText = data.value;
		removeEle(small);
		$.each(provinceList, function(i, item) {
			if (provinceText == item.name) {
				cityItem = i;
				return cityItem;
			}
		});

		$.each(provinceList[cityItem].list, function(i, item) {
			if (cityText == item.name) {
				districtItem = i;
				return districtItem;
			}
		});

		$.each(provinceList[cityItem].list[districtItem].list, function(i, item) {
			if (smallText == item.name) {
				smallItem = i;
				return smallItem;
			}
		});
		//console.log(cityItem+" "+districtItem+" "+smallItem)
		//console.log(provinceList[cityItem].list[districtItem].list[smallItem])

		$.each(provinceList[cityItem].list[districtItem].list[smallItem], function(i, item) {
			
			if(districtText==item.name&&i=='list'){
				for(var n=0;n<item.length;n++){
					addEle(small,item[n].name)
				}
			}
		})
		//重新渲染select 
		form.render('select');
	})

})