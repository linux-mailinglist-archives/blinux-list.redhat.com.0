Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	by mail.lfdr.de (Postfix) with ESMTPS id BE4785B8D40
	for <lists+blinux-list@lfdr.de>; Wed, 14 Sep 2022 18:40:43 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1663173642;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=LdwS9UghXJl8EZ+0aHQmWBf4CB6Y2WvCp7pGplnR8IA=;
	b=TLg5KqAmD+5dyknb+axgYmAnaKf9TD7m44A+WULltz63FrHdjAl/hHWTl1vVdMnsrWXKAr
	PsMbiMaS7F8+dr1twr+iP4Ds5cV+4CayjRZGgBrG748rzNXb2iL9FV8YXUiumqqrUZg0C9
	GN+pLdNzfYK3TiUxlSbYPxS3ZkK6hr0=
Received: from mimecast-mx02.redhat.com (mimecast-mx02.redhat.com
 [66.187.233.88]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-578-so-aoiy7OZCLwXHq_mWxOQ-1; Wed, 14 Sep 2022 12:40:39 -0400
X-MC-Unique: so-aoiy7OZCLwXHq_mWxOQ-1
Received: from smtp.corp.redhat.com (int-mx04.intmail.prod.int.rdu2.redhat.com [10.11.54.4])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 8FE83185A7A8;
	Wed, 14 Sep 2022 16:40:17 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com [10.30.29.100])
	by smtp.corp.redhat.com (Postfix) with ESMTP id 83BC62027062;
	Wed, 14 Sep 2022 16:40:08 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (localhost [IPv6:::1])
	by mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (Postfix) with ESMTP id 00B9C1946A59;
	Wed, 14 Sep 2022 16:40:08 +0000 (UTC)
Delivered-To: blinux-list@listman.corp.redhat.com
Delivered-To: blinux-list@redhat.com
Date: Wed, 14 Sep 2022 18:39:41 +0200
To: Linux for blind general discussion <blinux-list@redhat.com>
Subject: Re: Daisy-player
Mail-Followup-To: Linux for blind general discussion <blinux-list@redhat.com>
References: <mailman.8282.1662926405.10503.blinux-list@redhat.com>
 <mailman.7882.1662933308.10505.blinux-list@redhat.com>
 <mailman.8693.1663096733.10503.blinux-list@redhat.com>
 <mailman.8220.1663098144.10507.blinux-list@redhat.com>
 <mailman.8615.1663132135.10499.blinux-list@redhat.com>
 <mailman.8303.1663139548.10507.blinux-list@redhat.com>
 <mailman.8402.1663143347.10505.blinux-list@redhat.com>
MIME-Version: 1.0
In-Reply-To: <mailman.8402.1663143347.10505.blinux-list@redhat.com>
User-Agent: NeoMutt/20170609 (1.8.3)
Message-ID: <mailman.8741.1663173607.10505.blinux-list@redhat.com>
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
X-Scanned-By: MIMEDefang 3.1 on 10.11.54.4
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Disposition: inline
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

Linux for blind general discussion, le mer. 14 sept. 2022 10:15:40 +0200, a ecrit:
> On Wed, Sep 14, 2022 at 09:06:11AM +0200, Linux for blind general discussion wrote:
> > Linux for blind general discussion, le mer. 14 sept. 2022 07:03:24 +0200, a ecrit:
> > > On Tue, Sep 13, 2022 at 09:36:08PM +0200, Linux for blind general discussion wrote:
> > > > Linux for blind general discussion, le mar. 13 sept. 2022 21:08:46 +0200, a ecrit:
> > > > > On Sun, Sep 11, 2022 at 11:54:29PM +0000, Linux for blind general discussion wrote:
> > > > > > No clue, sorry, but for your information the new repository is:
> > > > > > https://github.com/book-readers/daisy-player
> > > > > > 
> > > > > > Didier Spaier
> > > > > 
> > > > > Thank you.
> > > > > 
> > > > > After doing ./configure; make, I get another problem:
> > > > 
> > > > It looks there were bugs in the repository indeed. I have pushed fixes.
> > > > 
> > > > Thanks for the report,
> > > 
> > > Thanks for the solution.
> > > 
> > > I was able to compile the source by making a symlink from /usr/include/sox/sox.h to /usr/include/sox.h. Shouldn't the compilation process also search for the sox.h in /usr/include/sox/?
> > 
> > It's probably missing the use of pkg-config. What does
> > 
> > pkg-config --cflags sox
> > 
> > emit?
> 
> -I/usr/include/sox

Ok, that's why. I have now fixed ./configure into using pkg-config, that
should fix such kind of bug.

Samuel

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://listman.redhat.com/mailman/listinfo/blinux-list

