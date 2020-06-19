package com.tictactoe.controller;

import com.tictactoe.TicTacToe;
import com.tictactoe.service.GameService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

import javax.servlet.http.HttpServletRequest;


@Controller
public class GameController {
    @Autowired
    private GameService gameService;

    @GetMapping("/game")
    public String connectToGame(Model model) {
        model.addAttribute("game", gameService.allGames());

        return "game";
    }


    @GetMapping("/games")
    public String gameList(Model model) {
        model.addAttribute("games", gameService.allGames());
        return "games";
    }

    @PostMapping("/games")
    public String connectGame(HttpServletRequest request, @RequestParam(required = true, defaultValue = "") String action,
                              Model model) {
        String s = request.getParameter("search");
        if (action.equals("search")){
            model.addAttribute("games", gameService.allGames());
            model.addAttribute("gameId", gameService.findGame(s));
            return "games";
        }
        return "redirect:/game";
    }
}
