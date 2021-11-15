Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [216.205.24.124])
	by mail.lfdr.de (Postfix) with ESMTPS id F3B3E44FDCF
	for <lists+blinux-list@lfdr.de>; Mon, 15 Nov 2021 05:06:37 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1636949196;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=ynpC253SIiDZ9xXcBLEvIIvY3FynogtZW9ZQqScxZYc=;
	b=iJE4vb/+89hv+h+M1Tdh2HoACPFx7b2h4NqUUv0+oDW9+k44EMka2EcAr/M722UsOna6N9
	/+BfAOyJ1Xz2UblIsT2S9kXMalh/vTfhApsOI1NbpyX6y+qUTBDIIvHCFjIH8S+lNGO5T0
	n6bDnSHuTo9orFbnxY3cnw6H83HPG6o=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-529-zqKSPlDgO7yJbCj45stMvQ-1; Sun, 14 Nov 2021 23:06:33 -0500
X-MC-Unique: zqKSPlDgO7yJbCj45stMvQ-1
Received: from smtp.corp.redhat.com (int-mx07.intmail.prod.int.phx2.redhat.com [10.5.11.22])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id A5F151DDE2;
	Mon, 15 Nov 2021 04:06:28 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id CCC24100763D;
	Mon, 15 Nov 2021 04:06:27 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id E50544A702;
	Mon, 15 Nov 2021 04:06:24 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx04.intmail.prod.int.rdu2.redhat.com
	[10.11.54.4])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 1AF449cX026597 for <blinux-list@listman.util.phx.redhat.com>;
	Sun, 14 Nov 2021 23:04:09 -0500
Received: by smtp.corp.redhat.com (Postfix)
	id 0C5E52026D46; Mon, 15 Nov 2021 04:04:09 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast05.extmail.prod.ext.rdu2.redhat.com [10.11.55.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 06C1A2026980
	for <blinux-list@redhat.com>; Mon, 15 Nov 2021 04:04:05 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-2.mimecast.com [205.139.110.61])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id D522E802A5E
	for <blinux-list@redhat.com>; Mon, 15 Nov 2021 04:04:05 +0000 (UTC)
Received: from gateway3.unifiedlayer.com (gateway3.unifiedlayer.com
	[74.220.217.133]) (Using TLS) by relay.mimecast.com with ESMTP id
	us-mta-550-4CiWYGa3NA-ZUfM9IOKHzQ-1; Sun, 14 Nov 2021 23:04:03 -0500
X-MC-Unique: 4CiWYGa3NA-ZUfM9IOKHzQ-1
Received: from cm4.websitewelcome.com (unknown [108.167.139.16])
	by gateway3.unifiedlayer.com (Postfix) with ESMTP id 918BA2011C303
	for <blinux-list@redhat.com>; Sun, 14 Nov 2021 21:40:23 -0600 (CST)
Received: from uscentral455.accountservergroup.com ([174.136.13.174])
	by cmsmtp with ESMTP
	id mSr1mjkH8cfn8mSr1mhiPH; Sun, 14 Nov 2021 21:40:23 -0600
X-Authority-Reason: nr=8
Received: from 76-222-220-222.lightspeed.rcsntx.sbcglobal.net
	([76.222.220.222]:59493 helo=bigbox.attlocal.net)
	by uscentral455.accountservergroup.com with esmtpsa (TLS1.2) tls
	TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.93)
	(envelope-from <blinux.list@thechases.com>) id 1mmSr1-003vvT-9B
	for blinux-list@redhat.com; Sun, 14 Nov 2021 21:40:23 -0600
Date: Sun, 14 Nov 2021 21:40:22 -0600
To: blinux-list@redhat.com
Subject: Re: any other accessible email client for linux?
Message-ID: <20211114214022.49696a98@bigbox.attlocal.net>
In-Reply-To: <YZGyDMsFFKd/+PWz@panix.com>
References: <4015f410-14f1-6c3b-b0a5-7688b34c418e@gmail.com>
	<b415a935-f50d-a71b-0ddd-30d1f8ac6146@gmail.com>
	<df15eb1f-989b-b8fb-f90c-8fa6817be487@gmail.com>
	<alpine.NEB.2.23.451.2111141627140.871@panix1.panix.com>
	<6bb0a456-bfc5-e1dc-5886-5dc32687c580@gmail.com>
	<b356b32b-3de9-88fb-c8d2-26876231dcc1@gmail.com>
	<c1a9cbd4-a9a1-910f-0244-049cea5edc74@gmail.com>
	<f4000503-df02-93a7-d50e-825ac3e2a0f8@gmail.com>
	<24c55f9c-07ac-ac25-5a96-e3fd5127b7c7@gmail.com>
	<d6f72308-9a85-3cb1-8bc1-56c0ca459da7@gmail.com>
	<YZGyDMsFFKd/+PWz@panix.com>
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
X-Exim-ID: 1mmSr1-003vvT-9B
X-Source: 
X-Source-Args: 
X-Source-Dir: 
X-Source-Sender: 76-222-220-222.lightspeed.rcsntx.sbcglobal.net
	(bigbox.attlocal.net) [76.222.220.222]:59493
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
X-Scanned-By: MIMEDefang 2.78 on 10.11.54.4
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
X-Scanned-By: MIMEDefang 2.84 on 10.5.11.22
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

Tim here.  I found that mutt/neomutt was a lousy mail program on its
own, but a great toolkit for building a good mail client from the
pieces it offered.  In other words, out of the box, it's rough,
relying on local mail delivery in your system mailbox and expecting
your local sendmail to be configured to let you fire off outbound
mail.

However, the configuration is so powerful that you can customize it
into a multi-account setup, accessing remote POP3/IMAP accounts as
easily as local mbox/maildir accounts, or accessing a local
mail-cache synched by things like offlineimap/mbsync.

It takes a lot more care and feeding than a friendlier MUA, but in
exchange, gives you a lot more power

-tim

On November 14, 2021, Linux for blind general discussion wrote:
> One nice thing about mutt is that once you do finally get through
> editing your config file  you've learned enough
> to make future configuration changes and enhancements trivial.
> Yes, there is a learning curve, and yes you really do have to
> read the Mutt User's guide, or at least google the problem you want
> to resolve, but  you don't have to fight with configuration screens
> designed for sighted users.
> 
> Rudy
> 
> On Sun, Nov 14, 2021 at 07:33:24PM -0500, Linux for blind general
> discussion wrote:
> > I think I just closed each unwanted tab with 'ctrl+w'.?? I also
> > got rid of the "today" pane from the "view" menu.
> > 
> > 
> > -Dave?? -
> > 
> > 
> > 
> > On 11/14/21 19:14, Linux for blind general discussion wrote:  
> > > how did you do that? I could not find the settings pertaining
> > > to them. 
> > 
> > _______________________________________________
> > Blinux-list mailing list
> > Blinux-list@redhat.com
> > https://listman.redhat.com/mailman/listinfo/blinux-list  
> 
> -- 
> Rudy Vener
> Website: http://www.rudyvener.com
> Twitter: https://twitter.com/RudySalt
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

