Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 701F4463F7E
	for <lists+blinux-list@lfdr.de>; Tue, 30 Nov 2021 21:53:16 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1638305595;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=jBYPm8VQ2zHlhb/7q5dFBFLTsGg4FzhLhL3x70jyw9Y=;
	b=czq4cQ77QsjFUxhnXuM7mZ8AxiVJiG7naWbmBkd3KKiE0simZ3cUrrvxyWYisEBg7d2rAH
	woDFZPKUCcO+eAwU8PyGiwrNU1hrQ4uFpwwsxuvfcXQ382feRuntXVPDtryTqTxa0Fjsjc
	cqx6NmIbFqGuHvo8nRa3ByHxOw/9rPo=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-602-lZpjVhnCPTaXiieAoUUM8A-1; Tue, 30 Nov 2021 15:53:10 -0500
X-MC-Unique: lZpjVhnCPTaXiieAoUUM8A-1
Received: from smtp.corp.redhat.com (int-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.12])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 49B8681CCB4;
	Tue, 30 Nov 2021 20:53:04 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 0167E60C0F;
	Tue, 30 Nov 2021 20:53:04 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id C56FC4BB7C;
	Tue, 30 Nov 2021 20:53:00 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx04.intmail.prod.int.rdu2.redhat.com
	[10.11.54.4])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 1AUKhAtO027247 for <blinux-list@listman.util.phx.redhat.com>;
	Tue, 30 Nov 2021 15:43:10 -0500
Received: by smtp.corp.redhat.com (Postfix)
	id 9CAE32026D5D; Tue, 30 Nov 2021 20:43:10 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast03.extmail.prod.ext.rdu2.redhat.com [10.11.55.19])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 976C72026D4D
	for <blinux-list@redhat.com>; Tue, 30 Nov 2021 20:43:07 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-1.mimecast.com [207.211.31.81])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
	bits)) (No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 88222811E76
	for <blinux-list@redhat.com>; Tue, 30 Nov 2021 20:43:07 +0000 (UTC)
Received: from mail-yb1-f180.google.com (mail-yb1-f180.google.com
	[209.85.219.180]) by relay.mimecast.com with ESMTP with STARTTLS
	(version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
	us-mta-331-cqRY4ilhNmeqj647yr9EaQ-1; Tue, 30 Nov 2021 15:43:05 -0500
X-MC-Unique: cqRY4ilhNmeqj647yr9EaQ-1
Received: by mail-yb1-f180.google.com with SMTP id q74so56393506ybq.11
	for <blinux-list@redhat.com>; Tue, 30 Nov 2021 12:43:05 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20210112;
	h=x-gm-message-state:mime-version:references:in-reply-to:from:date
	:message-id:subject:to;
	bh=7y5kGCLx++bSoi9+voglEwEhVPauhkqRBJcoz8ul5jU=;
	b=hQm/mJNvemOMSAPC0XU0u0Ix6yTGUMwQQuhEX7cRS532Dx0ERudTHI4tkNTChHNMYf
	YwOfeduDLlNn/yqEwkMuGeWpKy1ajfdVqXnga7pV3Ps4nmhXrI+UKB/MWtY2ywqPfh/G
	ttngpuC9lltvxC0DPgLhj0qnCikA7eR1mVhRtMEQ3R8VrzjBISt5a+ipntAbLf1zpGXf
	ma1ouLfVVipSRooFEM0XSZ2a897DvwCJiIPGTw9OVA7w8vXa/UhVEJmFvIidjpTJT/3q
	8dbqyB398K5MA86zBBP9UfGYXH9aS+5OIe7FosYD/G/iRxLRW+uYDLBNeTuncO4j4OET
	6PAg==
X-Gm-Message-State: AOAM533kIZX+RIyu02c2C4UdYC2BVAQXQGkUPxzcvmoLgxVT91qQNrrW
	I2Jog1LmBJe1M37z6SWYZM1bc1EHMPEZakpDQ/U1rlxFPaA=
X-Google-Smtp-Source: ABdhPJxUow76gxsr7iaOdLoBUqefgH7VZiTLfP1DrP0KrvwQicE+tSoJDwBR82Gr2iUWiU/StIKLHQjhQeqFYIirb0E=
X-Received: by 2002:a25:518a:: with SMTP id f132mr1673682ybb.749.1638304984469;
	Tue, 30 Nov 2021 12:43:04 -0800 (PST)
MIME-Version: 1.0
References: <a3ea6f04-d8a4-2ef4-35cc-8e91d7582ab8@gmail.com>
	<dcf188c1-db80-bf0a-e54b-474f2fddbf55@gmail.com>
	<CAO2sX30oEaotc3CObf62R5Dg_0qLiu_qB3V3JF4EUQfACdkG+A@mail.gmail.com>
	<alpine.NEB.2.23.451.2111291731190.11659@panix1.panix.com>
	<878bd3e0-d05c-4132-52b4-d29893818041@gmail.com>
	<7d174815-a616-2abd-72e9-014ac8bf2b8b@slint.fr>
	<87bl22kqlz.fsf@brainpower.wer>
	<CAO2sX32s07jDN=1KiJCQ-31_gh5RAFFXBibGwKrLd4zuDpESKQ@mail.gmail.com>
	<PH0PR14MB4296B85503BE458036633010C8679@PH0PR14MB4296.namprd14.prod.outlook.com>
	<4d3de3ee-529a-0829-300e-3a1999cf2a76@gmail.com>
	<PH0PR14MB4296ABD498F0634DA72DCA10C8679@PH0PR14MB4296.namprd14.prod.outlook.com>
	<d7fdfa4d-de81-02bc-eb50-f741e3ab0c63@gmail.com>
	<bc065beb-52da-b768-adc4-4c43436dc600@gmail.com>
In-Reply-To: <bc065beb-52da-b768-adc4-4c43436dc600@gmail.com>
Date: Tue, 30 Nov 2021 14:42:52 -0600
Message-ID: <CAGJxbF5HR_S7V8mYx7td7LY7wiucD1YwkqdOMDGV9yUR6w8O=Q@mail.gmail.com>
Subject: Re: What is the easiest and most accessible editor?
To: Linux for blind general discussion <blinux-list@redhat.com>
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection
	Definition; Similar Internal Domain=false;
	Similar Monitored External Domain=false;
	Custom External Domain=false; Mimecast External Domain=false;
	Newly Observed Domain=false; Internal User Name=false;
	Custom Display Name List=false; Reply-to Address Mismatch=false;
	Targeted Threat Dictionary=false;
	Mimecast Threat Dictionary=false; Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 2.78 on 10.11.54.4
X-loop: blinux-list@redhat.com
X-Content-Filtered-By: Mailman/MimeDel 2.1.12
From: Linux for blind general discussion <blinux-list@redhat.com>
X-BeenThere: blinux-list@redhat.com
X-Mailman-Version: 2.1.12
Precedence: junk
Reply-To: blinux-list@redhat.com
List-Id: Linux for blind general discussion <blinux-list.redhat.com>
List-Unsubscribe: <https://listman.redhat.com/mailman/options/blinux-list>,
	<mailto:blinux-list-request@redhat.com?subject=unsubscribe>
List-Archive: <https://listman.redhat.com/archives/blinux-list>
List-Post: <mailto:blinux-list@redhat.com>
List-Help: <mailto:blinux-list-request@redhat.com?subject=help>
List-Subscribe: <https://listman.redhat.com/mailman/listinfo/blinux-list>,
	<mailto:blinux-list-request@redhat.com?subject=subscribe>
Sender: blinux-list-bounces@redhat.com
Errors-To: blinux-list-bounces@redhat.com
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.12
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

"Emacs tutorial" is in the "splash screen" that opens on first use of Emacs.
Devin Prater
r.d.t.prater@gmail.com




On Tue, Nov 30, 2021 at 2:32 PM Linux for blind general discussion <
blinux-list@redhat.com> wrote:

> Hi all,
>
>
> I have been following this discussion for a bit and was wondering, and
> have been doing so for a while, where do you go to learn Emacs?
>
>
> Even worse is Emacsspeak, the user guide I can find out there is more
> than 10 years old.
>
>
> Isn't there a concise, easy to follow step-by-step guide out there some
> ware?
>
>
> I'd think those, so passionate about their chosen choice would make it
> possible for the newbie to learn, Gentoo and Arch did it, why not Emacs
> and Emacsspeak?
>
>
> Warm regards,
>
> Brandt Steenkamp
>
> Sent from the Fedora machine, using Thunderbird
>
> On 2021/11/30 19:45, Linux for blind general discussion wrote:
> > Interesting. The problem is that email itself has several components
> > that don't fit well into an editor window. Reading and writing emails
> > for example fits into an editor style window just fine, but setting up
> > email accounts, moving through folders and lists of messages,
> > expanding and collapsing threads, etc just don't fit into that box
> > very well.
> >
> > I also had a look at one point at the shell terminal. Whereas it's
> > good to be able to edit the current command line, I found that
> > pressing the up arrow key to put the previous command back on the
> > screen to either repeat or modify didn't bring up the previous
> > command, but instead put my cursor on the last line of the previous
> > command's output. Shells need to be line edited, not screen edited,
> > and that's where the whole thing fell flat, especially since as I
> > recall, I was even able to accidentally overwrite command output
> > because the whole screen is in an editable ... buffer I think they
> > call it.
> >
> > Regarding the key sequences, x is a way to cross something out, x it
> > out, cut it. C stands for copy, and I guess v got its paste
> > functionality because it's right next to cut and copy. Not sure about
> > that one. Still, it's better than some of the key combinations I find
> > even in nano, control+w to find something for example, or even better
> > is control+q, which is supposed to quit, but instead performs a
> > backward search. What the ...? Emacs keys are even worse, since as I
> > recall, finding something requires two key combinations, and if I
> > remember correctly, neither includes an f for find or even an s for
> > search. Emacs puts me in mind of the old days of a little program I
> > used in school called Turbo Pascal. That horrible thing ... if I
> > wanted to compile the program I had just written,-  I still remember
> > it - I had to press control+k and then d. Again, what the ...? I don't
> > know ... I just did it ... because that's what the teacher told me I
> > had to do in order to compile my program. Nothing in that key sequence
> > could be thought of as compile or even build, well, maybe the d on the
> > end of build. But that sure was a nightmare to have to remember that
> > that's what that crazy combination of keys did. I can only imagine
> > everything working that way, which was the experience I had when I
> > looked at some Emacs documentation. But then I could be wrong, since
> > the last time I even opened the application was probably 15 years ago,
> > and I didn't even see the nice little help thingy at the bottom of the
> > screen like what I got from Nano and Pico that I had used before it.
> > At least in vim I was able to use the :help command to get me started,
> > but even that was much more complicated than it needed to be,
> > especially when I just wanted to cut something and paste it somewhere
> > else in the same file. I do like its search and replace functionality
> > though. %s/something/else/g if I remember correctly, just like in the
> > sed command, will replace every occurrence of something with else.
> > That said, I can just as easily run a find and replace, put something
> > in the search field and else in the replace field, then tick the box
> > that says replace all, and it's just as good, and doesn't even use
> > more fingers, since the tab key is replacing the / key in this use case.
> >
> > _______________________________________________
> > Blinux-list mailing list
> > Blinux-list@redhat.com
> > https://listman.redhat.com/mailman/listinfo/blinux-list
>
> _______________________________________________
> Blinux-list mailing list
> Blinux-list@redhat.com
> https://listman.redhat.com/mailman/listinfo/blinux-list
_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://listman.redhat.com/mailman/listinfo/blinux-list

