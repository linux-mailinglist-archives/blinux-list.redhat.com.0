Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com [207.211.31.120])
	by mail.lfdr.de (Postfix) with ESMTP id 95163184C67
	for <lists+blinux-list@lfdr.de>; Fri, 13 Mar 2020 17:24:55 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1584116694;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=6BCFnDczHLjS8hiz6UuEWl0FJQO7BKuvPYdzbRokSqE=;
	b=I/TQM1/aoMdQ26YyBiJn78+NAFQHcOee9vKMAg2KzvESH+IJZygmphmZ7OJeqIlesXMFfn
	1sRFn/xxVW4s4ko6x/sQNyrzCvWvaqLNYC6VP1CJEzGB3ezQ/5nimP3TpEv2kt/WpOuX1/
	B0MmUMQAMA/tK4G/QW8BNlRz5BWQzng=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-39-aT8Pbh0aNhKB_Uv3WL33IA-1; Fri, 13 Mar 2020 12:24:51 -0400
X-MC-Unique: aT8Pbh0aNhKB_Uv3WL33IA-1
Received: from smtp.corp.redhat.com (int-mx07.intmail.prod.int.phx2.redhat.com [10.5.11.22])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id DD10A8010F0;
	Fri, 13 Mar 2020 16:24:45 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 142B91001B34;
	Fri, 13 Mar 2020 16:24:43 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 0B23185EDB;
	Fri, 13 Mar 2020 16:24:38 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx05.intmail.prod.int.rdu2.redhat.com
	[10.11.54.5])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 02DGOVtK010774 for <blinux-list@listman.util.phx.redhat.com>;
	Fri, 13 Mar 2020 12:24:32 -0400
Received: by smtp.corp.redhat.com (Postfix)
	id CB83D12EC1F; Fri, 13 Mar 2020 16:24:31 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast02.extmail.prod.ext.rdu2.redhat.com [10.11.55.18])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id C6F2A12F97D
	for <blinux-list@redhat.com>; Fri, 13 Mar 2020 16:24:29 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com
	[207.211.31.120])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 798A58007CB
	for <blinux-list@redhat.com>; Fri, 13 Mar 2020 16:24:29 +0000 (UTC)
Received: from mailbackend.panix.com (mailbackend.panix.com [166.84.1.89])
	(Using TLS) by relay.mimecast.com with ESMTP id
	us-mta-249-hC2tmOzeN1arp5RdfHGcaA-1; Fri, 13 Mar 2020 12:24:26 -0400
X-MC-Unique: hC2tmOzeN1arp5RdfHGcaA-1
Received: from panix1.panix.com (panix1.panix.com [166.84.1.1])
	by mailbackend.panix.com (Postfix) with ESMTP id 48f9y23PJtz1CnG
	for <blinux-list@redhat.com>; Fri, 13 Mar 2020 12:24:26 -0400 (EDT)
Received: by panix1.panix.com (Postfix, from userid 20712)
	id 48f9y21m6Xzcbc; Fri, 13 Mar 2020 12:24:26 -0400 (EDT)
Received: from localhost (localhost [127.0.0.1])
	by panix1.panix.com (Postfix) with ESMTP id 48f9y21Ks8zcbV
	for <blinux-list@redhat.com>; Fri, 13 Mar 2020 12:24:26 -0400 (EDT)
Date: Fri, 13 Mar 2020 12:24:26 -0400
To: Linux for blind general discussion <blinux-list@redhat.com>
Subject: Re: Stormux is born.
In-Reply-To: <D7192D8C-EE46-46D2-ACDA-4FA429C4EF43@gmail.com>
Message-ID: <alpine.NEB.2.21.2003131221540.18045@panix1.panix.com>
References: <6b72c0c6-6a71-e688-4448-789876e33a34@slint.fr>
	<4d35e0f7-1bed-49f3-9f07-ba0129d66dcc@localhost>
	<alpine.NEB.2.21.2003131105300.24751@panix1.panix.com>
	<D7192D8C-EE46-46D2-ACDA-4FA429C4EF43@gmail.com>
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 2.79 on 10.11.54.5
X-MIME-Autoconverted: from quoted-printable to 8bit by
	lists01.pubmisc.prod.ext.phx2.redhat.com id 02DGOVtK010774
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
X-Scanned-By: MIMEDefang 2.84 on 10.5.11.22
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

First thing to do with tuir is run tuir --copy-config.
Then run tuir --copy-mailcap.
In ~/.config/tuir/tuir.cfg
Is the configuration file.
You can turn on ascii in the configuration and turn on monochrome and
disable colors.
Those three changes may help your accessibility.

On Fri, 13 Mar 2020, Linux for blind general discussion wrote:

> Date: Fri, 13 Mar 2020 11:22:44
> From: Linux for blind general discussion <blinux-list@redhat.com>
> To: "blinux-list@redhat.com" <blinux-list@redhat.com>
> Subject: Re: Stormux is born.
>
> I tried Tuir, and its originator, neither are very accessible. Unless there?s some flag or command line option I?ve not heard about, or if Fenrir has some way of dealing with all that.
>
> > On Mar 13, 2020, at 10:06 AM, Linux for blind general discussion <blinux-list@redhat.com> wrote:
> >
> > reddit would probably be another good platform for stormux.  Using pip3
> > install tuir as root will get you a terminal client for reddit if you
> > haven't got one yet.
> >
> > On Fri, 13 Mar 2020, Linux for blind general discussion wrote:
> >
> >> Date: Fri, 13 Mar 2020 09:16:31
> >> From: Linux for blind general discussion <blinux-list@redhat.com>
> >> To: blinux-list@redhat.com
> >> Subject: Stormux is born.
> >>
> >> I'm very happy to see this project continued, and I have already started working on the social media aspect and marketing and promotion. Stormux now has a Telegram channel that will announce news and release notes,
> >> https://t.me/stormux
> >> as well as a linked general discussion group at
> >> https://t.me/stormux_discussion
> >> Stormux will also soon be available on most of the usual social media channels including Facebook and Twitter. I'm happy to work with this project, and will do my best to keep everyone interested updated regarding its status and features.
> >> ~Kyle
> >>
> >>
> >> _______________________________________________
> >> Blinux-list mailing list
> >> Blinux-list@redhat.com
> >> https://www.redhat.com/mailman/listinfo/blinux-list
> >>
> >>
> >
> > --
> >
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

-- 


_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://www.redhat.com/mailman/listinfo/blinux-list

