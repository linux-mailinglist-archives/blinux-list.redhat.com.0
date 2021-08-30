Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [216.205.24.124])
	by mail.lfdr.de (Postfix) with ESMTP id C57DD3FB272
	for <lists+blinux-list@lfdr.de>; Mon, 30 Aug 2021 10:26:30 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1630311984;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=yd+14V4sUGxBnEjm7DOOQdJzG8nGyI0NLrMN47OBzhk=;
	b=Z9w69VOLdtkth7V6uxxdDsd67lL5I0QUuCD3W7cDBYHuJWFlymdHEwajLfHz8T5R8D9FW/
	vkpFRCcj3JcsRup9vwN3dr04sqDwf2AzWSI+XEFuHuqhM1RPv+1m5qGxjW4d3spdp414+V
	3yGm7F8rMkIa2R+YoFVHRTaNYYO0KKw=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-595-jPRMTtZwNAajPnc4aiu6GQ-1; Mon, 30 Aug 2021 04:26:23 -0400
X-MC-Unique: jPRMTtZwNAajPnc4aiu6GQ-1
Received: from smtp.corp.redhat.com (int-mx04.intmail.prod.int.phx2.redhat.com [10.5.11.14])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id EE8F2801B3C;
	Mon, 30 Aug 2021 08:26:18 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 304D75D9CA;
	Mon, 30 Aug 2021 08:26:18 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id E4AB2181A0F2;
	Mon, 30 Aug 2021 08:26:15 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx05.intmail.prod.int.rdu2.redhat.com
	[10.11.54.5])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 17U8LrhN002747 for <blinux-list@listman.util.phx.redhat.com>;
	Mon, 30 Aug 2021 04:21:54 -0400
Received: by smtp.corp.redhat.com (Postfix)
	id CF6BF47CF3; Mon, 30 Aug 2021 08:21:53 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast03.extmail.prod.ext.rdu2.redhat.com [10.11.55.19])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id C95FF4EA6E
	for <blinux-list@redhat.com>; Mon, 30 Aug 2021 08:21:51 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-1.mimecast.com [205.139.110.61])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 06FD5811E78
	for <blinux-list@redhat.com>; Mon, 30 Aug 2021 08:21:51 +0000 (UTC)
Received: from mail.rednote.net (opera.rednote.net [66.228.34.147]) (Using
	TLS) by relay.mimecast.com with ESMTP id
	us-mta-550-POk3TYz_MwWDxvflB_XAAw-1; Mon, 30 Aug 2021 04:21:46 -0400
X-MC-Unique: POk3TYz_MwWDxvflB_XAAw-1
Received: from opera.rednote.net (localhost [IPv6:::1])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest
	SHA256) (No client certificate requested)
	by mail.rednote.net (Postfix) with ESMTPS id E88B3FA268
	for <blinux-list@redhat.com>; Mon, 30 Aug 2021 04:12:03 -0400 (EDT)
DMARC-Filter: OpenDMARC Filter v1.4.1 mail.rednote.net E88B3FA268
Received: (from janina@localhost)
	by opera.rednote.net (8.16.1/8.16.1/Submit) id 17U8C35N141909
	for blinux-list@redhat.com; Mon, 30 Aug 2021 04:12:03 -0400
Date: Mon, 30 Aug 2021 04:12:03 -0400
To: Linux for blind general discussion <blinux-list@redhat.com>
Subject: Re: Help, I need a Windows VM for my work
Message-ID: <YSyS0yEUMpkgRZxd@rednote.net>
References: <3d854105-bb2b-5501-235f-eb05dc13f1f4@gmail.com>
	<AD585221-10D6-4BCE-A68D-3220079018C1@gmail.com>
	<YRJyWYpNsgGZW1De@abilitiessoft>
	<89EC2AF6-C55F-48F6-B37B-6D0A6E3582AF@gmail.com>
MIME-Version: 1.0
In-Reply-To: <89EC2AF6-C55F-48F6-B37B-6D0A6E3582AF@gmail.com>
X-Operating-System: Linux opera.rednote.net 5.13.12-200.fc34.x86_64
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection
	Definition; Similar Internal Domain=false;
	Similar Monitored External Domain=false;
	Custom External Domain=false; Mimecast External Domain=false;
	Newly Observed Domain=false; Internal User Name=false;
	Custom Display Name List=false; Reply-to Address Mismatch=false;
	Targeted Threat Dictionary=false;
	Mimecast Threat Dictionary=false; Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 2.79 on 10.11.54.5
X-loop: blinux-list@redhat.com
From: Linux for blind general discussion <blinux-list@redhat.com>
X-BeenThere: blinux-list@redhat.com
X-Mailman-Version: 2.1.12
Precedence: junk
Reply-To: blinux-list@redhat.com
List-Id: Linux for blind general discussion <blinux-list.redhat.com>
List-Unsubscribe: <https://listman.redhat.com/mailman/options/blinux-list>,
	<mailto:blinux-list-request@redhat.com?subject=unsubscribe>
List-Archive: <https://listman.redhat.com/archives/blinux-list>
List-Post: <mailto:blinux-list@redhat.com>
List-Help: <mailto:blinux-list-request@redhat.com?subject=help>
List-Subscribe: <https://listman.redhat.com/mailman/listinfo/blinux-list>,
	<mailto:blinux-list-request@redhat.com?subject=subscribe>
Sender: blinux-list-bounces@redhat.com
Errors-To: blinux-list-bounces@redhat.com
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.14
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Disposition: inline
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

Mindful that I'm responding to a thread that's a few weeks old ...

I solved this problem by using a 4 port KVM switch. That gives me one
keyboard--though I needed sighted help to reconfigure the "Windows" and
"Alt" keys so that my Mac Mini would see them correctly as "Option" and
"Command" keys. Hint, they're recognized. They're just swapped, but I
was unable to make the edit with just VoiceOver.

I have one monitor, rarely used in these days of Covid, sitting at the
opposite side of my desk because it's for sighted assistants who
sometimes come by. I'm waiting for one now to deal with an inaccessible
screen in Native Instruments Preferences on the Mac.

I have two Linux machines in this KVM. One is an older tower unit under
my desk. The other is a 2020 vintage System76 Mini.

The Windows machine, sadly, is a laptop assigned to me by my employer.
As it does VPN to the internal Amazon network, I keep it within reach
and sometimes use it directly, not just via the KVM.

I do not use my KVM to route audio, though it happens also to support
that. Instead, I've an old Mackie 1202 audio mixer, and I need to expand
to more than 12 channels Frankly.The KVM I have has four hardware
switches. They don't lock, but they do work reliably, not that that
prevents me from issuing NVDA commands to VoiceOver, or VoiceOver
commands to Orca! <smile>

Best,

Janina

Linux for blind general discussion writes:
> That is an idea I would not have thought of.
> Thanks.
> 
> > On Aug 10, 2021, at 7:34 AM, Linux for blind general discussion <blinux-list@redhat.com> wrote:
> > 
> > Well, this will probably mark me as a fool, but I just use a Linux machine and a Windows machine connected by Samba. 
> > Computers are relatively inexensive now, so why bother with virtual machines?
> > 
> > John
> > 
> > -- 
> > John J. Boyer
> > Email: john.boyer@abilitiessoft.org
> > website: http://www.abilitiessoft.org
> > Status: Company dissolved but website and email addresses  live.
> > Location: Madison, Wisconsin, USA
> > Mission: developing assistive technology software and providing STEM services 
> >        that are available at no cost
> > 
> > 
> > _______________________________________________
> > Blinux-list mailing list
> > Blinux-list@redhat.com
> > https://listman.redhat.com/mailman/listinfo/blinux-list
> > 
> 
> 
> _______________________________________________
> Blinux-list mailing list
> Blinux-list@redhat.com
> https://listman.redhat.com/mailman/listinfo/blinux-list

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
https://listman.redhat.com/mailman/listinfo/blinux-list

