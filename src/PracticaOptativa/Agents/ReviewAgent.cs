
namespace PracticaOptativa.Agents;

using PracticaOptativa.Services;
//using PracticaOptativa.Tools;

public class ReviewAgent
{
    private readonly LLMService _llm;

    public ReviewAgent(LLMService llm)
    {
        _llm = llm;
    }

    public async Task<string> Review(string code)
    {
        var prompt = $@"
Eres un experto en revisión de código.

Analiza este código y mejora:
{code}
";

        return await _llm.AskAsync(prompt);
    }
}