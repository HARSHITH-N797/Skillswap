# SkillSwap - Peer Learning Marketplace

## Description

SkillSwap is a decentralized peer-to-peer learning marketplace built on the Aptos blockchain. The platform enables individuals to monetize their skills by offering tutoring services while allowing students to access affordable, personalized learning experiences. The smart contract facilitates secure, transparent transactions between tutors and students using APT tokens, eliminating the need for traditional intermediaries.

Key features include:
- **Skill Offering Creation**: Tutors can list their expertise with custom hourly rates
- **Direct Booking System**: Students can book learning sessions directly with tutors
- **Automated Payments**: Smart contract handles payment calculations and transfers
- **Earnings Tracking**: Real-time tracking of tutor earnings
- **Availability Management**: Tutors can manage their availability status

## Vision

Our vision is to democratize education by creating a global, decentralized learning ecosystem where knowledge flows freely between peers. We aim to:

- **Empower Educators**: Enable anyone with valuable skills to become a tutor and earn income
- **Accessible Learning**: Make quality education affordable and accessible to learners worldwide
- **Trust & Transparency**: Leverage blockchain technology to ensure secure, transparent transactions
- **Community-Driven Growth**: Foster a self-sustaining community of learners and educators
- **Financial Inclusion**: Provide earning opportunities for educators in emerging markets

## Future Scope

### Phase 1 - Enhanced Features
- **Rating & Review System**: Implement tutor rating mechanisms for quality assurance
- **Session Scheduling**: Add calendar integration for better session management
- **Multi-token Support**: Accept various cryptocurrencies beyond APT
- **Dispute Resolution**: Implement automated dispute handling mechanisms

### Phase 2 - Platform Expansion
- **Certification System**: Issue blockchain-verified certificates upon course completion
- **Group Learning Sessions**: Support for one-to-many tutoring sessions
- **Skill Categories**: Organize offerings by subject areas and difficulty levels
- **Advanced Search**: Implement filtering by price, rating, availability, and location

### Phase 3 - Ecosystem Development
- **Mobile Application**: Native mobile apps for iOS and Android
- **Video Integration**: Built-in video calling for remote learning sessions
- **Governance Token**: Introduce platform governance through community voting
- **Partnership Program**: Integrate with educational institutions and professional organizations

### Phase 4 - Global Expansion
- **Multi-language Support**: Platform localization for global adoption
- **Regional Marketplaces**: Localized versions for different geographical markets
- **Corporate Training**: B2B solutions for enterprise skill development
- **AI-Powered Matching**: Intelligent tutor-student matching algorithms

## Contract Address

**Devnet**: `0x31ce171116ca1a52237449e7d8ffea3d8d813e7c4b59b6010b20ac2ad778a91b`
<img width="1890" height="912" alt="image" src="https://github.com/user-attachments/assets/4f742829-469d-44fa-b6fe-5d27a52de57d" />


> **Note**: Contract addresses will be updated once the smart contract is deployed to the respective networks.

---

## Getting Started

### Prerequisites
- Aptos CLI installed
- Aptos wallet with APT tokens
- Basic understanding of Move programming language

### Deployment Instructions
1. Clone this repository
2. Compile the contract: `aptos move compile`
3. Deploy to testnet: `aptos move publish --profile testnet`
4. Update contract address in this README

### Usage Examples

**For Tutors:**
```move
// Create a skill offer for JavaScript programming at 50 APT per hour
create_skill_offer(tutor_signer, b"JavaScript Programming", 50);
```

**For Students:**
```move
// Book a 2-hour session with a tutor
book_learning_session(student_signer, tutor_address, 2);
```

---

**Built with ❤️ on Aptos Blockchain**
