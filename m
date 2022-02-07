Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	by mail.lfdr.de (Postfix) with ESMTPS id F1F5F4AE189
	for <lists+blinux-list@lfdr.de>; Tue,  8 Feb 2022 19:54:10 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1644346450;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=CqCKA6THErzvnImL5D9Lx/1z6fZVUeJCueiJjQxXjhk=;
	b=AJOG6Q7GPZVyyXUODvfEexiljCrI90gafDoDkRO2mi08nClK0zty+keDfhVTLMIy3WrTBr
	D9NBW+TG6IOuwffvrcYQbq29CCK33HAQScbfkJ4gAnfIB9fkt0Vz2lPurbYtHKjtMXPS5g
	mwB9CkUQulaKM9Xi15DyRx4YsGUBs2M=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-436-oZZdTsdzNPGn62uXDCORfA-1; Tue, 08 Feb 2022 13:54:06 -0500
X-MC-Unique: oZZdTsdzNPGn62uXDCORfA-1
Received: from smtp.corp.redhat.com (int-mx08.intmail.prod.int.phx2.redhat.com [10.5.11.23])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 6C6B98ECEA0;
	Tue,  8 Feb 2022 18:53:48 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 75477429C2;
	Tue,  8 Feb 2022 18:53:41 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 2E2B018329C1;
	Tue,  8 Feb 2022 18:53:29 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx06.intmail.prod.int.rdu2.redhat.com
	[10.11.54.6])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 217Cpdsh004046 for <blinux-list@listman.util.phx.redhat.com>;
	Mon, 7 Feb 2022 07:51:40 -0500
Received: by smtp.corp.redhat.com (Postfix)
	id 971A42166B4C; Mon,  7 Feb 2022 12:51:39 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast06.extmail.prod.ext.rdu2.redhat.com [10.11.55.22])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 925762166B4B
	for <blinux-list@redhat.com>; Mon,  7 Feb 2022 12:51:36 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com
	[205.139.110.120])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 53974185A7B2
	for <blinux-list@redhat.com>; Mon,  7 Feb 2022 12:51:36 +0000 (UTC)
Received: from gateway3.unifiedlayer.com (gateway3.unifiedlayer.com
	[74.220.219.9]) by relay.mimecast.com with ESMTP with STARTTLS
	(version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
	us-mta-464-Xp4iLNDRME6iGQEwkhAljQ-1; Mon, 07 Feb 2022 07:51:34 -0500
X-MC-Unique: Xp4iLNDRME6iGQEwkhAljQ-1
Received: from cm3.websitewelcome.com (unknown [108.167.139.23])
	by gateway3.unifiedlayer.com (Postfix) with ESMTP id D3711200A5220
	for <blinux-list@redhat.com>; Mon,  7 Feb 2022 06:27:14 -0600 (CST)
Received: from uscentral455.accountservergroup.com ([174.136.13.174])
	by cmsmtp with ESMTP
	id H36wnCSbDuhW2H36wnoLiF; Mon, 07 Feb 2022 06:27:14 -0600
X-Authority-Reason: nr=8
Received: from 76-222-220-222.lightspeed.rcsntx.sbcglobal.net
	([76.222.220.222]:36958 helo=bigbox.attlocal.net)
	by uscentral455.accountservergroup.com with esmtpsa (TLS1.2) tls
	TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.93)
	(envelope-from <blinux.list@thechases.com>) id 1nH36w-003ac7-Ig
	for blinux-list@redhat.com; Mon, 07 Feb 2022 06:27:14 -0600
Date: Mon, 7 Feb 2022 06:27:13 -0600
To: blinux-list@redhat.com
Subject: Re: Revisiting Twitter clients
Message-ID: <20220207062713.4e674f58@bigbox.attlocal.net>
In-Reply-To: <59896164-9a9d-e3db-352-4bac97d2841@brandt-slint.study.home>
References: <59896164-9a9d-e3db-352-4bac97d2841@brandt-slint.study.home>
MIME-Version: 1.0
X-AntiAbuse: This header was added to track abuse,
	please include it with any abuse report
X-AntiAbuse: Primary Hostname - uscentral455.accountservergroup.com
X-AntiAbuse: Original Domain - redhat.com
X-AntiAbuse: Originator/Caller UID/GID - [47 12] / [47 12]
X-AntiAbuse: Sender Address Domain - thechases.com
X-BWhitelist: no
X-Source-IP: 76.222.220.222
X-Source-L: No
X-Exim-ID: 1nH36w-003ac7-Ig
X-Source: 
X-Source-Args: 
X-Source-Dir: 
X-Source-Sender: 76-222-220-222.lightspeed.rcsntx.sbcglobal.net
	(bigbox.attlocal.net) [76.222.220.222]:36958
X-Source-Auth: tim@thechases.com
X-Email-Count: 1
X-Source-Cap: dGhlY2hhc2U7dGhlY2hhc2U7dXNjZW50cmFsNDU1LmFjY291bnRzZXJ2ZXJncm91cC5jb20=
X-Local-Domain: yes
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection
	Definition; Similar Internal Domain=false;
	Similar Monitored External Domain=false;
	Custom External Domain=false; Mimecast External Domain=false;
	Newly Observed Domain=false; Internal User Name=false;
	Custom Display Name List=false; Reply-to Address Mismatch=false;
	Targeted Threat Dictionary=false;
	Mimecast Threat Dictionary=false; Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 2.78 on 10.11.54.6
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
X-Scanned-By: MIMEDefang 2.84 on 10.5.11.23
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

Tim here.  A while back I tried a smattering of CLI Twitter clients
and was pretty disappointed.  Rainbowstream was the least bad of
them, so that's where I'd start.

https://github.com/orakaro/rainbowstream

It required the ability to do an OAUTH credential thing, but I think
it can be completed using an external browser (such as one on a phone
or on a different computer) since all it needs to do is get
confirmation from Twitter that the login is legit.

-tim


On February  1, 2022, Linux for blind general discussion wrote:
> Hi all,
> 
> I find myself often starting the PC and just doing what I needed to
> do without starting an XSession at all.
> 
> Quickly editing a document using, in my case, Nano, simply because
> I actually like it for being simple, easy and effective. Maybe
> playing some music, and now that I've figured it out, reading my
> mail using alpine.
> 
> Is there a reasonably good TUI Twitter client that doesn't rely on
> any kind of XSession?
> 
> I know this has been discussed but, since stuff change so darn fast
> in tech, and particularly in the FOS world, maybe there's something
> new to say on the topic.
> 
> Warm regards,
> 
> Brandt Steenkamp
> 
> Sent from the Slint console using Alpine
> 
> _______________________________________________
> Blinux-list mailing list
> Blinux-list@redhat.com
> https://listman.redhat.com/mailman/listinfo/blinux-list
> 

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://listman.redhat.com/mailman/listinfo/blinux-list

