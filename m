Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-1.mimecast.com (us-smtp-1.mimecast.com [207.211.31.81])
	by mail.lfdr.de (Postfix) with ESMTP id B4BA5164D82
	for <lists+blinux-list@lfdr.de>; Wed, 19 Feb 2020 19:16:59 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1582136218;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=BHYlNk0LyzIHKlqYmWQdGzmhElXro4ghQNd/DQ5ZLFk=;
	b=M4iWXnP334pEI6PJ3huJvp3bvO0EMQr67J4GzXykJm+pnuOHqTAzEF+qUe7twCaFczJCKh
	15hSeWbWR8ZyzU0qMEqe3zd3vAf7HqtjLaLsWTCpFfioa9DLVe8d7CnzHw3Bs6oL4PKiLM
	Epg/P+6esHoDEA8jjnlmU4prhT//FTc=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-1-FKrLkM2oPo2n4c-cX9oWBA-1; Wed, 19 Feb 2020 13:16:56 -0500
X-MC-Unique: FKrLkM2oPo2n4c-cX9oWBA-1
Received: from smtp.corp.redhat.com (int-mx04.intmail.prod.int.phx2.redhat.com [10.5.11.14])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 8377D800D50;
	Wed, 19 Feb 2020 18:16:51 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 9A8285D9E2;
	Wed, 19 Feb 2020 18:16:49 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 296A518089CE;
	Wed, 19 Feb 2020 18:16:45 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx05.intmail.prod.int.rdu2.redhat.com
	[10.11.54.5])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 01JIGcPw023072 for <blinux-list@listman.util.phx.redhat.com>;
	Wed, 19 Feb 2020 13:16:39 -0500
Received: by smtp.corp.redhat.com (Postfix)
	id A5C94F84EE; Wed, 19 Feb 2020 18:16:38 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast05.extmail.prod.ext.rdu2.redhat.com [10.11.55.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id A1D54A3171
	for <blinux-list@redhat.com>; Wed, 19 Feb 2020 18:16:36 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com
	[207.211.31.120])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id BC1CF800299
	for <blinux-list@redhat.com>; Wed, 19 Feb 2020 18:16:36 +0000 (UTC)
Received: from mailbackend.panix.com (mailbackend.panix.com [166.84.1.89])
	(Using TLS) by relay.mimecast.com with ESMTP id
	us-mta-101-CQV4JgP0O0uQU6bv2HhLcQ-1; Wed, 19 Feb 2020 13:16:33 -0500
Received: from panix1.panix.com (panix1.panix.com [166.84.1.1])
	by mailbackend.panix.com (Postfix) with ESMTP id 48N5X13b75z1QdV
	for <blinux-list@redhat.com>; Wed, 19 Feb 2020 13:16:33 -0500 (EST)
Received: by panix1.panix.com (Postfix, from userid 20712)
	id 48N5X129vMzcbc; Wed, 19 Feb 2020 13:16:33 -0500 (EST)
Received: from localhost (localhost [127.0.0.1])
	by panix1.panix.com (Postfix) with ESMTP id 48N5X11ht4zcbV
	for <blinux-list@redhat.com>; Wed, 19 Feb 2020 13:16:33 -0500 (EST)
Date: Wed, 19 Feb 2020 13:16:33 -0500
To: Linux for blind general discussion <blinux-list@redhat.com>
Subject: Re: early warning I hope
In-Reply-To: <b52e5171-fc3b-9257-579f-7f3e2d5f4ec7@gmail.com>
Message-ID: <alpine.NEB.2.21.2002191316030.244@panix1.panix.com>
References: <alpine.NEB.2.21.2002180400500.24018@panix1.panix.com>
	<CAJKfDDFSWCnqVdnyjaYhFE5gRUQ8_5+Fd7wij1-k5BF5Q8JRkg@mail.gmail.com>
	<8b00d709-122b-a693-cac3-1630c2bbec7f@free.fr>
	<5d23cbb9-178f-ee53-1c84-a407bfdcf849@verizon.net>
	<a7952a4a-cf2d-7e72-c6a8-662fe2650a7a@gmail.com>
	<alpine.NEB.2.21.2002191200410.29441@panix1.panix.com>
	<b52e5171-fc3b-9257-579f-7f3e2d5f4ec7@gmail.com>
MIME-Version: 1.0
X-MC-Unique: CQV4JgP0O0uQU6bv2HhLcQ-1
X-Scanned-By: MIMEDefang 2.79 on 10.11.54.5
X-MIME-Autoconverted: from quoted-printable to 8bit by
	lists01.pubmisc.prod.ext.phx2.redhat.com id 01JIGcPw023072
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
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.14
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

Right after you get logged in as root before you type setup.
On Wed, 19 Feb
2020, Linux for blind general discussion wrote:

> Date: Wed, 19 Feb 2020 12:11:58
> From: Linux for blind general discussion <blinux-list@redhat.com>
> To: Linux for blind general discussion <blinux-list@redhat.com>
> Subject: Re: early warning I hope
>
> in what part of the installation
>
> do I type auto
>
> On 2/19/2020 10:01 AM, Linux for blind general discussion wrote:
> > It has one, and it'll get better by the next iso release.  You run auto
> > to get that done.
> >
> > On Wed, 19 Feb 2020, Linux for blind general discussion wrote:
> >
> >> Date: Wed, 19 Feb 2020 11:16:56
> >> From: Linux for blind general discussion <blinux-list@redhat.com>
> >> To: Linux for blind general discussion <blinux-list@redhat.com>
> >> Subject: Re: early warning I hope
> >>
> >> I wish slynt had a auto partition drive feature choice I don't feel
> >> cunfortable creating linux partitions manually
> >>
> >>
> >>
> >> On 2/19/2020 8:53 AM, Linux for blind general discussion wrote:
> >>> I just want to say in this thread that I'm fairly new to Slint and have
> >>> found the support very good.?? I appreciate it.
> >>>
> >>>
> >>> I'm not disparaging other distros, by the way.?? I've used Arch, Debian,
> >>> and
> >>> Fedora for fairly long periods.
> >>>
> >>>
> >>> Al
> >>>
> >>>
> >>> On 2/19/20 4:47 AM, Linux for blind general discussion wrote:
> >>>> Hi Micha??l,
> >>>>
> >>>> let me answer to this part of your last message:
> >>>>
> >>>> Le 19/02/2020 ?? 04:28, Micha??l Caron Couturier a ??crit :
> >>>>> On the other side, Slint is Slackware based, out of the 5 majors
> >>>>> distributions bases, it's one of the two far less used so the user have
> >>>>> barely no community to help him in case of issues.
> >>>> Really?
> >>>>
> >>>> For Slackware proper, there is this a very active forum:
> >>>> https://www.linuxquestions.org/questions/slackware-14/
> >>>>
> >>>> For Slint specifically we recently replaced the former mailing list by a
> >>>> new one, cf. this blog post:
> >>>> https://slint.fr/blog/welcome-to-the-new-slint-mailing-list.html
> >>>> It is very friendly and active, you can check looking at the archives
> >>>> for the current month: https://www.freelists.org/archive/slint/02-2020
> >>>>
> >>>> We have now also a mumble channel dedicated to Slint.
> >>>>
> >>>> So your statement "no community to help in case of issues" is not true.
> >>>> The Slint mailing list is even more active than the debian-accessibility
> >>>> mailing list that I also follow <smile>.
> >>>> I don't say that to despise Debian which indeed is a good distribution,
> >>>> and Debian contributors like Samuel do an outstanding job.
> >>>>
> >>>> As an aside indeed Slint ships Mate with mate-tweak and Compiz, and
> >>>> documents how to get the best of it:
> >>>> http://slackware.uk/slint/x86_64/slint-14.2.1/doc/Accessibility/CompizKeyBindings
> >>>>
> >>>>
> >>>> Slint also allows to switch between console mode and a desktop without
> >>>> loosing speech out of the box, which you can do with other distributions
> >>>> only with a not obvious post-install manual configuration.
> >>>>
> >>>> That's not to say Slint is perfect, it certainly isn't. But we all ears
> >>>> to bug reports and requests for help and enhancements.
> >>>>
> >>>> Best regards,
> >>>>
> >>>> Didier Spaier
> >>>>
> >>>>
> >>>> _______________________________________________
> >>>> Blinux-list mailing list
> >>>> Blinux-list@redhat.com
> >>>> https://www.redhat.com/mailman/listinfo/blinux-list
> >>>
> >>> _______________________________________________
> >>> Blinux-list mailing list
> >>> Blinux-list@redhat.com
> >>> https://www.redhat.com/mailman/listinfo/blinux-list
> >>>
> >> _______________________________________________
> >> Blinux-list mailing list
> >> Blinux-list@redhat.com
> >> https://www.redhat.com/mailman/listinfo/blinux-list
> >>
> >>
>
> _______________________________________________
> Blinux-list mailing list
> Blinux-list@redhat.com
> https://www.redhat.com/mailman/listinfo/blinux-list
>
>

-- 


_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://www.redhat.com/mailman/listinfo/blinux-list

