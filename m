Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com [205.139.110.120])
	by mail.lfdr.de (Postfix) with ESMTP id AB48C228BC7
	for <lists+blinux-list@lfdr.de>; Wed, 22 Jul 2020 00:06:00 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1595369159;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=7119jMpLwSPBv/WOcgtb/wxvAsPcYpUf8+tPRoadMNQ=;
	b=fRoMs6gVFutHISlJa5xZoAgp8kARkS2AWeXMwViFnI6NcqquAnpEh2MB0S65gHrIDejqbC
	dJUX9ZGYwKq1SZTeKflu4wgAxJ8dNQ81SM7nd7WhfMoWJqmydvFQKcZYR4E13rbrnpPTfd
	oc/9b2TLqOzCG/OQCTHzzxtYb/i4QwU=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-42-13aJ4Qk9ORO24UWNKFGd8Q-1; Tue, 21 Jul 2020 18:05:57 -0400
X-MC-Unique: 13aJ4Qk9ORO24UWNKFGd8Q-1
Received: from smtp.corp.redhat.com (int-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.11])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 8DF058015CE;
	Tue, 21 Jul 2020 22:05:53 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 7657E512FE;
	Tue, 21 Jul 2020 22:05:53 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 153321809554;
	Tue, 21 Jul 2020 22:05:52 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx03.intmail.prod.int.rdu2.redhat.com
	[10.11.54.3])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 06LM2cTY013883 for <blinux-list@listman.util.phx.redhat.com>;
	Tue, 21 Jul 2020 18:02:38 -0400
Received: by smtp.corp.redhat.com (Postfix)
	id 60AA811A0247; Tue, 21 Jul 2020 22:02:38 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast03.extmail.prod.ext.rdu2.redhat.com [10.11.55.19])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 55B4611A024B
	for <blinux-list@redhat.com>; Tue, 21 Jul 2020 22:02:33 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com
	[205.139.110.120])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 974258EF3A5
	for <blinux-list@redhat.com>; Tue, 21 Jul 2020 22:02:33 +0000 (UTC)
Received: from mail.opopanax.net (mail.opopanax.net [208.113.134.41]) (Using
	TLS) by relay.mimecast.com with ESMTP id
	us-mta-404-ry_azXD-Ma20MFKta9OXSQ-1; Tue, 21 Jul 2020 18:02:30 -0400
X-MC-Unique: ry_azXD-Ma20MFKta9OXSQ-1
Received: from mail.opopanax.net (localhost [127.0.0.1])
	by mail.opopanax.net (Postfix) with ESMTP id 4BBCJ53GQDz21jM
	for <blinux-list@redhat.com>; Tue, 21 Jul 2020 22:02:29 +0000 (UTC)
X-Virus-Scanned: Debian amavisd-new at mail.opopanax.net
Received: from mail.opopanax.net ([127.0.0.1])
	by mail.opopanax.net (mail.opopanax.net [127.0.0.1]) (amavisd-new,
	port 10026) with ESMTP id seFDrmtN7M_G for <blinux-list@redhat.com>;
	Tue, 21 Jul 2020 22:01:20 +0000 (UTC)
Received: from [192.168.1.130] (24-220-234-87-dynamic.midco.net
	[24.220.234.87])
	by mail.opopanax.net (Postfix) with ESMTPSA id 4BBCGm1lZtz21jJ
	for <blinux-list@redhat.com>; Tue, 21 Jul 2020 22:01:20 +0000 (UTC)
Message-ID: <20200721.220100.192.33@[192.168.1.130]>
To: blinux-list@redhat.com
Subject: RE: installing speakup on RHEL 7/8
Date: Tue, 21 Jul 2020 17:01:00 -0500
MIME-Version: 1.0
In-Reply-To: <015301d65fa8$16604280$4320c780$@yahoo.com>
References: <02d601d65bb9$cd357b80$67a07280$.ref@yahoo.com>
	<02d601d65bb9$cd357b80$67a07280$@yahoo.com>
	<20200718110724.GA2593@rednote.net>
	<015301d65fa8$16604280$4320c780$@yahoo.com>
X-Scanned-By: MIMEDefang 2.78 on 10.11.54.3
X-MIME-Autoconverted: from quoted-printable to 8bit by
	lists01.pubmisc.prod.ext.phx2.redhat.com id 06LM2cTY013883
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
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

Does Red Hat even have an A11y team? 

----- Original Message -----
From: Linux for blind general discussion <blinux-list@redhat.com>
To: <blinux-list@redhat.com>
Date: Tue, 21 Jul 2020 14:44:17 -0700
Subject: RE: installing speakup on RHEL 7/8

> 
> Thanks Janina for the info, I wonder if anyone we can ask inside Red hat to
> shed some light on this topic, as I am unable to find any contact info for
> their accessibility team.
> 
> I imagine I can't be the only one out there who is trying to use speakup
> with RHEL, or am I?
> 
> --David
> 
> 
> -----Original Message-----
> From: blinux-list-bounces@redhat.com <blinux-list-bounces@redhat.com> On
> Behalf Of Linux for blind general discussion
> Sent: Saturday, July 18, 2020 4:07 AM
> To: Linux for blind general discussion <blinux-list@redhat.com>
> Subject: Re: installing speakup on RHEL 7/8
> 
> When he was still alive, Bill Acker routinely built Fedora kernels that
> included Speakup, both before and after Speakup became part of staging.
> I know for a fact that Bill tried, and never succeeded at building Speakup
> into RHEL. Now Bill's been gone for a few years, but I've no reason to
> believe the environment has suddenly become Speakup friendly, sorry to say.
> 
> No, I don't recall what the block was/were.
> 
> I know that's not what you wanted to hear, but it's the best answer I can
> provide and I don't believe you're going to find very much different info.
> I'll be happy to be proven wrong, of course.
> 
> It'll be interesting to see what RHEL does when Speakup finally becomes a
> first class kernel citizen. If I understand the situation correctly, that
> should come fairly soon.
> 
> Best,
> 
> Janina
> 
> Linux for blind general discussion writes:
> >  
> > 
> > Hi there -
> > 
> >  
> > 
> > I am getting a workstation at work that will be running RHEL 7 or 8.  
> > From what I understand, speakup is not a package in yum, but it is now 
> > part of the kernel staging tree.
> > 
> >  
> > 
> > Does anyone have instructions on how to get speakup installed and 
> > running on RHEL 7 or 8 using software speech?
> > 
> >  
> > 
> > Any help appreciated, thank you very much in advance
> > 
> >  
> > 
> > --David
> > 
> >  
> > 
> > _______________________________________________
> > Blinux-list mailing list
> > Blinux-list@redhat.com
> > https://www.redhat.com/mailman/listinfo/blinux-list
> 
> -- 
> 
> Janina Sajka
> https://linkedin.com/in/jsajka
> 
> Linux Foundation Fellow
> Executive Chair, Accessibility Workgroup:	http://a11y.org
> 
> The World Wide Web Consortium (W3C), Web Accessibility Initiative (WAI)
> Co-Chair, Accessible Platform Architectures	http://www.w3.org/wai/apa
> 
> _______________________________________________
> Blinux-list mailing list
> Blinux-list@redhat.com
> https://www.redhat.com/mailman/listinfo/blinux-list
> 
> 
> _______________________________________________
> Blinux-list mailing list
> Blinux-list@redhat.com
> https://www.redhat.com/mailman/listinfo/blinux-list
> 
> 


_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://www.redhat.com/mailman/listinfo/blinux-list

