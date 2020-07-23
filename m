Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-1.mimecast.com (us-smtp-2.mimecast.com [205.139.110.61])
	by mail.lfdr.de (Postfix) with ESMTP id D5AED22B40D
	for <lists+blinux-list@lfdr.de>; Thu, 23 Jul 2020 19:01:38 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1595523697;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=niwz/UDPSrpBi/AXiK50t6Gycr3dR3wgAQFYWwYC6M8=;
	b=L3tzS+riTTw6TJzXhWR86Us611eTHIX5KilGCtOwNYV9hbtN8aF3DW8Qxieyx1E5osNpJc
	EoZNWWSJiYiQcspJEAHZIvPuQsFjFeZZE4ZYwzNDHN31WiObqTDmaeFKZPx3pUkWxdaWBd
	7YJBmicGiNMhahptJOwwzUsItL3JTt4=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-156-BWBOHUfiPN--VzFNb22Ngw-1; Thu, 23 Jul 2020 13:01:33 -0400
X-MC-Unique: BWBOHUfiPN--VzFNb22Ngw-1
Received: from smtp.corp.redhat.com (int-mx05.intmail.prod.int.phx2.redhat.com [10.5.11.15])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id A7FC78064DE;
	Thu, 23 Jul 2020 17:01:27 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 707C271D2B;
	Thu, 23 Jul 2020 17:01:24 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 71DF5A3581;
	Thu, 23 Jul 2020 17:01:16 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx06.intmail.prod.int.rdu2.redhat.com
	[10.11.54.6])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 06NGxcuO028565 for <blinux-list@listman.util.phx.redhat.com>;
	Thu, 23 Jul 2020 12:59:39 -0400
Received: by smtp.corp.redhat.com (Postfix)
	id B7A112166BA0; Thu, 23 Jul 2020 16:59:38 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast02.extmail.prod.ext.rdu2.redhat.com [10.11.55.18])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id B34D22157F24
	for <blinux-list@redhat.com>; Thu, 23 Jul 2020 16:59:33 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-1.mimecast.com [205.139.110.61])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id B4E678007C8
	for <blinux-list@redhat.com>; Thu, 23 Jul 2020 16:59:33 +0000 (UTC)
Received: from opera.rednote.net (opera.rednote.net [66.228.34.147]) (Using
	TLS) by relay.mimecast.com with ESMTP id
	us-mta-426-oNw-JaoENNi5hUms-MbEYQ-1; Thu, 23 Jul 2020 12:59:31 -0400
X-MC-Unique: oNw-JaoENNi5hUms-MbEYQ-1
Received: from rednote.net (localhost [IPv6:0:0:0:0:0:0:0:1])
	by opera.rednote.net (8.15.2/8.15.2) with ESMTPS id 06NGxUlJ333535
	(version=TLSv1.3 cipher=TLS_AES_256_GCM_SHA384 bits=256 verify=NO)
	for <blinux-list@redhat.com>; Thu, 23 Jul 2020 16:59:30 GMT
DMARC-Filter: OpenDMARC Filter v1.3.2 opera.rednote.net 06NGxUlJ333535
DKIM-Filter: OpenDKIM Filter v2.11.0 opera.rednote.net 06NGxUlJ333535
Received: (from janina@localhost)
	by rednote.net (8.15.2/8.15.2/Submit) id 06NGxUvF333534
	for blinux-list@redhat.com; Thu, 23 Jul 2020 12:59:30 -0400
Date: Thu, 23 Jul 2020 12:59:30 -0400
To: Linux for blind general discussion <blinux-list@redhat.com>
Subject: Re: installing speakup on RHEL 7/8
Message-ID: <20200723165930.GB2593@rednote.net>
References: <02d601d65bb9$cd357b80$67a07280$.ref@yahoo.com>
	<02d601d65bb9$cd357b80$67a07280$@yahoo.com>
	<20200718110724.GA2593@rednote.net>
	<015301d65fa8$16604280$4320c780$@yahoo.com>
MIME-Version: 1.0
In-Reply-To: <015301d65fa8$16604280$4320c780$@yahoo.com>
X-Operating-System: Linux opera.rednote.net 5.7.8-100.fc31.x86_64
X-Scanned-By: MIMEDefang 2.78 on 10.11.54.6
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
Content-Disposition: inline

The dirty little secret is that the U.S. Government gave Redhat a pass
under 508 back around 2002 when the the then new Sec. 508 regulations
where newly in force.

So, with their pass they happily stepped away. While they did indeed
participate in our National Science Foundation sponsored conference on
Linux and desktop accessibility, they were far more interested in
desktop than console accessibility all along after 2002.

It may be time to revisit that 18-year old decision, but that won't
likely help you in the short run.

Best advice I can concot is to get a second small machine up and ssh in
to the RHEL system. Not a great solution, I know.

PS: I'm unaware whether Redhat has named an accessibility officer or
not. However, Redhat is now owned by IBM who definitely does have
accessibility people. Shaking their cage may be the better way to
approach this--still a longer term strategy, but they do need to do
something when Speakup leaves staging, so maybe not so very long term
after all.

hth.

Janina

Linux for blind general discussion writes:
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

