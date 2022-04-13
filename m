Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.129.124])
	by mail.lfdr.de (Postfix) with ESMTPS id CA3D85002C9
	for <lists+blinux-list@lfdr.de>; Thu, 14 Apr 2022 01:49:27 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1649893766;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=o2hUFsXncCHNG256F/pYHqCZa9kY4dnIB5BYxj8gGTE=;
	b=EqkzQHg5JPDAlhFZapPFuAkrkj9gm4ELLV0PTVGMozCFsQcXvTKTiU8JOAeS9gPJFjFynN
	KgvC/gjSR/VuKYRJ2Fyzskr6MyvBWaVvM0z/9rYyCOvlWxnEoZx7TBcv7ixWy4c8KHr3KW
	ZHgykzuAt2+jM3fubU1kETdCYQXIrlI=
Received: from mimecast-mx02.redhat.com (mimecast-mx02.redhat.com
 [66.187.233.88]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-65-3q7sHTXxMguXj4pj-zE7eg-1; Wed, 13 Apr 2022 19:49:23 -0400
X-MC-Unique: 3q7sHTXxMguXj4pj-zE7eg-1
Received: from smtp.corp.redhat.com (int-mx07.intmail.prod.int.rdu2.redhat.com [10.11.54.7])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 4A058800B21;
	Wed, 13 Apr 2022 23:49:22 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com [10.30.29.100])
	by smtp.corp.redhat.com (Postfix) with ESMTP id B12461415113;
	Wed, 13 Apr 2022 23:49:21 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (localhost [IPv6:::1])
	by mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (Postfix) with ESMTP id 2F0431940353;
	Wed, 13 Apr 2022 23:49:21 +0000 (UTC)
Delivered-To: blinux-list@listman.corp.redhat.com
Delivered-To: blinux-list@redhat.com
To: <blinux-list@redhat.com>
References: <mailman.7836.1649830111.111205.blinux-list@redhat.com>
 <mailman.8235.1649845924.111201.blinux-list@redhat.com>
 <mailman.8235.1649853207.111206.blinux-list@redhat.com>
 <mailman.8153.1649856275.111209.blinux-list@redhat.com>
 <mailman.8268.1649857705.111206.blinux-list@redhat.com>
 <mailman.8242.1649858545.111203.blinux-list@redhat.com>
 <mailman.8365.1649876915.111204.blinux-list@redhat.com>
 <mailman.8363.1649886716.111208.blinux-list@redhat.com>
 <mailman.8343.1649887607.111209.blinux-list@redhat.com>
 <mailman.8428.1649888423.111203.blinux-list@redhat.com>
 <mailman.8307.1649889026.111207.blinux-list@redhat.com>
In-Reply-To: <mailman.8307.1649889026.111207.blinux-list@redhat.com>
Subject: RE: FYI - Command Line Programs for the Blind
Date: Wed, 13 Apr 2022 16:49:18 -0700
MIME-Version: 1.0
Thread-Index: AQHz78llTcai1ZWZOevbKTjxHGcFewLvHB6yAlAUC3EBmx6xJAEeV2aXAiCCBr8DEQk/oAEZCjVYAjOv5DgCdbM7cQL6LTZkrAgGLeA=
Message-ID: <mailman.8412.1649893760.111204.blinux-list@redhat.com>
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
X-Scanned-By: MIMEDefang 2.85 on 10.11.54.7
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Language: en-us
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

Hello everyone, this is a very interesting subject. Remember when a previous
poster said that not all blind people are the same. I'm about as different
as one could potentially get. I'm deaf blind. That means that most "talking"
Lennix distributions probably are going to do me much good. And thus they
have very good braille support. It is a very timely subject for me. Because
I just downloaded Ubuntu 2110 for desktop. And I am going to attempt to
install this on Dell Latitude 3520. There is a catch here. It Windows
meaning that it's going to be a dual-boot system. Because of my can windows
D11, dictating this message via email would be impossible. Because in
addition to being deaf blind I also have a diagnosed written expression
disorder. That way to say I can't spell to save my life but there are good
and very competent neurologist that diagnosed all of this. Years ago
however. Nothing current.

This brings me to a question, if there's any way to get speech or braille
when you try to set up the dual-boot system. Or should I seek out cited
assistance while installing Ubuntu? 

Another thing we should probably talk about, what to do about a lot of the
new hardware. For instance can Lennix handle the audio? I don't think that
there's going to be a problem with a solid-state drive than those have been
normally used for quite some time now. Assume that Wi-Fi is possible to in a
working system? The last thing that I think could potentially become
somewhat of an issue is wireless networking. I'm going to assume that Wi-Fi
is hopefully pretty standard?

Final thoughts just be aware that I'm dictating all of this to the computer.
In fact it's taken some time to straighten out things that got dictated
incorrectly. So fair warning you something didn't make sense please reach
out to me and asked me today really mean? Look forward to reading the
answers on the list. Thank you all for your help and or suggestions in
advance.

Finally is there something that I am missing, or something that I'm not
thought about yet? My final question, the story regarding email software? I
g space email client. Meaning I have a Microsoft account, and a Gmail
account, as will third-party email accountstext



-----Original Message-----
From: Blinux-list <blinux-list-bounces@redhat.com> On Behalf Of Linux for
blind general discussion
Sent: Wednesday, April 13, 2022 3:32 PM
To: blinux-list@redhat.com
Subject: Re: FYI - Command Line Programs for the Blind

You disconnect from the network and it skips over that microsoft account
thing.

----- Original Message -----
From: Linux for blind general discussion <blinux-list@redhat.com>
To: Linux for blind general discussion <blinux-list@redhat.com>
Date: Wed, 13 Apr 2022 18:20:19 -0400
Subject: Re: FYI - Command Line Programs for the Blind

> Not only that, what's a new windows user to do if they don't already 
> have an email address?
>
>
> On Wed, 13 Apr 2022, Linux for blind general discussion wrote:
>
> > With Linux however...I don't have to have an email account to log in
> >
> > I have the choice to run a desktop, or none at all
> >
> > I have the ability to install what I want, from a trusted source without
fear of oh this site's shady, is it a virus, type fears.
> >
> > I can do one command to update my system, without having to reboot.
> >
> > I don't get unneeded software installed at boot time that returns 
> > with updates, and I don't have to use a debloat script written by a 
> > third party to chop out bits of the OS
> >
> > Oh and, yes....
> >
> > It's my machine. I can set it up how I want, with the programs I want
and need, without some arbitrary bit of the OS going mg this this not well
known it is a virus are you sure you want to run this!'
> >
> > Oh and, I can get my machine working without spending inordinate 
> > amounts of money on A11Y tech and software, though as well. On a 
> > console, speakup and Fenrir work well. Orca isn't perfect but nor 
> > are screenreaders on the Windows/Mac sides of things, and those are 
> > insanely bigger and more resourceful companies
> >
> > On Wed, Apr 13, 2022 at 04:51:38PM -0500, Linux for blind general
discussion wrote:
> >
> > > Wow, responding to these points:
> > > Devin Prater
> > > r.d.t.prater@gmail.com
> > >
> > >
> > > On Wed, Apr 13, 2022 at 2:08 PM Linux for blind general discussion 
> > > < blinux-list@redhat.com> wrote:
> > >
> > > > Why not use windows 11 then?
> > > >
> > > >
> > > > Now why the hell would I wanna do something like that? First, I 
> > > > want my freedom. Next, I don't want to have to get a Microsoft 
> > > > account just to use my computer.
> > >
> > > These are valid points. But what I get from Windows: a mostly 
> > > clean accessibility experience (mostly thanks to NVDA and 
> > > community support), and a good many apps designed by and for the
blind.
> > >
> > >
> > > > And for God's sake I want to be able to change my default 
> > > > browser or uninstall something I don't want.
> > >
> > > I mean I have Google Chrome set as my default browser right now. 
> > > And I can uninstall a lot. There's no Candy Crush Saga, and I just 
> > > uninstalled Dizney Plus.
> > >
> > >
> > > > And if I do want to
> > > > open up a terminal sometimes, it is my right to do so.
> > >
> > > Windows Terminal exists. They even have a Windows package manager. 
> > > But if you don't like that one, you use Scoop, or Chocolatey, 
> > > which also have some Linux apps and command line programs.
> > >
> > > > And their mail
> > > > application is broken as fsck as well.
> > > >
> > > That's still true. But you'd just install Thunderbird wouldn't 
> > > you? It works even better on windows than Linux because the 
> > > accessibility bus is faster to load all those messages into its
buffers.
> > >
> > > >
> > > > ~Kyle
> > > >
> > > > _______________________________________________
> > > > Blinux-list mailing list
> > > > Blinux-list@redhat.com
> > > > https://listman.redhat.com/mailman/listinfo/blinux-list
> > > >
> > > >
> > > _______________________________________________
> > > Blinux-list mailing list
> > > Blinux-list@redhat.com
> > > https://listman.redhat.com/mailman/listinfo/blinux-list
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


_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://listman.redhat.com/mailman/listinfo/blinux-list

