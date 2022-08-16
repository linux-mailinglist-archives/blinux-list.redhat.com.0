Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.129.124])
	by mail.lfdr.de (Postfix) with ESMTPS id B00E95962CE
	for <lists+blinux-list@lfdr.de>; Tue, 16 Aug 2022 21:02:53 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1660676572;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=YZonduyL4g8ZCW4xLN5UuE8MM7AVug3mhpNyE5cpMIU=;
	b=IJQ+f6h2PE29IdVT3GZY/VvVppA1a45bNyqeeVzkFmlmvw7g0QhYklnLGeJKwoWZ4FeuCs
	N42o6i8Cacts7K9mZ8M4CdXSeNuC08SdpuuGP7ZRu3pQZUURYF5QY6LWcYMi2+9KVZLd1k
	p1EyST1aJlM36W6UnOy+16c8B71X2Ck=
Received: from mimecast-mx02.redhat.com (mx3-rdu2.redhat.com
 [66.187.233.73]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-15-FM0CRCHjMayBgcQiGaExzw-1; Tue, 16 Aug 2022 15:02:51 -0400
X-MC-Unique: FM0CRCHjMayBgcQiGaExzw-1
Received: from smtp.corp.redhat.com (int-mx03.intmail.prod.int.rdu2.redhat.com [10.11.54.3])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id A2F403C11041;
	Tue, 16 Aug 2022 19:02:48 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (unknown [10.30.29.100])
	by smtp.corp.redhat.com (Postfix) with ESMTP id 7F3481121314;
	Tue, 16 Aug 2022 19:02:48 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (localhost [IPv6:::1])
	by mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (Postfix) with ESMTP id B1C2A193F6EA;
	Tue, 16 Aug 2022 19:02:47 +0000 (UTC)
Delivered-To: blinux-list@listman.corp.redhat.com
Delivered-To: blinux-list@redhat.com
Date: Tue, 16 Aug 2022 15:02:35 -0400 (EDT)
To: Brian Buhrow <buhrow@nfbcal.org>
Subject: Re: "Accessibility in Fedora Workstation" (fwd)
In-Reply-To: <202208161814.27GIEKUm029606@nfbcal.org>
References: <202208161814.27GIEKUm029606@nfbcal.org>
MIME-Version: 1.0
Message-ID: <mailman.1178.1660676566.10507.blinux-list@redhat.com>
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
 speakup@linux-speakup.org, K0LNY_Glenn <glenn@ervin.email>,
 Blinux-list@redhat.com, Butch Bussen <butchb@shellworld.net>
Errors-To: blinux-list-bounces@redhat.com
Sender: "Blinux-list" <blinux-list-bounces@redhat.com>
X-Scanned-By: MIMEDefang 2.78 on 10.11.54.3
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"

Hi Brian,
Thank you for providing this context.
What concerns me about your example is even greater.
Just how does a member of the general public, finding they must use a 
screen reader for any number of reasons, even learn they have such an 
option as that switch?
Karen



On Tue, 16 Aug 2022, Brian Buhrow wrote:

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
>

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://listman.redhat.com/mailman/listinfo/blinux-list

