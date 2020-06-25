Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com [207.211.31.120])
	by mail.lfdr.de (Postfix) with ESMTP id 12B91209E40
	for <lists+blinux-list@lfdr.de>; Thu, 25 Jun 2020 14:16:02 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1593087362;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=EFep5nfEzgSYwPi1h9z7c7UGjiTINiBHoBJK/aKqI6o=;
	b=C4Y5eqKlPay5y28gbpR5nOA5+X1x25xC9UNf7THuHiZXEXnHxOxnQl3LgDCXfnHDExcg9B
	SRDntPF4XBWqrAHImwTu4FGh6FL9m/QN8ktJ+84JVdtLQEswnO7WRaX8j0jrcjZO3eumZ3
	rAGJ0uKGXbHhdTXvNmLllQlCI+B58dY=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-243-8dqPSfGTPtWx_kdlyH05Aw-1; Thu, 25 Jun 2020 08:15:59 -0400
X-MC-Unique: 8dqPSfGTPtWx_kdlyH05Aw-1
Received: from smtp.corp.redhat.com (int-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.11])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id B88B2107ACCA;
	Thu, 25 Jun 2020 12:15:55 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 30BA679310;
	Thu, 25 Jun 2020 12:15:55 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 8BD41833BD;
	Thu, 25 Jun 2020 12:15:54 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx05.intmail.prod.int.rdu2.redhat.com
	[10.11.54.5])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 05PCFqtI026829 for <blinux-list@listman.util.phx.redhat.com>;
	Thu, 25 Jun 2020 08:15:52 -0400
Received: by smtp.corp.redhat.com (Postfix)
	id 965B2F6CD6; Thu, 25 Jun 2020 12:15:52 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast04.extmail.prod.ext.rdu2.redhat.com [10.11.55.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 91679F6CDB
	for <blinux-list@redhat.com>; Thu, 25 Jun 2020 12:15:50 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-1.mimecast.com [205.139.110.61])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 8FBDA1049844
	for <blinux-list@redhat.com>; Thu, 25 Jun 2020 12:15:50 +0000 (UTC)
Received: from opera.rednote.net (opera.rednote.net [66.228.34.147]) (Using
	TLS) by relay.mimecast.com with ESMTP id
	us-mta-312-3L0pYTPRNQaHfMcKmk3w_w-1; Thu, 25 Jun 2020 08:15:48 -0400
X-MC-Unique: 3L0pYTPRNQaHfMcKmk3w_w-1
Received: from rednote.net (localhost [IPv6:0:0:0:0:0:0:0:1])
	by opera.rednote.net (8.15.2/8.15.2) with ESMTPS id 05PCFmVH245937
	(version=TLSv1.3 cipher=TLS_AES_256_GCM_SHA384 bits=256 verify=NO)
	for <blinux-list@redhat.com>; Thu, 25 Jun 2020 12:15:48 GMT
DMARC-Filter: OpenDMARC Filter v1.3.2 opera.rednote.net 05PCFmVH245937
DKIM-Filter: OpenDKIM Filter v2.11.0 opera.rednote.net 05PCFmVH245937
Received: (from janina@localhost)
	by rednote.net (8.15.2/8.15.2/Submit) id 05PCFmFA245936
	for blinux-list@redhat.com; Thu, 25 Jun 2020 08:15:48 -0400
Date: Thu, 25 Jun 2020 08:15:48 -0400
To: Linux for blind general discussion <blinux-list@redhat.com>
Subject: Re: Prospects for an accessible and open version of Android?
Message-ID: <20200625121548.GB245455@rednote.net>
References: <CAO2sX31aVwswLgsx=JjjjLGw8waC+hvBBVag60UBB5JbSFRYnQ@mail.gmail.com>
	<20200622.140639.018.15@192.168.1.130>
	<004701d648e3$0ac2e850$2048b8f0$@gmail.com>
	<CAO2sX31=Tkng2Zms9yLK7gVEyz+HKHDck5PEbTqL4xCe+diK=w@mail.gmail.com>
	<e606c651-4507-ad22-6a20-53753364f1f5@verizon.net>
	<CABKqQvEu6kC9SS7BCYK349DnxAh2moF1xLBFVoXBa1Hag5uHXA@mail.gmail.com>
	<63801353-D7D0-43CF-B340-E95876634B1C@gmail.com>
	<CAO2sX325iMBmhA4hs+iY5jNZ+weePFrRBgyk81BZT7Kyy23t8w@mail.gmail.com>
	<20200624120822.GG2690@rednote.net>
	<83CB53E7-F6D3-4B37-BA8D-EE7DBA340BF8@gmail.com>
MIME-Version: 1.0
In-Reply-To: <83CB53E7-F6D3-4B37-BA8D-EE7DBA340BF8@gmail.com>
X-Operating-System: Linux opera.rednote.net 5.6.18-200.fc31.x86_64
X-Scanned-By: MIMEDefang 2.79 on 10.11.54.5
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
Content-Disposition: inline

Thanks, I will indeed report.

Best,

Janina

Linux for blind general discussion writes:
> I will be happy to read about how this machine is for you.
> 
> > On Jun 24, 2020, at 7:08 AM, Linux for blind general discussion <blinux-list@redhat.com> wrote:
> > 
> > OK, we're not quite communicating here.
> > 
> > System 76 systems come with Ubuntu 20.4 pre-installed. You want another
> > distro, you pop in a usb stick and go for it, or launch over ethernet.
> > 
> > Asking for optical drives is a losing proposition these days, afaik.
> > They're very yesterday.
> > 
> > I should be able to give yhou direct experience in a few weeks. I
> > ordered my fully loaded MeerKat earlier this week. Delivery is around 3
> > weeks.
> > 
> > Best,
> > 
> > Janina
> > 
> > Linux for blind general discussion writes:
> >> While a machine coming preloaded with Linux is nice and at least means
> >> not having to fight Microsoft's latest attempts to dig their claws in
> >> and make nuking the copy of Windows I didn't want and installing Linux
> >> harder and means a better than average chance the hardware is fully
> >> compatible with Linux and won't require proprietary drivers,
> >> personally, the more important issue is whether a machine is
> >> configured for optical and/or USB boot out of the box so I can just
> >> install whichever distro I want and configure it from scratch without
> >> the hassle of tracking down a monitor, a willing sighted assistent,
> >> and walking them through the process of fixing the boot order(because
> >> as hard as finding a sighted assistant is, finding one who actually
> >> knows their way around a BIOS is even harder).
> >> 
> >> So anyone know if System76 or any other pro-linux PC makers ship
> >> systems I can just pop an installation CD/DVD into and run an
> >> installer on first boot? Or have all of them followed the mainstream
> >> into the insanity of disabling all boottable devices that aren't the
> >> primary harddrive or placing them so low in the boot order they'll
> >> only boot if the system drive is borked?
> >> 
> >> _______________________________________________
> >> Blinux-list mailing list
> >> Blinux-list@redhat.com
> >> https://www.redhat.com/mailman/listinfo/blinux-list
> > 
> > -- 
> > 
> > Janina Sajka
> > 
> > Linux Foundation Fellow
> > Executive Chair, Accessibility Workgroup:	http://a11y.org
> > 
> > The World Wide Web Consortium (W3C), Web Accessibility Initiative (WAI)
> > Chair, Accessible Platform Architectures	http://www.w3.org/wai/apa
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

Janina Sajka
https://linkedin.com/in/jsajka

Linux Foundation Fellow
Executive Chair, Accessibility Workgroup:	http://a11y.org

The World Wide Web Consortium (W3C), Web Accessibility Initiative (WAI)
Co-Chair, Accessible Platform Architectures	http://www.w3.org/wai/apa

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://www.redhat.com/mailman/listinfo/blinux-list

