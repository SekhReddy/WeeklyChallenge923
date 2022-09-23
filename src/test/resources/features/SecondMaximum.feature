Feature: Weekly Coding Challenge 9/22/2022.  Accept sets of three integers and print the
      second-maximum among them

  Scenario: Find the second maximum among two sets of three integers.

        Given two sets of three integers:
        """
        2
        1 2 3
        2 3 1
        """
        When I look for the second maximum among each
        Then the two second maxima are:
        """
        3
        2
        """

  Scenario: Find the second maximum among one set of three integers.

        Given a set of three integers:
        """
        1
        1 3 2
        """
        When I look for the second maximum
        Then the second maximum is:
        """
        2
        """

  Scenario: Find the second maximum among six sets of three integers.

        Given six sets of three integers:
        """
        6
        19 23 33
        26 35 14
        36 14 24
        343 2433 15
        254 123 345
        143 3555 26666
        """
        When I look for the second maximum of each
        Then the six outputs should be:
        """
        23
        26
        24
        343
        254
        3555
        """

  Scenario: If the number of inputs does not match the first number given, print an error message.

        Given the number of inputs does not match the first number given:
        """
        2
        1 2 3
        2 3 1
        1 2 3
        """
        When I run the program
        Then the input number error should be:
        """
        Error: Number of inputs does not match the first number given.
        """

  Scenario: If the number of inputs provided is not a triple, print an error message.

        Given the inputs provided are not triples:
        """
        2
        1 2
        2 3 1
        """
        When I attempt to run the program
        Then the error message should be:
        """
        Error: Number of inputs is not a triple.
        """

  Scenario: If the number of triples provided is greater than six, print an error message.

        Given the number of triples provided is greater than six:
        """
        7
        1 2 3
        4 5 6
        2 3 1
        1 2 3
        4 5 6
        2 3 1
        1 2 3
        """
        When I look for the second maximum of these 7 triples
        Then the output error should be:
        """
        Error: Number of inputs is greater than six.
        """

  Scenario: If the number of inputs provided is less than three, print an error message.

        Given the number of inputs provided is less than three:
        """
        2
        1 2
        2 3 1
        """
        When the program is run
        Then the insufficient inputs error should be:
        """
        Error: Insufficiency many inputs.
        """

  Scenario: If an input provided is not an integer, print an error message.

        Given an input provided is not an integer:
        """
        2.5
        """
        When I attempt to find a second maximum
        Then the non-integer output error should be:
        """
        Errpr: An input is not an integer.
        """

  Scenario: If an input provided is not a number, print an error message.

        Given an input provided is not a number:
        """
        a
        """
        When I run the program on the non-number
        Then the non-number error output should be:
        """
        Error: An input is not an integer.
        """

  Scenario: If an input provided is larger than 10000, print an error message.

        Given an input provided is larger than 10000:
        """
        3
        1 2 100001
        """
        When I attempt to find the second maximum with an input too large
        Then the too-large-input output error should be:
        """
        Error: An input is larger than 10000.
        """
