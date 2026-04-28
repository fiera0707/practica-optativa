using PracticaOptativa.Agents;
using System.Threading.Tasks;

namespace PracticaOptativa.Orchestration;
public class AgentOrchestrator
{
    private readonly CodingAgent _coding;
    private readonly ReviewAgent _review;

    public AgentOrchestrator(CodingAgent coding, ReviewAgent review)
    {
        _coding = coding;
        _review = review;
    }

    public async Task<string> Execute(string input)
    {
        // 1. Generar código
        var code = await _coding.GenerateCode(input, "csharp");

        // 2. Revisar código
        var reviewed = await _review.Review(code);

        return reviewed;
    }
}