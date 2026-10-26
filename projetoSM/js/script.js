const riddles = [
	{
		answers: ["banco de dados", "bd", "um banco de dados", "isso e um banco de dados", "um bd", "isto e um bd", "isso e um bd", "isto e um banco de dados"]
	},
	{
		answers: ["pixel", "px", "pixeis", "isso e um pixel", "um pixel", "um px", "isso e um px"]
	},
	{
		answers: ["algoritmo", "pa", "programacao", "programacao e algoritmos", "programacao e algoritmo", "back end", "back-end"]
	},
	{
		answers: ["sustentabilidade"]
	},
	{
		answers: ["interfaces web", "ui", "front-end", "front end", "html", "css"]
	}
];

const puzzlePage = document.querySelector("[data-riddle]");

if (puzzlePage) {
	const riddleIndex = Number(puzzlePage.dataset.riddle) - 1;
	const riddle = riddles[riddleIndex];
	const form = document.querySelector(".answer-form");
	const input = document.querySelector("#answer");
	const feedback = document.querySelector(".feedback");

	form.addEventListener("submit", (event) => {
		event.preventDefault();
		const selectedChoice = form.querySelector('input[name="answer"]:checked');
		const answer = input
			? input.value.trim().toLowerCase()
			: selectedChoice?.value ?? "";

		if (!answer) {
			feedback.textContent = "Selecione uma alternativa.";
			feedback.classList.add("is-visible");
			return;
		}

		if (!riddle.answers.includes(answer)) {
			feedback.textContent = "Resposta incorreta.";
			feedback.classList.add("is-visible");
			input?.setAttribute("aria-invalid", "true");
			return;
		}

		feedback.textContent = "Resposta correta! Anote no seu gabarito.";
		feedback.classList.add("is-visible", "is-correct");
	});

	input?.addEventListener("input", () => {
		input.removeAttribute("aria-invalid");
		feedback.classList.remove("is-visible", "is-correct");
	});

	form.querySelectorAll('input[name="answer"]').forEach((choice) => {
		choice.addEventListener("change", () => {
			feedback.classList.remove("is-visible", "is-correct");
		});
	});
}
