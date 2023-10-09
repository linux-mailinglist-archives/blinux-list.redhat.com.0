Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.129.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 22BDF7BEBE3
	for <lists+blinux-list@lfdr.de>; Mon,  9 Oct 2023 22:45:54 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1696884353;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=6DJIWzb2sXyif0lyxuHB2CS37dHSnc+kOl8PJywa3uc=;
	b=XEbWbXwLzUktQuLNhx3AztoNZ1OnyRq/lYIh9ZGw0FaejDIu71/MMXq63nEkhT2nDf/zdH
	CmeF8kW8wzeVYL+5VkD73XsvwS5alxl2SeXdHxPdwSvl7n73k3kIqGdxLsoCajJas1EyKM
	rJ9Y1EMuQyI+WUXtoe/jHPKJ9R1i5cI=
Received: from mimecast-mx02.redhat.com (mimecast-mx02.redhat.com
 [66.187.233.88]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-219-fZPry83KPyC6PznE1-zkaQ-1; Mon, 09 Oct 2023 16:45:50 -0400
X-MC-Unique: fZPry83KPyC6PznE1-zkaQ-1
Received: from smtp.corp.redhat.com (int-mx08.intmail.prod.int.rdu2.redhat.com [10.11.54.8])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 5D392803470;
	Mon,  9 Oct 2023 20:45:48 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com [10.30.29.100])
	by smtp.corp.redhat.com (Postfix) with ESMTP id 3D051C47873;
	Mon,  9 Oct 2023 20:45:48 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (localhost [IPv6:::1])
	by mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (Postfix) with ESMTP id AE6AA19465B9;
	Mon,  9 Oct 2023 20:45:47 +0000 (UTC)
Delivered-To: blinux-list@listman.corp.redhat.com
Delivered-To: blinux-list@redhat.com
Date: Mon, 9 Oct 2023 16:45:43 -0400
To: Linux for blind general discussion <blinux-list@redhat.com>
Subject: Re: My Linux installation decision, and some questions?
In-Reply-To: <mailman.349.1696883886.2052528.blinux-list@redhat.com>
References: <mailman.22.1696701251.2052526.blinux-list@redhat.com>
 <mailman.85.1696772374.2052530.blinux-list@redhat.com>
 <mailman.87.1696776767.2052524.blinux-list@redhat.com>
 <mailman.167.1696819038.2052531.blinux-list@redhat.com>
 <mailman.133.1696838107.2052524.blinux-list@redhat.com>
 <mailman.278.1696865462.2052528.blinux-list@redhat.com>
 <mailman.344.1696881299.2052528.blinux-list@redhat.com>
 <mailman.262.1696881582.2052525.blinux-list@redhat.com>
 <mailman.349.1696883886.2052528.blinux-list@redhat.com>
MIME-Version: 1.0
Message-ID: <mailman.337.1696884346.2052526.blinux-list@redhat.com>
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
X-Scanned-By: MIMEDefang 3.1 on 10.11.54.8
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

As root or root using sudo:
usermod -aG brlapi <user>
where <user> is the name of the user account to be added to the brlapi
group.
Then reboot.
As the user, type groups <enter>
and you should see brlapi as a group your user is in then.


-- Jude <jdashiel at panix dot com> "There are four boxes to be used in
defense of liberty: soap, ballot, jury, and ammo. Please use in that
order." Ed Howdershelt 1940.

On Mon, 9 Oct 2023, Linux for blind general discussion wrote:

> You should make sure your user is part of the brlapi  group. Since this a USB display, it should automatically be detected, and then work in orca, once you check the box in the braille tab of preferences.
>
> ----- Original Message -----
> From: Linux for blind general discussion <blinux-list@redhat.com>
> To: Linux for blind general discussion <blinux-list@redhat.com>
> Date: Mon, 9 Oct 2023 15:59:23 -0400
> Subject: Re: My Linux installation decision, and some questions?
>
> > Have you run brltty yet?  That's usually what enables braille in linux and
> > I hope someone using your display responds since they may provide specific
> > switches to use to get your display running.
> >
> >
> > -- Jude <jdashiel at panix dot com> "There are four boxes to be used in
> > defense of liberty: soap, ballot, jury, and ammo. Please use in that
> > order." Ed Howdershelt 1940.
> >
> > On Mon, 9 Oct 2023, Linux for blind general discussion wrote:
> >
> > > Hello, I just wanted to let everyone know what I finally decided regarding my choice of distribution. I decided on Fedora Linux, this is because this is what I originally learned some of my hopefully not Q ancient knowledge in terms of using Linux.
> > >
> > > I wanted to briefly take a moment and explain how I got this done. I used a remote visual interpretation service named Aira to read all of the visual information that comes on the screen when installing clinics, into a virtual machine. The good news is the agent even stuck around to assist in installing and configuring orca. The only thing I now need to do is figure out how to enable braille access. I'm kind of beginning to think it might be easier to attempt to install braille TTY? This is because I don't think orca has any type of really usable braille driver for my particular display. I of course could be wrong. I am currently using a Brailliant BI 40 X. I can also use the 20 cell version. But the 20 cell version has one additional issue that might cause more problems than could be solved in Linux. This device has an actual physical hard drive like appearance in both Mac OS and Windows. I don't know just how Fedora might identify it as? Any thoughts?
> > >
> > > Finally, I know some are wondering why is this message being generated in Outlook. Especially in time and Windows. This is because the dictation software that I am using only runs in Windows. If I had to write this by hand I think the amount of mistakes and syntax errors etc. would make anything that I write by hand probably unreadable. I have 1/3 disability in addition to being DeafBlind. I have a written expression disorder. Which forces me to use dictation software. So if there's something that I've written in the text of this message, that doesn't make sense please reach out to me and asked me what did I really intend to say? Here is hoping all are having a good Monday?
> > >
> > > _______________________________________________
> > > Blinux-list mailing list
> > > Blinux-list@redhat.com
> > > https://listman.redhat.com/mailman/listinfo/blinux-list
> > >
> > >
> >
> > _______________________________________________
> > Blinux-list mailing list
> > Blinux-list@redhat.com
> > https://listman.redhat.com/mailman/listinfo/blinux-list
> >
> >
>
> _______________________________________________
> Blinux-list mailing list
> Blinux-list@redhat.com
> https://listman.redhat.com/mailman/listinfo/blinux-list
>
>

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://listman.redhat.com/mailman/listinfo/blinux-list

