const riddles = [
	{
		answers: ["banco de dados", "bd"]
	},
	{
		answers: ["pa", "algoritmo"]
	},
	{
		answers: ["nuvem"]
	},
	{
		answers: ["algoritmo"]
	},
	{
		answers: ["sustentabilidade"]
	},
	{
		answers: ["b"]
	},
	{
		answers: ["c"]
	},
	{
		answers: ["b"]
	},
	{
		answers: ["b"]
	},
	{
		answers: ["artes digitais", "arte digital", "artes digital", "artes digital"]
	},
	{
		answers: ["b"]
	},
	{
		answers: ["a"]
	},
	{
		answers: ["b"]
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

		if (riddleIndex === riddles.length - 1) {
			feedback.textContent = "Você resolveu todas as perguntas.";
			feedback.classList.add("is-visible", "is-correct");
			form.querySelector(".answer-row").hidden = true;
			form.querySelector(".choice-list")?.setAttribute("hidden", "");
			return;
		}

		window.location.href = `arg${riddleIndex + 2}.html`;
	});

	input?.addEventListener("input", () => {
		input.removeAttribute("aria-invalid");
		feedback.classList.remove("is-visible");
	});

	form.querySelectorAll('input[name="answer"]').forEach((choice) => {
		choice.addEventListener("change", () => {
			feedback.classList.remove("is-visible");
		});
	});
}
