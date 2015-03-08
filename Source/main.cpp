#include "Bubblewrap/Base/GoGame.hpp"
#include "Bubblewrap/Managers/MgrContainer.hpp"
#include "Bubblewrap/Render/ReWindow.hpp"
class Potato
{
public:
	Potato()
	{

	}

	Potato( int t )
	{
		u = t;
	}
	Potato( char t )
	{
		u = ( int ) t - 2;
	}
	int u = 0;
};


int main()
{
	Bubblewrap::Managers::MgrContainer<Potato> mgr;
	mgr.Create<int>("seven", 7);
	mgr.Create("zero");
	mgr.Create<char>("a", 'c');
	printf( "%d %d %c", mgr.GetItem( 0 )->u, mgr.GetItem( 1 )->u, mgr.GetItem( "a" )->u );
	Bubblewrap::Game::GoGame Game;
	Bubblewrap::Managers::MgrContainer<Bubblewrap::Render::ReWindow> Windows;
	Windows.Create<int, int, std::string>( "Main", 600, 400, "POTATO" );
	Game.Run();

}