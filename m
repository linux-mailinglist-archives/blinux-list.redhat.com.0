Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.129.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 43B86596290
	for <lists+blinux-list@lfdr.de>; Tue, 16 Aug 2022 20:37:30 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1660675049;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=wQvlzZULU4IPX9lKLOxOaQ/9L5evdx4nzhUt1XBkA1w=;
	b=DjQAZ7MgL+UbUWVpeolafcufW7NFCDpFHU14F3UBuE52q8cBXxGiViOgHqYWVFFkrMELK3
	7GlpDYBNUUi8u1DezVFC0Li9+EIATuG/TBFOA+QZzHUBYjJuGSEEU3TkDWzTlI9ODxriCl
	277EY/Ploctx6o+k+IlOTnxwmzGqB4U=
Received: from mimecast-mx02.redhat.com (mx3-rdu2.redhat.com
 [66.187.233.73]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-583-RGx0yTSYNeur1u3i-uVyjQ-1; Tue, 16 Aug 2022 14:37:26 -0400
X-MC-Unique: RGx0yTSYNeur1u3i-uVyjQ-1
Received: from smtp.corp.redhat.com (int-mx03.intmail.prod.int.rdu2.redhat.com [10.11.54.3])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 39A293C10227;
	Tue, 16 Aug 2022 18:37:24 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (unknown [10.30.29.100])
	by smtp.corp.redhat.com (Postfix) with ESMTP id ED8AD1121315;
	Tue, 16 Aug 2022 18:37:23 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (localhost [IPv6:::1])
	by mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (Postfix) with ESMTP id 53CCB193F6EA;
	Tue, 16 Aug 2022 18:37:23 +0000 (UTC)
Delivered-To: blinux-list@listman.corp.redhat.com
Delivered-To: blinux-list@redhat.com
X-Spam-Report: AuthenticatedSender=yes, SenderIP=[104.47.73.41]
X-Spam-PmxInfo: Server=avs-3, Version=6.4.9.2830568,
 Antispam-Engine: 2.7.2.2107409, Antispam-Data: 2022.8.16.182718,
 AntiVirus-Engine: 5.92.0, AntiVirus-Data: 2022.7.21.5920001,
 SenderIP=[104.47.73.41]
Date: Tue, 16 Aug 2022 13:37:11 -0500
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.10.0
Subject: Re: "Accessibility in Fedora Workstation" (fwd)
To: Brian Buhrow <buhrow@nfbcal.org>, K0LNY_Glenn <glenn@ervin.email>,
 Karen Lewellen <klewellen@shellworld.net>
References: <202208161814.27GIEKUm029606@nfbcal.org>
In-reply-to: <202208161814.27GIEKUm029606@nfbcal.org>
MIME-version: 1.0
Message-ID: <mailman.1253.1660675042.10500.blinux-list@redhat.com>
From: Linux for blind general discussion <blinux-list@redhat.com>
X-BeenThere: blinux-list@redhat.com
X-Mailman-Version: 2.1.29
Precedence: list
List-Id: Linux for blind general discussion <blinux-list.redhat.com>
List-Unsubscribe: <https://listman.redhat.com/mailman/options/blinux-list>,
 <mailto:blinux-list-request@redhat.com?subject=unsubscribe>
List-Archive: <http://listman.redhat.com/archives/blinux-list/>
List-Post: <mailto:blinux-list@redhat.com>
List-Help: <mailto:blinux-list-request@redhat.com?subject=help>
List-Subscribe: <https://listman.redhat.com/mailman/listinfo/blinux-list>,
 <mailto:blinux-list-request@redhat.com?subject=subscribe>
Reply-To: blinux-list@redhat.com
Cc: Milan Zamazal <pdm@zamazal.org>, "John G. Heim" <jheim@wisc.edu>,
 speakup@linux-speakup.org, Butch Bussen <butchb@shellworld.net>,
 Blinux-list@redhat.com
Errors-To: blinux-list-bounces@redhat.com
Sender: "Blinux-list" <blinux-list-bounces@redhat.com>
X-Scanned-By: MIMEDefang 2.78 on 10.11.54.3
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-language: en-US
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"

Brian, you're not actually still defending the NFB's reasoning, are you? 
It could hardly have been more clearly wrong.

You are posting this to an email list for a free, open source screen 
reader. I made my living as the manager of high performance computing at 
the University Of Wisconsin with Speakup and Orca. And Jaws still 
exists. The price has dropped to $99 though.

Look, the NFB made a mistake. A *HUGE* mistake. That's about as obvious 
as it could possibly be.


On 8/16/22 13:14, Brian Buhrow wrote:
> 	hello.  Having participated in the debate with Microsoft about narrator, let me see if I
> can provide a bit of context.  When Microsoft began putting a real effort into Narrator, there
> wer  those of us who were concerned that it would put Freedom scientific out of business and,
> thus, potentially, remove accessibility choices for blind users, especially for folks who were
> currently employed using JAWS or, at the time, GW Micro.  Exhibit A was, and is, Apple with
> VoiceOver.  If you want to use Apple products with access technology your choice is, well,
> VoiceOver.  If it doesn't work for you, well then, tough on you.  That's also true of Android
> with Talkback and Brailleback.  Yes, Brltty works on Android, but it relies on the access
> provided by Talkback and Brailleback to get its data, so if Talkback and Brailleback can't see
> it, it isn't visible nonvisually.
> 	It takes a lot of effort to make a good screen reader and it takes even more effort to
> keep it running well.  The argument ran like this: if Microsoft put a huge amount of effort
> into getting Narrator working well, would they continue to provide the hooks and data Freedom
> Scientific and NVDA needed to make their products work?  And, what if Narrator was deemed good
> enough by Microsoft, but didn't work for folks who were trying to hold down jobs, but JAWS and,
> at the time GW Micro, couldn't  continue making their products function because they weren't
> getting what they needed from Microsoft?  what we said was we didn't want Microsoft to work on
> Narrator at the expense of continuing to develop and share their access API's with third party
> screen reader providers.
> 	While it's true the accessibility scene hasn't played out exactly as we described it in
> terms of the time frame we laid out, it is true that, over time, accessibility options for
> Windows users are dwindling.  Case and point, if you purchase the tablet version of Windows, or
> the stock home edition of Windows, by default, you cannot use any screen reader other than
> Narrator on that installation unless you flip a magic switch in that installation to enable the
> full Windows experience.  In addition to allowing third party screen readers, that switch also
> allows the installation of unsigned software outside of the Microsoft store.  Microsoft claims
> they will never disable the ability to flip that switch, but the fact that we are one switch
> away from not being able to use the screen reader of our choice on Windows, is, in my view, an
> erosion of access.  Remember, there was a time when Microsoft said it would never release a
> Windows version 11.
>
> 	So, while it may be that our message was mis-interpreted, and we may have not stated it as
> well as we should have, the goal of the message was, in fact, to expand accessibility choices,
> not to diminish them.
>
> -Brian
>
>

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://listman.redhat.com/mailman/listinfo/blinux-list

