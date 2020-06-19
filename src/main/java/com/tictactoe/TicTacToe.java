package com.tictactoe;

import java.util.Arrays;

public class TicTacToe {
    private int[][] ticTacToeField = {{0, 0, 0}, {0, 0, 0}, {0, 0, 0}};
    private static int rowLength = 3;

    public int[][] getTicTacToeField() {
        return ticTacToeField;
    }

    public void setTicTacToeField(int[][] ticTacToeField) {
        this.ticTacToeField = ticTacToeField;
    }

    public void refreshTicTacToeField() {
        setTicTacToeField(new int[][]{{0, 0, 0}, {0, 0, 0}, {0, 0, 0}});
    }

    private boolean checkCell(int indexY, int indexX) {
        if (ticTacToeField[indexY][indexX] == 2 || ticTacToeField[indexY][indexX] == 1) {

            System.out.println("Cell is busy");
            return false;
        }
        return true;
    }

    public int[][] move(int indexY, int indexX, int xo) {
        if (checkCell(indexY, indexX)) {
            ticTacToeField[indexY][indexX] = xo;
        }

        return ticTacToeField;
    }

    public boolean determineWinner(int[][] ticTacToeField, int player) {

        int[][] ticTacToeFieldCopy = ticTacToeField.clone();
        for (int position = 0, axis = 0; position < ticTacToeField.length; position++) {
            if (checkRow(createRow(ticTacToeFieldCopy, position), player)) {
                return true;
            } else if (position == 2 && axis == 0) {
                rotate90Clockwise(ticTacToeFieldCopy);
                axis++;
                position = -1;
            }
        }

        rotate90Clockwise(ticTacToeFieldCopy);
        rotate90Clockwise(ticTacToeFieldCopy);
        rotate90Clockwise(ticTacToeFieldCopy);


        if (ticTacToeField[1][1] == player) {
            if (checkRow(createDiagonalRow(ticTacToeFieldCopy, 0), player)
                    || checkRow(createDiagonalRow(ticTacToeFieldCopy, 1), player)) {
                return true;
            }
        }


        return false;

    }

    private int[] createRow(int[][] ticTacToeField, int position) {

        return ticTacToeField[position];


    }

    private static boolean checkRow(int[] row, int player) {
        if (Arrays.stream(row).filter(el -> el == player).count() == 3) {
            return true;
        }
        return false;
    }

    private int[] createDiagonalRow(int[][] ticTacToeField, int diagonal) {
        int[] diagonalRow = new int[ticTacToeField.length];

        if (diagonal == 1) {
            for (int i = 0; i < ticTacToeField.length; i++) {
                diagonalRow[i] = ticTacToeField[i][ticTacToeField.length - (i + 1)];
            }
        } else {
            for (int i = 0; i < ticTacToeField.length; i++) {
                diagonalRow[i] = ticTacToeField[i][i];

            }
        }
        return diagonalRow;
    }


    private void rotate90Clockwise(int[][] ticTacToeField) {
        for (int i = 0; i < rowLength / 2; i++) {
            for (int j = i; j < rowLength - i - 1; j++) {
                int temp = ticTacToeField[i][j];
                ticTacToeField[i][j] = ticTacToeField[rowLength - 1 - j][i];
                ticTacToeField[rowLength - 1 - j][i] = ticTacToeField[rowLength - 1 - i][rowLength - 1 - j];
                ticTacToeField[rowLength - 1 - i][rowLength - 1 - j] = ticTacToeField[j][rowLength - 1 - i];
                ticTacToeField[j][rowLength - 1 - i] = temp;
            }
        }
    }



}
