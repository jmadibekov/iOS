//
//  Question.swift
//  Quiz
//
//  Created by Nurbakyt Madibek on 13.04.2022.
//

struct Question {
    let text: String
    let type: ResponseType
    let answers: [Answer]
    
    static let all: [Question] = [
        Question(text: "Какую валюту Вы предпочитаете?", type: .single, answers: [
            Answer(text: "Рубль", name: .russia),
            Answer(text: "Доллар", name: .usa),
            Answer(text: "Евро", name: .germany),
            Answer(text: "Йена", name: .japan),
            Answer(text: "Гривна", name: .ukraine),
            Answer(text: "Фунт Стерлингов", name: .greatBritain),
        ]),
        Question(text: "Ваш любимый напиток?", type: .multiple, answers: [
            Answer(text: "Квас", name: .russia),
            Answer(text: "Чай", name: .greatBritain),
            Answer(text: "Медовуха", name: .ukraine),
            Answer(text: "Кола", name: .usa),
            Answer(text: "Зелёный чай", name: .japan),
            Answer(text: "Пиво", name: .germany),
        ]),
        Question(text: "Как Вы относитесь к экологии?", type: .range, answers: [
            Answer(text: "Полностью безразлично", name: .ukraine),
            Answer(text: "Безразлично", name: .russia),
            Answer(text: "Нейтрально", name: .usa),
            Answer(text: "Положительно", name: .germany),
            Answer(text: "Беспокоюсь", name: .greatBritain),
            Answer(text: "Очень беспокоюсь", name: .japan),
        ]),
    ]
}
