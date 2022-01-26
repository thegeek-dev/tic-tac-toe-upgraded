# tic-tac-toe-upgraded

As of now this thing is in zero stage. Only a basic starting point has been created. All the development will be done on main branch for now.

## Idea

The basic idea of what is being developed is as follows:

I am sure almost everyone knows how to play Tic Tac Toe. There are two players, let's say one with a Cross(X) and one with a Circle(O). Whoever gets there placeholder(Cross or Circle) in a line first, wins. The line could be a Row, Column or a Diagonal. This is for how a 3/3 Tic Tac Toe works.

In this upgraded version we are going to provide each player three types of placholder. One will be small, one medium and one big. Each player will get only two placeholders of a type. All in all one player will get 2 small Circles, 2 medium and 2 big and other player will get 2 small Crosses, 2 medium and 2 big.

Now, the logic is that, a larger placeholder can capture the cell captured my opponent's(and only opponent's) smaller placeholder.

The player with placeholders' in a line will win, irrespective of sizes.

I hope you get the gist of it.

## Development

This is being developed with **Flutter** and will therefore be cross platform. As of now, it is optimized only for mobile devices(not even landscape). If you try to run this on a device with larger width than height, you will get pixel overflow. If you want to make it avaialble for web or desktop now, you can fork it now, as I will be implementing that only when it's ready for mobile devices.

If this works out fine, I have two things in my mind for further development - 
- Implementing the same logic for larger sets of this game(4x4, 5x5.....)
- Implementing a realtime online multiplayer gameplay using Express.

## Contribution

You are more than welcome to contribute on this project. Any and all pull requests will be considered with appreciation and importance.

To work on this, you will need to setup Flutter SDK on your system. You can visit [Flutter - Getting Started](https://docs.flutter.dev/get-started/install) and setup your dev environment.
