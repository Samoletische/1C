﻿
Процедура КнопкаВыполнитьНажатие(Кнопка)
	Если Не ЗначениеЗаполнено(ПутьКФайлу) Тогда
		Сообщить("Сначала необходимо выбрать файл с данными.");
		Возврат;
	КонецЕсли;
	
	Если Не ЗначениеЗаполнено(ГруппаНовойНоменклатуры) Тогда
		Сообщить("Необходимо выбрать группу для добавления новой номенклатуры.");
		Возврат;
	КонецЕсли;
	
	Ответ = Вопрос("Перед заполнением таблица товаров будет очищена. Продолжить?", РежимДиалогаВопрос.ДаНет, 0);
	
	Если Ответ = КодВозвратаДиалога.Нет Тогда
		Возврат;
	КонецЕсли;
	
	ЗагрузитьDBF();
КонецПроцедуры

Процедура ПриОткрытии()
	ПродолжитьЗаполнение = Истина;
	//Сообщить("4" + ОбъектСсылка);
КонецПроцедуры

Процедура КнопкаВыбораФайлаНажатие(Элемент)
	Диалог = Новый ДиалогВыбораФайла(РежимДиалогаВыбораФайла.Открытие);
	Диалог.Фильтр = "*.dbf|*.dbf";
	Если Диалог.Выбрать() Тогда
		ПутьКФайлу = Диалог.ПолноеИмяФайла;
	КонецЕсли;
КонецПроцедуры
