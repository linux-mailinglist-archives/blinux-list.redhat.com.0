Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-1.mimecast.com (us-smtp-delivery-1.mimecast.com [205.139.110.120])
	by mail.lfdr.de (Postfix) with ESMTP id 9178C184DD5
	for <lists+blinux-list@lfdr.de>; Fri, 13 Mar 2020 18:44:57 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1584121496;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=sQeZwfL9/PWcphN4EXCyF6kKUaTbWUNedfjCELBDW/k=;
	b=QE7xDOLBaSqMuqWGNu8WzOWZcSFKzbrDkszTl3RlNBK+3B8NQCzpQ4hHsfKY6NaYFDCil+
	417gA5m46+E/K9v8rDTlr8DcZeynD6iigD6ctcPeUi9EvvznGK4jCJvbfj5+Hp1o8xX6qK
	Tu9OnHbYBlNY+zH6fcc5S0mAz+Z9L7Y=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-306-5RjmPjD4MjGth6m6ofu5eQ-1; Fri, 13 Mar 2020 13:44:53 -0400
X-MC-Unique: 5RjmPjD4MjGth6m6ofu5eQ-1
Received: from smtp.corp.redhat.com (int-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.11])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id B8C54DBAF;
	Fri, 13 Mar 2020 17:44:49 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id AF4E88B570;
	Fri, 13 Mar 2020 17:44:48 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 5AF848174D;
	Fri, 13 Mar 2020 17:44:47 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx06.intmail.prod.int.rdu2.redhat.com
	[10.11.54.6])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 02DHigXA013185 for <blinux-list@listman.util.phx.redhat.com>;
	Fri, 13 Mar 2020 13:44:42 -0400
Received: by smtp.corp.redhat.com (Postfix)
	id 5296D2166B30; Fri, 13 Mar 2020 17:44:42 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast05.extmail.prod.ext.rdu2.redhat.com [10.11.55.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 4E25A2166B32
	for <blinux-list@redhat.com>; Fri, 13 Mar 2020 17:44:40 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com
	[207.211.31.120])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id E4FC1800299
	for <blinux-list@redhat.com>; Fri, 13 Mar 2020 17:44:39 +0000 (UTC)
Received: from mailbackend.panix.com (mailbackend.panix.com [166.84.1.89])
	(Using TLS) by relay.mimecast.com with ESMTP id
	us-mta-229-iDwOZ5_8NDOVCfwuQ16btw-1; Fri, 13 Mar 2020 13:44:36 -0400
X-MC-Unique: iDwOZ5_8NDOVCfwuQ16btw-1
Received: from panix1.panix.com (panix1.panix.com [166.84.1.1])
	by mailbackend.panix.com (Postfix) with ESMTP id 48fCkX0Xpcz1M2k
	for <blinux-list@redhat.com>; Fri, 13 Mar 2020 13:44:35 -0400 (EDT)
Received: by panix1.panix.com (Postfix, from userid 20712)
	id 48fCkW60yjzcbc; Fri, 13 Mar 2020 13:44:35 -0400 (EDT)
Received: from localhost (localhost [127.0.0.1])
	by panix1.panix.com (Postfix) with ESMTP id 48fCkW5T5mzcbV
	for <blinux-list@redhat.com>; Fri, 13 Mar 2020 13:44:35 -0400 (EDT)
Date: Fri, 13 Mar 2020 13:44:35 -0400
To: Linux for blind general discussion <blinux-list@redhat.com>
Subject: RE: Stormux is born.
In-Reply-To: <Pine.LNX.4.64.2003131317210.19101@server2.shellworld.net>
Message-ID: <alpine.NEB.2.21.2003131343530.23185@panix1.panix.com>
References: <6b72c0c6-6a71-e688-4448-789876e33a34@slint.fr>
	<4d35e0f7-1bed-49f3-9f07-ba0129d66dcc@localhost>
	<000a01d5f93d$6af79770$40e6c650$@yandex.com>
	<Pine.LNX.4.64.2003131317210.19101@server2.shellworld.net>
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 2.78 on 10.11.54.6
X-MIME-Autoconverted: from quoted-printable to 8bit by
	lists01.pubmisc.prod.ext.phx2.redhat.com id 02DHigXA013185
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
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.11
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

email lists appeal to a smaller audience than any of the other social
platforms which is why social platforms are used these days.

On Fri, 13 Mar 2020, Linux for blind general discussion wrote:

> Date: Fri, 13 Mar 2020 13:19:29
> From: Linux for blind general discussion <blinux-list@redhat.com>
> To: Linux for blind general discussion <blinux-list@redhat.com>
> Subject: RE: Stormux is born.
>
> why not create the discussion list somewhere more open like groups.io?
> After all, I imagine you desire reaching individuals who  have been
> dissatisfied with other Linux experiences, so they can discover that your
> product works for them?
>
>
>
> On Fri, 13 Mar 2020, Linux for blind general discussion wrote:
>
> > Hi,
> > The stormux chat is not opening
> >
> > -----Original Message-----
> > From: blinux-list-bounces@redhat.com <blinux-list-bounces@redhat.com> On
> > Behalf Of Linux for blind general discussion
> > Sent: Friday, March 13, 2020 2:17 PM
> > To: blinux-list@redhat.com
> > Subject: Stormux is born.
> >
> > I'm very happy to see this project continued, and I have already started
> > working on the social media aspect and marketing and promotion. Stormux now
> > has a Telegram channel that will announce news and release notes,
> > https://t.me/stormux as well as a linked general discussion group at
> > https://t.me/stormux_discussion Stormux will also soon be available on most
> > of the usual social media channels including Facebook and Twitter. I'm happy
> > to work with this project, and will do my best to keep everyone interested
> > updated regarding its status and features.
> > ~Kyle
> >
> >
> > _______________________________________________
> > Blinux-list mailing list
> > Blinux-list@redhat.com
> > https://www.redhat.com/mailman/listinfo/blinux-list
> >
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

