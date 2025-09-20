module MyModule::SkillSwap {
    use aptos_framework::signer;
    use aptos_framework::coin;
    use aptos_framework::aptos_coin::AptosCoin;
    use std::string::String;

    /// Struct representing a skill offering in the marketplace
    struct SkillOffer has store, key {
        skill_name: String,     // Name of the skill being offered
        hourly_rate: u64,       // Rate per hour in APT tokens
        total_earnings: u64,    // Total tokens earned from teaching
        is_available: bool,     // Whether the tutor is currently available
    }

    /// Function to create a new skill offering
    public fun create_skill_offer(
        tutor: &signer, 
        skill_name: String, 
        hourly_rate: u64
    ) {
        let skill_offer = SkillOffer {
            skill_name,
            hourly_rate,
            total_earnings: 0,
            is_available: true,
        };
        move_to(tutor, skill_offer);
    }

    /// Function for students to book and pay for a learning session
    public fun book_learning_session(
        student: &signer,
        tutor_address: address,
        hours: u64
    ) acquires SkillOffer {
        let skill_offer = borrow_global_mut<SkillOffer>(tutor_address);
        
        // Check if tutor is available
        assert!(skill_offer.is_available, 1);
        
        // Calculate total payment
        let total_payment = skill_offer.hourly_rate * hours;
        
        // Transfer payment from student to tutor
        let payment = coin::withdraw<AptosCoin>(student, total_payment);
        coin::deposit<AptosCoin>(tutor_address, payment);
        
        // Update tutor's total earnings
        skill_offer.total_earnings = skill_offer.total_earnings + total_payment;
    }
}