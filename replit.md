# Overview

speekzone is a full-stack social media application built as a progressive web app (PWA) and native iOS app with a React frontend and Express.js backend. The platform unites diverse voices from all over the world, emphasizing authentic expression through chronological feeds with no algorithmic manipulation. It features global and regional feeds, user profiles, direct messaging, live streaming (30-minute limit), and real-time interactions like posting, commenting, and liking.

## Recent Changes (October 2025)
- **Marketing Integrations** - Connected Google Sheets analytics (live dashboard), SendGrid email automation, RSS feed, Discord/Telegram webhooks, and social media cross-posting framework
- **Analytics Dashboard** - Auto-syncing user signups, post engagement, and daily stats to Google Sheets (https://docs.google.com/spreadsheets/d/1PzUMmDMPnnhNeqpzv03hiwbAmv4Ya6jjmfo2LYb6dUg)
- **Email Automation** - Welcome emails, weekly digests, and follower notifications via SendGrid
- Added complete live streaming infrastructure with WebSocket/WebRTC support
- Implemented 30-minute automatic stream termination
- Configured all Apple App Store requirements and permissions
- Added iOS-specific privacy descriptions for camera, microphone, and live streaming
- Created build scripts and deployment documentation for App Store submission

# User Preferences

Preferred communication style: Simple, everyday language.

# System Architecture

## Frontend Architecture
- **React with TypeScript**: Modern React application using hooks and functional components
- **Vite Build System**: Fast development server and optimized production builds
- **UI Framework**: Shadcn/ui components built on Radix UI primitives for consistent, accessible design
- **Styling**: Tailwind CSS with CSS variables for theming and dark mode support
- **State Management**: TanStack Query (React Query) for server state management and caching
- **Routing**: Wouter for lightweight client-side routing
- **PWA Features**: Service worker, manifest file, and offline capabilities for app-like experience

## Backend Architecture
- **Express.js Server**: RESTful API with middleware for JSON parsing, logging, and error handling
- **TypeScript**: Full type safety across the entire application stack
- **Development Setup**: Hot module replacement with Vite integration for seamless development
- **Route Organization**: Centralized route registration with organized endpoint structure
- **Error Handling**: Global error middleware with proper HTTP status codes

## Data Storage
- **Database**: PostgreSQL with Drizzle ORM for type-safe database operations
- **Schema Design**: Comprehensive social media schema including users, posts, comments, likes, follows, and messages
- **Database Connection**: Neon Database (serverless PostgreSQL) for cloud hosting
- **Migrations**: Drizzle-kit for database schema management and version control
- **Type Generation**: Zod schemas for runtime validation and TypeScript type inference

## Feed System
- **Multiple Feed Types**: Timeline (following-based), Global (all posts), and Regional (location-based) feeds
- **Chronological Ordering**: True chronological feeds without algorithmic manipulation
- **Content Filtering**: Regional posts can be filtered by location for localized content discovery

## Real-time Features
- **Live Streaming**: WebSocket-powered live video streaming with 30-minute maximum duration, real-time viewer count, reactions, and automatic termination
- **Post Interactions**: Like, comment, and share functionality with optimistic updates
- **Direct Messaging**: Private messaging system between users with media sharing capabilities
- **Profile Management**: User profiles with avatars, bios, follower counts, and QR code sharing
- **WebSocket Server**: Real-time communication for live streams, reactions, and viewer tracking

## Authentication & Security
- **Session Management**: PostgreSQL session store for secure user sessions
- **Input Validation**: Zod schemas for request validation and data sanitization
- **CORS Configuration**: Proper cross-origin resource sharing setup for development and production

# Marketing & Growth Integrations

## Active Integrations
- **Google Sheets Analytics** - Live dashboard tracking users, engagement, and daily stats via Google Sheets API
- **SendGrid Email** - Automated welcome emails, weekly digests, and growth campaigns (requires API key)
- **RSS Feed** - Content syndication at `/feed.xml` for 50 latest posts
- **Discord/Telegram** - Community notification webhooks for real-time updates
- **Mailchimp** - Newsletter subscriber export and campaign management
- **Social Media** - Framework ready for Twitter/X and Instagram cross-posting

## Growth Strategy
- User signups auto-sync to Google Sheets with follower/post metrics
- New posts tracked for engagement analysis and RSS syndication
- Daily cron job compiles stats (new users, posts, likes, comments)
- Email automation drives engagement (welcome, weekly digest, follower alerts)

# External Dependencies

## Core Technologies
- **@neondatabase/serverless**: Serverless PostgreSQL database connection for cloud deployment
- **drizzle-orm**: Type-safe ORM for database operations and query building
- **@tanstack/react-query**: Server state management and caching library
- **wouter**: Lightweight routing library for React applications

## UI Components & Styling
- **@radix-ui/***: Complete suite of accessible, unstyled UI primitives
- **tailwindcss**: Utility-first CSS framework for responsive design
- **class-variance-authority**: Utility for creating variant-based component APIs
- **lucide-react**: Icon library with consistent SVG icons

## Development Tools
- **vite**: Fast build tool and development server
- **typescript**: Static type checking for JavaScript
- **drizzle-kit**: Database migration and schema management CLI
- **@replit/vite-plugin-***: Replit-specific development plugins for enhanced debugging

## Forms & Validation
- **react-hook-form**: Performant forms library with minimal re-renders
- **@hookform/resolvers**: Validation resolvers for integration with schema libraries
- **zod**: Schema validation library for runtime type checking

## Additional Features
- **date-fns**: Date manipulation and formatting utilities
- **embla-carousel-react**: Touch-friendly carousel component for media galleries
- **cmdk**: Command palette component for enhanced user interactions
- **ws**: WebSocket library for real-time live streaming communication

## iOS Native App Configuration
- **Bundle ID**: com.speekzone.app
- **Minimum iOS Version**: 14.0
- **App Store Category**: Social Networking
- **Privacy Permissions**: Camera, Microphone, Photo Library (read/write), Location, Face ID, User Tracking
- **Export Options**: Configured for App Store distribution
- **Entitlements**: WiFi info, app groups, keychain access
- **Build Scripts**: Automated build preparation with `build-ios.sh`

## Deployment Files
- `build-ios.sh`: Automated iOS build preparation script
- `APP_STORE_CHECKLIST.md`: Complete submission checklist and guidelines
- `ios/App/ExportOptions.plist`: App Store export configuration
- `ios/App/App/App.entitlements`: iOS app capabilities and permissions