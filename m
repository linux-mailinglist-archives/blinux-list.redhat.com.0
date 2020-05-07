Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-1.mimecast.com (us-smtp-1.mimecast.com [205.139.110.61])
	by mail.lfdr.de (Postfix) with ESMTP id 8A6801C9F1B
	for <lists+blinux-list@lfdr.de>; Fri,  8 May 2020 01:26:49 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1588894008;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=zu26nl9INogI8x/yGNtatAnYaYS8lle5ZLRlHcddqP8=;
	b=I/v7ffBA120JdQRWh1v8eWj9DFhk7A+KmiK1pohj2WCE79eweDbAgm1+U8HS7lsUnqlHkR
	7xJCZErYkl6zoDGcqC9puwVt3T1ZDyS71qrG1euvl//QhAb2ApVF8OZjHxVua+xWG99uGY
	RR+18Juk+YpaTzxw/S0EB4WUzxWaR78=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-214-3N-xMv0zOMugxgta-iIwAQ-1; Thu, 07 May 2020 19:26:21 -0400
X-MC-Unique: 3N-xMv0zOMugxgta-iIwAQ-1
Received: from smtp.corp.redhat.com (int-mx03.intmail.prod.int.phx2.redhat.com [10.5.11.13])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 7E6E8107ACF3;
	Thu,  7 May 2020 23:26:16 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id A738270545;
	Thu,  7 May 2020 23:26:14 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 7BADA1809542;
	Thu,  7 May 2020 23:26:13 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx05.intmail.prod.int.rdu2.redhat.com
	[10.11.54.5])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 047NQACA032736 for <blinux-list@listman.util.phx.redhat.com>;
	Thu, 7 May 2020 19:26:10 -0400
Received: by smtp.corp.redhat.com (Postfix)
	id EC05911D289; Thu,  7 May 2020 23:26:09 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast03.extmail.prod.ext.rdu2.redhat.com [10.11.55.19])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id E795C11D292
	for <blinux-list@redhat.com>; Thu,  7 May 2020 23:26:07 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com
	[207.211.31.120])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id D5A5C811E7A
	for <blinux-list@redhat.com>; Thu,  7 May 2020 23:26:06 +0000 (UTC)
Received: from mailbackend.panix.com (mailbackend.panix.com [166.84.1.89])
	(Using TLS) by relay.mimecast.com with ESMTP id
	us-mta-125-Tly_SoNzMWaWL_BYO6onLQ-1; Thu, 07 May 2020 19:26:02 -0400
X-MC-Unique: Tly_SoNzMWaWL_BYO6onLQ-1
Received: from panix1.panix.com (panix1.panix.com [166.84.1.1])
	by mailbackend.panix.com (Postfix) with ESMTP id 49J8j55JNQz1Vtm
	for <blinux-list@redhat.com>; Thu,  7 May 2020 19:26:01 -0400 (EDT)
Received: by panix1.panix.com (Postfix, from userid 20712)
	id 49J8j552j9zcbc; Thu,  7 May 2020 19:26:01 -0400 (EDT)
Received: from localhost (localhost [127.0.0.1])
	by panix1.panix.com (Postfix) with ESMTP id 49J8j54y1nzcbV
	for <blinux-list@redhat.com>; Thu,  7 May 2020 19:26:01 -0400 (EDT)
Date: Thu, 7 May 2020 19:26:01 -0400
To: Linux for blind general discussion <blinux-list@redhat.com>
Subject: Re: Anything besides vanilla Arch?
In-Reply-To: <6fd91d96-84fb-40a8-44e6-81912e513740@gmail.com>
Message-ID: <alpine.NEB.2.21.2005071925350.17771@panix1.panix.com>
References: <008e01d62459$7b0c9600$7125c200$@GMAIL.COM>
	<alpine.NEB.2.21.2005071040040.20641@panix1.panix.com>
	<C7AD6A0B-2C1B-4468-A337-812062331F24@gmail.com>
	<alpine.NEB.2.21.2005071214200.15709@panix1.panix.com>
	<61E76085-7AA1-4410-9DBA-531C0A89DC46@gmail.com>
	<6fd91d96-84fb-40a8-44e6-81912e513740@gmail.com>
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 2.79 on 10.11.54.5
X-MIME-Autoconverted: from quoted-printable to 8bit by
	lists01.pubmisc.prod.ext.phx2.redhat.com id 047NQACA032736
X-loop: blinux-list@redhat.com
From: Linux for blind general discussion <blinux-list@redhat.com>
X-BeenThere: blinux-list@redhat.com
X-Mailman-Version: 2.1.12
Precedence: junk
Reply-To: blinux-list@redhat.com
List-Id: Linux for blind general discussion <blinux-list.redhat.com>
List-Unsubscribe: <https://www.redhat.com/mailman/options/blinux-list>,
	<mailto:blinux-list-request@redhat.com?subject=unsubscribe>
List-Archive: <https://www.redhat.com/archives/blinux-list>
List-Post: <mailto:blinux-list@redhat.com>
List-Help: <mailto:blinux-list-request@redhat.com?subject=help>
List-Subscribe: <https://www.redhat.com/mailman/listinfo/blinux-list>,
	<mailto:blinux-list-request@redhat.com?subject=subscribe>
Sender: blinux-list-bounces@redhat.com
Errors-To: blinux-list-bounces@redhat.com
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.13
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

You could try tarch:
http://the-brannons.com/tarch/

On Thu, 7 May 2020, Linux for blind general
discussion
wrote:

> Date: Thu, 7 May 2020 16:33:55
> From: Linux for blind general discussion <blinux-list@redhat.com>
> To: Linux for blind general discussion <blinux-list@redhat.com>
> Subject: Re: Anything besides vanilla Arch?
>
> Interesting,
>
> Ubuntu 20.04 and it's spins pick up my WiFi card fine, but Jenux, not so much.
>
> Ubuntu Mate 20.04 is on curnel version 5.4.0. What is the Curnel version on
> the Jenux ISO?
>
> Warm regards/Groetnis/Herzliche Gr??e,
>
> Brandt Steenkamp
>
> Sent using Thunderbird from Ubuntu Mate 20.04
>
> On 2020/05/07 21:37, Linux for blind general discussion wrote:
> > I will give it a go.
> >
> >> On May 7, 2020, at 11:15 AM, Linux for blind general discussion
> >> <blinux-list@redhat.com> wrote:
> >>
> >> If Jenux wasn't talking, I couldn't install it since I never had enough
> >> funds for a braille display and don't have sighted assistance with the
> >> exception of be my eyes.
> >>
> >> On Thu, 7 May 2020, Linux for blind general discussion wrote:
> >>
> >>> Date: Thu, 7 May 2020 11:37:47
> >>> From: Linux for blind general discussion <blinux-list@redhat.com>
> >>> To: Linux for blind general discussion <blinux-list@redhat.com>
> >>> Subject: Re: Anything besides vanilla Arch?
> >>>
> >>> Is Jenux with a talking installer?
> >>> I had not heard of Jenux.
> >>>
> >>>> On May 7, 2020, at 9:42 AM, Linux for blind general discussion
> >>>> <blinux-list@redhat.com> wrote:
> >>>>
> >>>> I have Jenux installed and you get a choice of gnome mate kde or base
> >>>> type installs with that distribution.  Oh, I forgot there's also a
> >>>> couple android distributions it will do for you too if desired.  The
> >>>> android installs have talkback for a screen reader.
> >>>>
> >>>> wget -bc
> >>>> https://nashcentral.duckdns.org/projects/Jenux-2020.02.03-x86_64.iso.sha512
> >>>> wget -bc
> >>>> https://nashcentral.duckdns.org/projects/Jenux-2020.02.03-x86_64.iso
> >>>> sha512sum -c Jenux-2020.02.03-x86_64.iso.sha512
> >>>> On Thu, 7 May 2020,
> >>>> Linux for blind general discussion wrote:
> >>>>
> >>>>> Date: Thu, 7 May 2020 06:22:56
> >>>>> From: Linux for blind general discussion <blinux-list@redhat.com>
> >>>>> To: Blinux-list@redhat.com
> >>>>> Subject: Anything besides vanilla Arch?
> >>>>>
> >>>>> Hi there,
> >>>>>
> >>>>>
> >>>>>
> >>>>> I have been running Ubuntu and Ubuntu spins for a while now and am
> >>>>> looking
> >>>>> for something else for a change. I have installed vanilla Arch before,
> >>>>> but
> >>>>> that was when my system was only running Linux. Due to the work I do,
> >>>>> NVDA
> >>>>> certified expert, Training and tech support, et al, I have to have a
> >>>>> Windows
> >>>>> instance to boot in to. I am not comfortable installing vanilla Arch on
> >>>>> here
> >>>>> at this time.
> >>>>>
> >>>>>
> >>>>>
> >>>>> Are there any Arch based distros we can actually install without sited
> >>>>> help?
> >>>>>
> >>>>>
> >>>>>
> >>>>> Warm regards/Groetnis/herzliche Gr??e,
> >>>>>
> >>>>>
> >>>>>
> >>>>> Brandt Steenkamp
> >>>>>
> >>>>>
> >>>>>
> >>>>> Contact/Kontak/Kontakt
> >>>>>
> >>>>>
> >>>>>
> >>>>> Twitter: www.twitter.com/brandtsteenkamp
> >>>>> <http://www.twitter.com/brandtsteenkamp>
> >>>>>
> >>>>>
> >>>>>
> >>>>> Skype: brandt.steenkamp007
> >>>>>
> >>>>>
> >>>>>
> >>>>> _______________________________________________
> >>>>> Blinux-list mailing list
> >>>>> Blinux-list@redhat.com
> >>>>> https://www.redhat.com/mailman/listinfo/blinux-list
> >>>>>
> >>>>>
> >>>> --
> >>>>
> >>>>
> >>>> _______________________________________________
> >>>> Blinux-list mailing list
> >>>> Blinux-list@redhat.com
> >>>> https://www.redhat.com/mailman/listinfo/blinux-list
> >>>>
> >>>
> >>> _______________________________________________
> >>> Blinux-list mailing list
> >>> Blinux-list@redhat.com
> >>> https://www.redhat.com/mailman/listinfo/blinux-list
> >>>
> >>>
> >> --
> >>
> >>
> >> _______________________________________________
> >> Blinux-list mailing list
> >> Blinux-list@redhat.com
> >> https://www.redhat.com/mailman/listinfo/blinux-list
> >>
> >
> > _______________________________________________
> > Blinux-list mailing list
> > Blinux-list@redhat.com
> > https://www.redhat.com/mailman/listinfo/blinux-list
> >
>
>
> _______________________________________________
> Blinux-list mailing list
> Blinux-list@redhat.com
> https://www.redhat.com/mailman/listinfo/blinux-list
>

-- 


_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://www.redhat.com/mailman/listinfo/blinux-list

