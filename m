Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.129.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 4CC554C2B22
	for <lists+blinux-list@lfdr.de>; Thu, 24 Feb 2022 12:45:54 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1645703153;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=PC6yVuzh6s8COm8YLw29yk3PPo0DlHHPu+EyJgWTD0g=;
	b=G3dIp1j4bXIlzCl4l9bv9VPnPnSJEWb95YXs8zNCVsmqabwheX+dVRM9Zifm7rgiyuvGpj
	Uv1UwVVj9rDmxiIzsFBcyElAw8v6fkI+EPWFPeIuoapgd1Q52VT2fsvOU1SwL4C8pbYbjR
	weLd19LPCKC5hQnSub05yjORltFRAU4=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-583-avgWIA7NNQqg8bRRq_MYbw-1; Thu, 24 Feb 2022 06:45:49 -0500
X-MC-Unique: avgWIA7NNQqg8bRRq_MYbw-1
Received: from smtp.corp.redhat.com (int-mx07.intmail.prod.int.phx2.redhat.com [10.5.11.22])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 9DFE4804B82;
	Thu, 24 Feb 2022 11:45:45 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 059841053B11;
	Thu, 24 Feb 2022 11:45:45 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 6B9471809C98;
	Thu, 24 Feb 2022 11:45:42 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx05.intmail.prod.int.rdu2.redhat.com
	[10.11.54.5])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 21OBeVF0024014 for <blinux-list@listman.util.phx.redhat.com>;
	Thu, 24 Feb 2022 06:40:31 -0500
Received: by smtp.corp.redhat.com (Postfix)
	id 910EE7ACE; Thu, 24 Feb 2022 11:40:31 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast02.extmail.prod.ext.rdu2.redhat.com [10.11.55.18])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 8C6857ACD
	for <blinux-list@redhat.com>; Thu, 24 Feb 2022 11:40:25 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com
	[207.211.31.120])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 6CA05800B24
	for <blinux-list@redhat.com>; Thu, 24 Feb 2022 11:40:25 +0000 (UTC)
Received: from bullseyemail.carmickle.com (bullseyemail.carmickle.com
	[50.116.61.232]) by relay.mimecast.com with ESMTP with STARTTLS
	(version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
	us-mta-101-O415sjPCNe2S2KS0v3cjfQ-1; Thu, 24 Feb 2022 06:40:23 -0500
X-MC-Unique: O415sjPCNe2S2KS0v3cjfQ-1
Received: from [192.168.116.128] (unknown [176.230.58.100])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by bullseyemail.carmickle.com (Postfix) with ESMTPSA id 836EE3A1C076
	for <blinux-list@redhat.com>; Thu, 24 Feb 2022 11:40:22 +0000 (UTC)
Date: Thu, 24 Feb 2022 13:40:20 +0200 (IST)
X-X-Sender: gshang@debian.work
To: Linux for blind general discussion <blinux-list@redhat.com>
Subject: Re: Easiest way to back up/pull data from a cloud w/speakup or Fenrir?
In-Reply-To: <Yha/ohci65ePLjtV@waffles>
Message-ID: <alpine.DEB.2.11.2202241336470.2899@debian.work>
References: <Yha/ohci65ePLjtV@waffles>
User-Agent: Alpine 2.11 (DEB 23 2013-08-11)
MIME-Version: 1.0
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
X-Scanned-By: MIMEDefang 2.84 on 10.5.11.22
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"

On Wed, 23 Feb 2022, Linux for blind general discussion wrote:

> What's the simplest way to back up data to a cloud server and pull it
> back down?

Depends on how much data you're talking about and how much trouble you 
want to go to.

You could simply spin up a VPS at any hosting provider you like and rsync 
the files up there.  This might cost you a few dollars a month, depending 
on who you go with and what you want, but it might be simplest if you 
don't want to mess with complicated authentication.

Cheers,
Geoff.

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://listman.redhat.com/mailman/listinfo/blinux-list

