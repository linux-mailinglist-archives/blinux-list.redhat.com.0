Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com [205.139.110.120])
	by mail.lfdr.de (Postfix) with ESMTP id 1342E18509B
	for <lists+blinux-list@lfdr.de>; Fri, 13 Mar 2020 22:05:30 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1584133529;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=EhM1bXh9KVk7+WFXoIcmHxUZi93wQU+vd8UUSMyOEK8=;
	b=Sr/HTHPD3OaTxHl1qzvDfMFsF960ktr0RkIlKRw3UW+3J94ARhUjfDsDrwL1wc7UtfJBUR
	t5Ebf7QJ48BdlqrHJ6t3Mr82p/riTGXJJMX2gcfk0/GnVFUqKPD4QRkn3BNVSqWCPDkmvH
	bRsaNoD9Hn4MwnJYCoe1Ra+nXX/TkDQ=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-376-EfB1fXjVP42p7AeSD5TGUQ-1; Fri, 13 Mar 2020 17:05:27 -0400
X-MC-Unique: EfB1fXjVP42p7AeSD5TGUQ-1
Received: from smtp.corp.redhat.com (int-mx05.intmail.prod.int.phx2.redhat.com [10.5.11.15])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 3E1A019057A2;
	Fri, 13 Mar 2020 21:05:22 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 17BAF73862;
	Fri, 13 Mar 2020 21:05:20 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id CED321809567;
	Fri, 13 Mar 2020 21:05:14 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx05.intmail.prod.int.rdu2.redhat.com
	[10.11.54.5])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 02DL54c0018713 for <blinux-list@listman.util.phx.redhat.com>;
	Fri, 13 Mar 2020 17:05:04 -0400
Received: by smtp.corp.redhat.com (Postfix)
	id 96781F9ABC; Fri, 13 Mar 2020 21:05:04 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast04.extmail.prod.ext.rdu2.redhat.com [10.11.55.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 922DE76EF
	for <blinux-list@redhat.com>; Fri, 13 Mar 2020 21:05:02 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com
	[205.139.110.120])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 502F2101A55A
	for <blinux-list@redhat.com>; Fri, 13 Mar 2020 21:05:02 +0000 (UTC)
Received: from mailbackend.panix.com (mailbackend.panix.com [166.84.1.89])
	(Using TLS) by relay.mimecast.com with ESMTP id
	us-mta-80-cD4i6IhIPzSsXaNHJENxrA-1; Fri, 13 Mar 2020 17:04:59 -0400
X-MC-Unique: cD4i6IhIPzSsXaNHJENxrA-1
Received: from panix1.panix.com (panix1.panix.com [166.84.1.1])
	by mailbackend.panix.com (Postfix) with ESMTP id 48fJ9l2wWGz1fNH
	for <blinux-list@redhat.com>; Fri, 13 Mar 2020 17:04:59 -0400 (EDT)
Received: by panix1.panix.com (Postfix, from userid 20712)
	id 48fJ9k6k9Kzcbc; Fri, 13 Mar 2020 17:04:58 -0400 (EDT)
Received: from localhost (localhost [127.0.0.1])
	by panix1.panix.com (Postfix) with ESMTP id 48fJ9k6ClczcbV
	for <blinux-list@redhat.com>; Fri, 13 Mar 2020 17:04:58 -0400 (EDT)
Date: Fri, 13 Mar 2020 17:04:58 -0400
To: Linux for blind general discussion <blinux-list@redhat.com>
Subject: RE: Stormux is born.
In-Reply-To: <Pine.LNX.4.64.2003131351530.20106@server2.shellworld.net>
Message-ID: <alpine.NEB.2.21.2003131703140.22616@panix1.panix.com>
References: <6b72c0c6-6a71-e688-4448-789876e33a34@slint.fr>
	<4d35e0f7-1bed-49f3-9f07-ba0129d66dcc@localhost>
	<000a01d5f93d$6af79770$40e6c650$@yandex.com>
	<Pine.LNX.4.64.2003131317210.19101@server2.shellworld.net>
	<alpine.NEB.2.21.2003131343530.23185@panix1.panix.com>
	<Pine.LNX.4.64.2003131351530.20106@server2.shellworld.net>
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 2.79 on 10.11.54.5
X-MIME-Autoconverted: from quoted-printable to 8bit by
	lists01.pubmisc.prod.ext.phx2.redhat.com id 02DL54c0018713
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
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.15
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

Some of who social media may reach need no technology combinations for
themselves.  They may need technology combinations for older relatives
though and a raspberry pi is an inexpensive route to accessibility.

On Fri, 13 Mar 2020, Linux for blind general discussion wrote:

> Date: Fri, 13 Mar 2020 13:56:42
> From: Linux for blind general discussion <blinux-list@redhat.com>
> To: Linux for blind general discussion <blinux-list@redhat.com>
> Subject: RE: Stormux is born.
>
> That depends on your market.
> And of course if you wish to preach to the choir so to speak, or reach
>  those who may not already be using a product like yours.
> Add the increased risk of privacy on social media, and again putting all your
> eggs in one basket limits  prospects.
> to be on social media a person has to already have found   a technology
> combination that works for them.  If such is the case, unless it is a hobby
> why would they  be interested in what you are offering?
>
>
>
> On Fri, 13 Mar 2020, Linux for blind general discussion wrote:
>
> > email lists appeal to a smaller audience than any of the other social
> > platforms which is why social platforms are used these days.
> >
> > On Fri, 13 Mar 2020, Linux for blind general discussion wrote:
> >
> >> Date: Fri, 13 Mar 2020 13:19:29
> >> From: Linux for blind general discussion <blinux-list@redhat.com>
> >> To: Linux for blind general discussion <blinux-list@redhat.com>
> >> Subject: RE: Stormux is born.
> >>
> >> why not create the discussion list somewhere more open like groups.io?
> >> After all, I imagine you desire reaching individuals who  have been
> >> dissatisfied with other Linux experiences, so they can discover that your
> >> product works for them?
> >>
> >>
> >>
> >> On Fri, 13 Mar 2020, Linux for blind general discussion wrote:
> >>
> >>> Hi,
> >>> The stormux chat is not opening
> >>>
> >>> -----Original Message-----
> >>> From: blinux-list-bounces@redhat.com <blinux-list-bounces@redhat.com> On
> >>> Behalf Of Linux for blind general discussion
> >>> Sent: Friday, March 13, 2020 2:17 PM
> >>> To: blinux-list@redhat.com
> >>> Subject: Stormux is born.
> >>>
> >>> I'm very happy to see this project continued, and I have already started
> >>> working on the social media aspect and marketing and promotion. Stormux
> >>> now
> >>> has a Telegram channel that will announce news and release notes,
> >>> https://t.me/stormux as well as a linked general discussion group at
> >>> https://t.me/stormux_discussion Stormux will also soon be available on
> >>> most
> >>> of the usual social media channels including Facebook and Twitter. I'm
> >>> happy
> >>> to work with this project, and will do my best to keep everyone interested
> >>> updated regarding its status and features.
> >>> ~Kyle
> >>>
> >>>
> >>> _______________________________________________
> >>> Blinux-list mailing list
> >>> Blinux-list@redhat.com
> >>> https://www.redhat.com/mailman/listinfo/blinux-list
> >>>
> >>>
> >>>
> >>> _______________________________________________
> >>> Blinux-list mailing list
> >>> Blinux-list@redhat.com
> >>> https://www.redhat.com/mailman/listinfo/blinux-list
> >>>
> >>>
> >>
> >>
> >> _______________________________________________
> >> Blinux-list mailing list
> >> Blinux-list@redhat.com
> >> https://www.redhat.com/mailman/listinfo/blinux-list
> >>
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
> >
>
>
> _______________________________________________
> Blinux-list mailing list
> Blinux-list@redhat.com
> https://www.redhat.com/mailman/listinfo/blinux-list
>
>
>

-- 


_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://www.redhat.com/mailman/listinfo/blinux-list

