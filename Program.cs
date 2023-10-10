using Microsoft.AspNetCore.Identity;
using Microsoft.EntityFrameworkCore;
using SOFT703.Data;
using SOFT703.Models;
using SOFT703.Models.ViewModels;
using SOFT703.Models.ViewModels.Contracts;
using SOFT703.Services;
using SOFT703.Services.Contracts;

var builder = WebApplication.CreateBuilder(args);

// Add services to the container.
var connectionString = builder.Configuration.GetConnectionString("DefaultConnection") ??
                       throw new InvalidOperationException("Connection string 'DefaultConnection' not found.");
builder.Services.AddDbContext<ApplicationDbContext>(options =>
    options.UseSqlServer(connectionString));
builder.Services.AddDatabaseDeveloperPageExceptionFilter();

builder.Services.AddIdentity<User, Role>(options => options.SignIn.RequireConfirmedAccount = false)
    .AddEntityFrameworkStores<ApplicationDbContext>();
builder.Services.AddControllersWithViews();
builder.Services.AddRazorPages();
builder.Services.ConfigureApplicationCookie(options => { options.LoginPath = "/Login/Login"; });
builder.Services.AddScoped<IProductService, ProductService>();
builder.Services.AddScoped<IAgentService, AgentService>();
builder.Services.AddScoped<ITransactionService, TransactionService>();
builder.Services.AddScoped<IUserService, UserService>();
builder.Services.AddScoped<IUserDetailViewModel,UserDetailViewModel>();
builder.Services.AddScoped<ILoginViewModel, LoginViewModel>();
builder.Services.AddScoped<IManagementProductViewModel, ManagementProductViewModel>();
builder.Services.AddScoped<IAgentsViewModel, AgentsViewModel>();
var app = builder.Build();

// Configure the HTTP request pipeline.
if (app.Environment.IsDevelopment())
{
    app.UseMigrationsEndPoint();
}
else
{
    app.UseExceptionHandler("/Home/Error");
    app.UseHsts();
}

app.UseHttpsRedirection();
app.UseStaticFiles();

app.UseRouting();
app.UseAuthentication();
app.UseAuthorization();

app.MapControllerRoute(
    name: "default",
    pattern: "{controller=Home}/{action=Index}/{id?}");
app.MapRazorPages();

app.Run();