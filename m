Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-1.mimecast.com (us-smtp-2.mimecast.com [205.139.110.61])
	by mail.lfdr.de (Postfix) with ESMTP id 6631A164B61
	for <lists+blinux-list@lfdr.de>; Wed, 19 Feb 2020 18:03:45 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1582131822;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=VMElpEk4jEQboGh6JD9lReSqF1it3ag+A+1BkeIV7zw=;
	b=HSFO43W5Xzeq6f0uOF+rP9q/MGrTm/TQFtoe03yuiWfQgHXUJiaSaPQlTAursFKW7NQxvh
	qwIz7OqFcbDgQbFjw1FZBEaSUynMr5KsdjN4KWIU6CQ4x6HlatEpii01psX+LdT1NnwvuH
	Q0drSe2g0NMJsAmc7nOUSjHV/zWTNC0=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-246-RUexrbaKNGC8reDJDyNrIg-1; Wed, 19 Feb 2020 12:03:40 -0500
Received: from smtp.corp.redhat.com (int-mx06.intmail.prod.int.phx2.redhat.com [10.5.11.16])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id B93DD107ACCC;
	Wed, 19 Feb 2020 17:03:34 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id C245E5C28D;
	Wed, 19 Feb 2020 17:03:33 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 43D011809567;
	Wed, 19 Feb 2020 17:03:32 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx06.intmail.prod.int.rdu2.redhat.com
	[10.11.54.6])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 01JH1XGb019076 for <blinux-list@listman.util.phx.redhat.com>;
	Wed, 19 Feb 2020 12:01:33 -0500
Received: by smtp.corp.redhat.com (Postfix)
	id 745502166B2C; Wed, 19 Feb 2020 17:01:33 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast05.extmail.prod.ext.rdu2.redhat.com [10.11.55.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 6F11A2166B29
	for <blinux-list@redhat.com>; Wed, 19 Feb 2020 17:01:28 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com
	[205.139.110.120])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 85C55801E70
	for <blinux-list@redhat.com>; Wed, 19 Feb 2020 17:01:28 +0000 (UTC)
Received: from mailbackend.panix.com (mailbackend.panix.com [166.84.1.89])
	(Using TLS) by relay.mimecast.com with ESMTP id
	us-mta-104-jSrAC0N5M2itHK3IHu9Z0g-1; Wed, 19 Feb 2020 12:01:23 -0500
Received: from panix1.panix.com (panix1.panix.com [166.84.1.1])
	by mailbackend.panix.com (Postfix) with ESMTP id 48N3sH2v25z1JF2
	for <blinux-list@redhat.com>; Wed, 19 Feb 2020 12:01:23 -0500 (EST)
Received: by panix1.panix.com (Postfix, from userid 20712)
	id 48N3sH1SkXzcbc; Wed, 19 Feb 2020 12:01:23 -0500 (EST)
Received: from localhost (localhost [127.0.0.1])
	by panix1.panix.com (Postfix) with ESMTP id 48N3sH10BXzcbW
	for <blinux-list@redhat.com>; Wed, 19 Feb 2020 12:01:23 -0500 (EST)
Date: Wed, 19 Feb 2020 12:01:23 -0500
To: Linux for blind general discussion <blinux-list@redhat.com>
Subject: Re: early warning I hope
In-Reply-To: <a7952a4a-cf2d-7e72-c6a8-662fe2650a7a@gmail.com>
Message-ID: <alpine.NEB.2.21.2002191200410.29441@panix1.panix.com>
References: <alpine.NEB.2.21.2002180400500.24018@panix1.panix.com>
	<CAJKfDDFSWCnqVdnyjaYhFE5gRUQ8_5+Fd7wij1-k5BF5Q8JRkg@mail.gmail.com>
	<8b00d709-122b-a693-cac3-1630c2bbec7f@free.fr>
	<5d23cbb9-178f-ee53-1c84-a407bfdcf849@verizon.net>
	<a7952a4a-cf2d-7e72-c6a8-662fe2650a7a@gmail.com>
MIME-Version: 1.0
X-MC-Unique: jSrAC0N5M2itHK3IHu9Z0g-1
X-MC-Unique: RUexrbaKNGC8reDJDyNrIg-1
X-Scanned-By: MIMEDefang 2.78 on 10.11.54.6
X-MIME-Autoconverted: from quoted-printable to 8bit by
	lists01.pubmisc.prod.ext.phx2.redhat.com id 01JH1XGb019076
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
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.16
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

It has one, and it'll get better by the next iso release.  You run auto
to get that done.

On Wed, 19 Feb 2020, Linux for blind general discussion wrote:

> Date: Wed, 19 Feb 2020 11:16:56
> From: Linux for blind general discussion <blinux-list@redhat.com>
> To: Linux for blind general discussion <blinux-list@redhat.com>
> Subject: Re: early warning I hope
>
> I wish slynt had a auto partition drive feature choice I don't feel
> cunfortable creating linux partitions manually
>
>
>
> On 2/19/2020 8:53 AM, Linux for blind general discussion wrote:
> > I just want to say in this thread that I'm fairly new to Slint and have
> > found the support very good.?? I appreciate it.
> >
> >
> > I'm not disparaging other distros, by the way.?? I've used Arch, Debian, and
> > Fedora for fairly long periods.
> >
> >
> > Al
> >
> >
> > On 2/19/20 4:47 AM, Linux for blind general discussion wrote:
> >> Hi Micha??l,
> >>
> >> let me answer to this part of your last message:
> >>
> >> Le 19/02/2020 ?? 04:28, Micha??l Caron Couturier a ??crit :
> >>> On the other side, Slint is Slackware based, out of the 5 majors
> >>> distributions bases, it's one of the two far less used so the user have
> >>> barely no community to help him in case of issues.
> >> Really?
> >>
> >> For Slackware proper, there is this a very active forum:
> >> https://www.linuxquestions.org/questions/slackware-14/
> >>
> >> For Slint specifically we recently replaced the former mailing list by a
> >> new one, cf. this blog post:
> >> https://slint.fr/blog/welcome-to-the-new-slint-mailing-list.html
> >> It is very friendly and active, you can check looking at the archives
> >> for the current month: https://www.freelists.org/archive/slint/02-2020
> >>
> >> We have now also a mumble channel dedicated to Slint.
> >>
> >> So your statement "no community to help in case of issues" is not true.
> >> The Slint mailing list is even more active than the debian-accessibility
> >> mailing list that I also follow <smile>.
> >> I don't say that to despise Debian which indeed is a good distribution,
> >> and Debian contributors like Samuel do an outstanding job.
> >>
> >> As an aside indeed Slint ships Mate with mate-tweak and Compiz, and
> >> documents how to get the best of it:
> >> http://slackware.uk/slint/x86_64/slint-14.2.1/doc/Accessibility/CompizKeyBindings
> >>
> >>
> >> Slint also allows to switch between console mode and a desktop without
> >> loosing speech out of the box, which you can do with other distributions
> >> only with a not obvious post-install manual configuration.
> >>
> >> That's not to say Slint is perfect, it certainly isn't. But we all ears
> >> to bug reports and requests for help and enhancements.
> >>
> >> Best regards,
> >>
> >> Didier Spaier
> >>
> >>
> >> _______________________________________________
> >> Blinux-list mailing list
> >> Blinux-list@redhat.com
> >> https://www.redhat.com/mailman/listinfo/blinux-list
> >
> >
> > _______________________________________________
> > Blinux-list mailing list
> > Blinux-list@redhat.com
> > https://www.redhat.com/mailman/listinfo/blinux-list
> >
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

