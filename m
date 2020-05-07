Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-1.mimecast.com (us-smtp-delivery-1.mimecast.com [205.139.110.120])
	by mail.lfdr.de (Postfix) with ESMTP id 02B4D1C9F15
	for <lists+blinux-list@lfdr.de>; Fri,  8 May 2020 01:18:35 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1588893514;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=Wb1+XRDhd+8fc7TbF94TPfz0QYMUG8gbSjiFb5GDzEs=;
	b=KVDYH1P6rno7XU8DoByohwxmRbSE44xHf5IAG+LvlGBPTmBqBJfCl3SJyjkxCW/VYqfS5D
	eclnpPlsdnF3m1zjx+Fr93H3pklq8RRS5rLd4yrPdS+XBVOMNjodVFu1HKQ1I/W1aSnx7d
	bXNDAKcJ7Cf9JUnyKmTPDTu3ov62s+4=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-140-nK-qoVJUPceP13cnkztFCg-1; Thu, 07 May 2020 19:18:32 -0400
X-MC-Unique: nK-qoVJUPceP13cnkztFCg-1
Received: from smtp.corp.redhat.com (int-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.12])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 6FF8E107ACCD;
	Thu,  7 May 2020 23:18:27 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 972AD60BF1;
	Thu,  7 May 2020 23:18:26 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 70BC84CA95;
	Thu,  7 May 2020 23:18:20 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx04.intmail.prod.int.rdu2.redhat.com
	[10.11.54.4])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 047NIBNb032251 for <blinux-list@listman.util.phx.redhat.com>;
	Thu, 7 May 2020 19:18:11 -0400
Received: by smtp.corp.redhat.com (Postfix)
	id EE2EC2029F61; Thu,  7 May 2020 23:18:10 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast05.extmail.prod.ext.rdu2.redhat.com [10.11.55.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id E99D5202683D
	for <blinux-list@redhat.com>; Thu,  7 May 2020 23:18:08 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-2.mimecast.com [207.211.31.81])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 0F76D80CDAF
	for <blinux-list@redhat.com>; Thu,  7 May 2020 23:18:08 +0000 (UTC)
Received: from mailbackend.panix.com (mailbackend.panix.com [166.84.1.89])
	(Using TLS) by relay.mimecast.com with ESMTP id
	us-mta-9-Bzr-r8vWOBqrReUNvnDq9A-1; Thu, 07 May 2020 19:18:05 -0400
X-MC-Unique: Bzr-r8vWOBqrReUNvnDq9A-1
Received: from panix1.panix.com (panix1.panix.com [166.84.1.1])
	by mailbackend.panix.com (Postfix) with ESMTP id 49J8Wx0RNLz1VR0
	for <blinux-list@redhat.com>; Thu,  7 May 2020 19:18:05 -0400 (EDT)
Received: by panix1.panix.com (Postfix, from userid 20712)
	id 49J8Ww6W3nzcbc; Thu,  7 May 2020 19:18:04 -0400 (EDT)
Received: from localhost (localhost [127.0.0.1])
	by panix1.panix.com (Postfix) with ESMTP id 49J8Ww63SpzcbW
	for <blinux-list@redhat.com>; Thu,  7 May 2020 19:18:04 -0400 (EDT)
Date: Thu, 7 May 2020 19:18:04 -0400
To: Linux for blind general discussion <blinux-list@redhat.com>
Subject: Re: Anything besides vanilla Arch?
In-Reply-To: <f6e6e729-8a18-b1e0-7ba5-bc9fbf697731@slint.fr>
Message-ID: <alpine.NEB.2.21.2005071917200.17771@panix1.panix.com>
References: <008e01d62459$7b0c9600$7125c200$@GMAIL.COM>
	<f6e6e729-8a18-b1e0-7ba5-bc9fbf697731@slint.fr>
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 2.78 on 10.11.54.4
X-MIME-Autoconverted: from quoted-printable to 8bit by
	lists01.pubmisc.prod.ext.phx2.redhat.com id 047NIBNb032251
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
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.12
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

The project is now called tarch and it along with talkingarch are both
vanilla arch installs.

On Thu, 7 May 2020, Linux for blind general discussion wrote:

> Date: Thu, 7 May 2020 15:48:56
> From: Linux for blind general discussion <blinux-list@redhat.com>
> To: Linux for blind general discussion <blinux-list@redhat.com>
> Subject: Re: Anything besides vanilla Arch?
>
> Hi Brandt,
>
> There was a project (now discontibued, I think) called TalkingArch,
> initially maintained by Chris Brannon then by Ky	le, cf.:
> https://talkingarch.tk/about.php
>
> It has two "successors":
>
> 1. Tarch, maintained by Deedra Waters and Michael Taboada:
> https://tarch.org/ endorsed by the past maintainers.
>
> 2. TakingArch or talking-arch maintained by Alexander Epaneshnikov, cf.:
> https://wiki.archlinux.org/index.php/TalkingArch
> https://github.com/alex19EP/talking-arch
>
> I can't compare these two projects but assume that both are worth a try.
>
> Cheers,
> Didier
> --
> Dider Spaier
> Maintainer of the Slint distribution
>
> Le 07/05/2020 ? 12:22, Linux for blind general discussion a ?crit?:
> > Hi there,
> >
> > I have been running Ubuntu and Ubuntu spins for a while now and am looking
> > for something else for a change. I have installed vanilla Arch before, but
> > that was when my system was only running Linux. Due to the work I do, NVDA
> > certified expert, Training and tech support, et al, I have to have a Windows
> > instance to boot in to. I am not comfortable installing vanilla Arch on here
> > at this time.
> >
> > Are there any Arch based distros we can actually install without sited help?
> >
> > Warm regards/Groetnis/herzliche Gr??e,
> >
> > Brandt Steenkamp
> >
> > Contact/Kontak/Kontakt
> >
> > Twitter: www.twitter.com/brandtsteenkamp
> > <http://www.twitter.com/brandtsteenkamp>
> >
> > Skype: brandt.steenkamp007
>
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

