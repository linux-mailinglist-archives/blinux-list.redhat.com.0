Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 7D47544F493
	for <lists+blinux-list@lfdr.de>; Sat, 13 Nov 2021 19:35:47 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1636828546;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=vsdPj5zB6zvaadtJjpsHEr/QYPCRP2alcbEH2Fl6g0E=;
	b=Q5jKT4tBdSEBHygO+NziaLAMABginYz+lTjDraihQzF7Az/Nw4LBoRY04t28nhTeO6xRV1
	JKrDAUfPz/WlP6QFm+EhYdF85QB9PsLlhLOyoSHYdKSdvpit2ne7qaA5dKPSVES0hPRMY6
	A1iYOkaE47FZpJOECicX7Ttq3gy1Er0=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-144-t50DC-K8MreNlSSGcuHCrQ-1; Sat, 13 Nov 2021 13:35:43 -0500
X-MC-Unique: t50DC-K8MreNlSSGcuHCrQ-1
Received: from smtp.corp.redhat.com (int-mx03.intmail.prod.int.phx2.redhat.com [10.5.11.13])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 017068015C6;
	Sat, 13 Nov 2021 18:35:39 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 2484860862;
	Sat, 13 Nov 2021 18:35:37 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 8B6B3181A1D0;
	Sat, 13 Nov 2021 18:35:30 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx02.intmail.prod.int.rdu2.redhat.com
	[10.11.54.2])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 1ADIXHrR012605 for <blinux-list@listman.util.phx.redhat.com>;
	Sat, 13 Nov 2021 13:33:17 -0500
Received: by smtp.corp.redhat.com (Postfix)
	id 84C04404727E; Sat, 13 Nov 2021 18:33:17 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast04.extmail.prod.ext.rdu2.redhat.com [10.11.55.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 811D4404727D
	for <blinux-list@redhat.com>; Sat, 13 Nov 2021 18:33:17 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com
	[205.139.110.120])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 6DFE61066558
	for <blinux-list@redhat.com>; Sat, 13 Nov 2021 18:33:17 +0000 (UTC)
Received: from l2mail1.panix.com (l2mail1.panix.com [166.84.1.75]) (Using
	TLS) by relay.mimecast.com with ESMTP id
	us-mta-184-7eTISjzjNT24OY1HQzhRZw-1; Sat, 13 Nov 2021 13:33:15 -0500
X-MC-Unique: 7eTISjzjNT24OY1HQzhRZw-1
Received: from mailbackend.panix.com (mailbackend.panix.com [166.84.1.89])
	by l2mail1.panix.com (Postfix) with ESMTPS id 4Hs3WW5lMWzDYY
	for <blinux-list@redhat.com>; Sat, 13 Nov 2021 13:14:31 -0500 (EST)
Received: from panix3.panix.com (panix3.panix.com [166.84.1.3])
	by mailbackend.panix.com (Postfix) with ESMTP id 4Hs3WV6pSjz462G
	for <blinux-list@redhat.com>; Sat, 13 Nov 2021 13:14:30 -0500 (EST)
Received: by panix3.panix.com (Postfix, from userid 20196)
	id 4Hs3WV6Gslz1QXJ; Sat, 13 Nov 2021 13:14:30 -0500 (EST)
Date: Sat, 13 Nov 2021 13:14:30 -0500
To: Linux for blind general discussion <blinux-list@redhat.com>
Subject: Re: any other accessible email client for linux?
Message-ID: <YZAAhqsubBVL2pNl@panix.com>
References: <b92effa3-e60f-02aa-a7b8-3102adfe2e4a@gmail.com>
MIME-Version: 1.0
In-Reply-To: <b92effa3-e60f-02aa-a7b8-3102adfe2e4a@gmail.com>
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection
	Definition; Similar Internal Domain=false;
	Similar Monitored External Domain=false;
	Custom External Domain=false; Mimecast External Domain=false;
	Newly Observed Domain=false; Internal User Name=false;
	Custom Display Name List=false; Reply-to Address Mismatch=false;
	Targeted Threat Dictionary=false;
	Mimecast Threat Dictionary=false; Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 2.84 on 10.11.54.2
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
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.13
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Disposition: inline
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

Sure, the mutt e-mail client.

On Sat, Nov 13, 2021 at 12:31:08PM -0500, Linux for blind general discussion wrote:
> Hello friends,
> 
> I am wondering if there is another accessible email client that works
> seamlessly with linux? Currently I am using thunderbird. It is very
> accessible with linux. However, the fact that it brings so many firefox tabs
> which are not directly email related is annoying. I want an email client
> that is simple and purely email, no other features. Do you guys recommend a
> particularly simple yet accessible client?
> 
> Cheers,
> 
> Ibrahim
> 
> ,
> 
> _______________________________________________
> Blinux-list mailing list
> Blinux-list@redhat.com
> https://listman.redhat.com/mailman/listinfo/blinux-list

-- 
Rudy Vener
Website: http://www.rudyvener.com
Twitter: https://twitter.com/RudySalt

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://listman.redhat.com/mailman/listinfo/blinux-list

