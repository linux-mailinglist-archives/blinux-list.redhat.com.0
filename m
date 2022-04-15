Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.129.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 5437B502D6B
	for <lists+blinux-list@lfdr.de>; Fri, 15 Apr 2022 18:04:24 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1650038659;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=2oPhvyMxe6pZh5b1rHfP/1fT0rofkEyTyBM4Eu6cT9U=;
	b=KfGQtt9byRxbtwLUO7z1MCI//7ZtBkkpY+IGNGluhZIMjXJf7Emm81hzQfZkWn0voDoAlM
	RnCSTqNzwGMHVb7zn1Td6GFF0W5nhAzbqirkGKiWa/m7HnsFytxOGzXgdA2b8iN1jVDsVP
	zYGZCvUcHIAaR/UVfmR3iAE3EfDoru0=
Received: from mimecast-mx02.redhat.com (mx3-rdu2.redhat.com
 [66.187.233.73]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-611-Bi3x6u5hPyy7siuMisxx3w-1; Fri, 15 Apr 2022 12:04:16 -0400
X-MC-Unique: Bi3x6u5hPyy7siuMisxx3w-1
Received: from smtp.corp.redhat.com (int-mx01.intmail.prod.int.rdu2.redhat.com [10.11.54.1])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 2C9533C02183;
	Fri, 15 Apr 2022 16:04:14 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com [10.30.29.100])
	by smtp.corp.redhat.com (Postfix) with ESMTP id F2DF340CF8F6;
	Fri, 15 Apr 2022 16:04:04 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (localhost [IPv6:::1])
	by mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (Postfix) with ESMTP id 5777A1940352;
	Fri, 15 Apr 2022 16:04:04 +0000 (UTC)
Delivered-To: blinux-list@listman.corp.redhat.com
Delivered-To: blinux-list@redhat.com
To: Linux for blind general discussion <blinux-list@redhat.com>
Subject: Re: Getting started with Emacspeak?
In-Reply-To: <mailman.8801.1650034419.111206.blinux-list@redhat.com>
References: <mailman.8801.1650034419.111206.blinux-list@redhat.com>
User-Agent: Notmuch/0.35 (https://notmuchmail.org) Emacs/28.1
 (x86_64-pc-linux-gnu)
Date: Fri, 15 Apr 2022 18:02:23 +0200
MIME-Version: 1.0
Message-ID: <mailman.8655.1650038644.111209.blinux-list@redhat.com>
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
Errors-To: blinux-list-bounces@redhat.com
Sender: "Blinux-list" <blinux-list-bounces@redhat.com>
X-Scanned-By: MIMEDefang 2.84 on 10.11.54.1
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

Hi answers inline, but in short for the first three questions: yes it's
possible.


Linux for blind general discussion <blinux-list@redhat.com> writes:

> I know i'm going to be in for a long, long, painful process.
>
> But here's my questions.
>
> Can I, on emacspeak...
>
> 1. Check and respond to my gemails? Dirent things online have
> different answers
You can use any of the email clients such as notmuch, Wanderlust, gnus
or mu4e to do just that. The only thing I have to say is that like most
terminal applications, you have to deal with  text files to enter IMAP
and SMTP details.

As for me, I use notmuch.


>
> 2. Have a telnet client up and going to connect to stuff like MUDs
> without leaving emacspeak?

Sure, you use tramp for that. For instance, entering /ssh:root!blahblah
will connect you to a remote ssh server at blahblah.

>
> 3. Can I browse the modern net in emacspeak or?

You can use eww or w3. If you set a variable for it to pretend as if it
is FF or something else. However, personally, though I am a heavy Emacs
user, I still find browsing with Firefox or Chrome with Orca a better option.
>
> And 4. Al, do you happen to know where I can get a hold o that book
> you metnioned?

I am not Al, but the book is called Harley's Emacs Field Guide and can
be found from Bookshare.


Cheers,

Ishe


>
> Those are my four questions. I the answer to any of the above is no, it's a deal breaker for me
> -- 
> Jace's words are up there. Quoted and old messages below this point
>
> _______________________________________________
> Blinux-list mailing list
> Blinux-list@redhat.com
> https://listman.redhat.com/mailman/listinfo/blinux-list

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://listman.redhat.com/mailman/listinfo/blinux-list

