Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 2A7464FFB16
	for <lists+blinux-list@lfdr.de>; Wed, 13 Apr 2022 18:20:30 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1649866829;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=6NtZLl75iVMz1wZE24RMmLtaAJcQnCFS1ZqVUYWimAQ=;
	b=AfU+eYGx3M3vgCpWQiC8S20S5Du/XYfOXISx/XyJgA32w3YR5v7DAflLr1i2OoLOhT6eVh
	3H4pKE7IHWXAptNnQHvUGxU2gEvoh3Z4N5O859Wn6PwrYN1mJzoH/TdLjgt4jHxSyMgFDM
	6OfssiAiZ5mS14T331kORivuYcW82ow=
Received: from mimecast-mx02.redhat.com (mx3-rdu2.redhat.com
 [66.187.233.73]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-346-WdIB5m4xOgqSNl4ptgIXHg-1; Wed, 13 Apr 2022 12:20:25 -0400
X-MC-Unique: WdIB5m4xOgqSNl4ptgIXHg-1
Received: from smtp.corp.redhat.com (int-mx09.intmail.prod.int.rdu2.redhat.com [10.11.54.9])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id AFF8A1C0E341;
	Wed, 13 Apr 2022 16:20:23 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com [10.30.29.100])
	by smtp.corp.redhat.com (Postfix) with ESMTP id 85F8454ACB1;
	Wed, 13 Apr 2022 16:20:23 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (localhost [IPv6:::1])
	by mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (Postfix) with ESMTP id 1232F1940373;
	Wed, 13 Apr 2022 16:20:21 +0000 (UTC)
Delivered-To: blinux-list@listman.corp.redhat.com
Delivered-To: blinux-list@redhat.com
Date: Wed, 13 Apr 2022 12:20:13 -0400
To: Linux for blind general discussion <blinux-list@redhat.com>
Subject: Re: FYI - Command Line Programs for the Blind
In-Reply-To: <mailman.8242.1649858545.111203.blinux-list@redhat.com>
References: <mailman.7836.1649830111.111205.blinux-list@redhat.com>
 <mailman.8034.1649840185.111204.blinux-list@redhat.com>
 <mailman.8235.1649845924.111201.blinux-list@redhat.com>
 <mailman.8235.1649853207.111206.blinux-list@redhat.com>
 <mailman.8153.1649856275.111209.blinux-list@redhat.com>
 <mailman.8268.1649857705.111206.blinux-list@redhat.com>
 <mailman.8242.1649858545.111203.blinux-list@redhat.com>
MIME-Version: 1.0
Message-ID: <mailman.8375.1649866820.111203.blinux-list@redhat.com>
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
X-Scanned-By: MIMEDefang 2.85 on 10.11.54.9
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

No version of Windows I've run across to date is self-healing.  If Windows
were self-healing when a service pack failed to install Windows would
figure out why and adjust the computer accordingly then repeat the service
pack install correctly.  Not everybody lives with help desk resources
available to fix Windows when it falls over and this is why Linux.  In the
event something happens I can put a different version of Linux in the
computer and either research the problem on the web or send email and find
out how to clear the problem then fix the problem myself.
I'm pretty certain no linux user group exists in Bucks County Pennsylvania
and nobody where I live knows anything about Linux either other than maybe
it's a different operating system.


On Wed, 13 Apr 2022, Linux for blind general discussion wrote:

> Why not use windows 11 then?
> Just a thought!
> /A
>
> > 13 apr. 2022 kl. 15:47 skrev Linux for blind general discussion <blinux-list@redhat.com>:
> >
> > Again, you compare apples to oranges. Mutt requires tons of configuration hoops to be jumped through before it is even somewhat useful. This is far worse than the first-run experience in Thunderbird. You say you just transfer a file to get Mutt working on a new machine. The only difference with Thunderbird is that you have to transfer a folder instead of a file. So Thunderbird is still the clear winner here, since it takes far less time to get it set up and actually reading and responding to mail if you've never used it. Once configured, since I already turned off the calendar and such in my initial setup process, and since I needed to set up my email accounts anyway, I found that the new account screen is far easier to use than Mutt's initial configuration hassles, and I only press shift+tab once to get to my message list, which is how it will work if I transfer the ~/.thunderbird folder to a new machine as well, and it will then bypass the new account setup and just work as I e
 xp
>  ect wherever I want to use it.
> >
> >
> > I totally agree about the sensible keybindings. Thins are finally starting to move in that direction, and this is a good thing indeed. Still, there is a lot of work to be done, and most terminal applications will probably have to be rebuilt from the ground up, while still others will need to be developed in order to make the terminal a somewhat more hospitable place for anyone other than a power user. Yes, I do use a terminal for some things that I just find a bit easier that way, but for a long time now, even though most tutorials seem to focus on the power user by telling people to open up a terminal, most of that stuff is copy and paste kind of stuff, and much of it can be done without a terminal as well. It certainly can't hurt to learn a bit about it, but it is a pretty scary place for people who are new to computers. Fortunately though, we do have easy-to-use desktops and applications, and I was able to successfully show someone how to do anything they needed to do on their
  c
>  omputer, including some pretty advanced stuff, without opening a terminal even once, since the terminal is still useful for some things, but has not been the only way to do things for some time now. Again, I don't knock it, but it definitely can be scary even now that the landscape has improved somewhat fairly recently, and if I can, I avoid terminal use, not for myself, but for teaching new users how to use a Linux computer. I definitely will steer clear of things like Mutt, and certainly EMACS, as these are the kings of the scariest terminal lands that seem to be popular among power users, but I gave up on trying to make these work years ago, as power user though I am, I couldn't get past the extremely steep learning curve just to get them configured. Oh yeah, and Edbrowse was another that I just couldn't get to do anything meaningful for me. Again, that was many years ago now, but I doubt it has become less scary and more usable over the course of that time. Just trying to figu
 re
>   out how to get it to show me part of a single page on a website was not something I could get working, let alone actually trying to click a link that goes somewhere else, even on the same page.
> >
> > ~Kyle
> >
> > _______________________________________________
> > Blinux-list mailing list
> > Blinux-list@redhat.com
> > https://listman.redhat.com/mailman/listinfo/blinux-list
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

