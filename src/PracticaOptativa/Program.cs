//namespace PracticaOptativa;
using PracticaOptativa; 
using PracticaOptativa.Agents; 
using PracticaOptativa.Orchestration;
using PracticaOptativa.Services;
using PracticaOptativa.Tools;
using Serilog;

var builder = WebApplication.CreateBuilder(args);

// Add services to the container.

builder.Services.AddControllers();
// Learn more about configuring Swagger/OpenAPI at https://aka.ms/aspnetcore/swashbuckle
builder.Services.AddEndpointsApiExplorer();
builder.Services.AddSwaggerGen();
builder.Services.AddScoped<LLMService>();
builder.Services.AddScoped<AgentOrchestrator>();
builder.Services.AddScoped<CodingAgent>();
builder.Services.AddScoped<ReviewAgent>();
builder.Services.AddSingleton<FileTool>();
//builder.Services.AddScoped<IProductService, ProductService>();

Log.Logger = new LoggerConfiguration()
    .WriteTo.Console()
    .CreateLogger();
    
var app = builder.Build();
builder.Host.UseSerilog();
// Configure the HTTP request pipeline.
if (app.Environment.IsDevelopment())
{
    app.UseSwagger();
    app.UseSwaggerUI();
}

app.UseHttpsRedirection();

app.UseAuthorization();

app.MapControllers();

app.Run();
