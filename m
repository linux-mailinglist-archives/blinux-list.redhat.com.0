Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.129.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 9A3184AE673
	for <lists+blinux-list@lfdr.de>; Wed,  9 Feb 2022 03:29:00 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1644373739;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=U0vBuVCskdpc+++Z1RVSn/eTUbIhT2s+6c/7dcz+JMQ=;
	b=SCLfJao1LzTY+NkH1oLZlWuV92eRqqpKfex9C1Tg8cXS/LoJwV2djmHYP7F4bZcfcioraf
	8NBTf6cvojbqPTf3gfSzBCFsZY+jZ8nPWw1d0PHQeTlLbcmJUFz0Xi/qjV2Z09uchQQcWN
	KciuuH/Bo9T9c9dWh93YiHp9EB4NCPQ=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-657-yCwSulDsN5OJT9vsdQG5mg-1; Tue, 08 Feb 2022 21:28:56 -0500
X-MC-Unique: yCwSulDsN5OJT9vsdQG5mg-1
Received: from smtp.corp.redhat.com (int-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.11])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id F0AA6100C665;
	Wed,  9 Feb 2022 02:28:51 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id E80D05DB82;
	Wed,  9 Feb 2022 02:28:49 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 697771809C87;
	Wed,  9 Feb 2022 02:28:48 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx10.intmail.prod.int.rdu2.redhat.com
	[10.11.54.10])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 2192SgAm017907 for <blinux-list@listman.util.phx.redhat.com>;
	Tue, 8 Feb 2022 21:28:42 -0500
Received: by smtp.corp.redhat.com (Postfix)
	id E5698401E22; Wed,  9 Feb 2022 02:28:41 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast06.extmail.prod.ext.rdu2.redhat.com [10.11.55.22])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id E1456401E24
	for <blinux-list@redhat.com>; Wed,  9 Feb 2022 02:28:41 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com
	[205.139.110.120])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id CD260185A794
	for <blinux-list@redhat.com>; Wed,  9 Feb 2022 02:28:41 +0000 (UTC)
Received: from mailbackend.panix.com (mailbackend.panix.com [166.84.1.89])
	by relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.2,
	cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
	us-mta-64-VSxxPJe8Nv6rEb37cKDpdg-1; Tue, 08 Feb 2022 21:28:40 -0500
X-MC-Unique: VSxxPJe8Nv6rEb37cKDpdg-1
Received: from panix3.panix.com (panix3.panix.com [166.84.1.3])
	by mailbackend.panix.com (Postfix) with ESMTP id 4JtkMW5z0qzpxC
	for <blinux-list@redhat.com>; Tue,  8 Feb 2022 21:28:39 -0500 (EST)
Received: by panix3.panix.com (Postfix, from userid 20196)
	id 4JtkMW5nXmz1QXJ; Tue,  8 Feb 2022 21:28:39 -0500 (EST)
Date: Tue, 8 Feb 2022 21:28:39 -0500
To: Linux for blind general discussion <blinux-list@redhat.com>
Subject: Re: De-arrowing my system...how easy it is?
Message-ID: <YgMm151/+oJlAW+c@panix.com>
References: <7c4915b9-ca3a-9c1a-1132-b9896e94cbaa@gmail.com>
	<YgMV348HDT3todvP@panix.com>
	<CAO2sX31toO=qxKykAemhKi2HFwGSasjWNCUDf=O2uEEDS9Dqeg@mail.gmail.com>
MIME-Version: 1.0
In-Reply-To: <CAO2sX31toO=qxKykAemhKi2HFwGSasjWNCUDf=O2uEEDS9Dqeg@mail.gmail.com>
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection
	Definition; Similar Internal Domain=false;
	Similar Monitored External Domain=false;
	Custom External Domain=false; Mimecast External Domain=false;
	Newly Observed Domain=false; Internal User Name=false;
	Custom Display Name List=false; Reply-to Address Mismatch=false;
	Targeted Threat Dictionary=false;
	Mimecast Threat Dictionary=false; Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 2.85 on 10.11.54.10
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
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.11
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Disposition: inline
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

You have to be root to invoke these tools.


On Wed, Feb 09, 2022 at 01:28:01AM +0000, Linux for blind general discussion wrote:
> Any idea what package provides dumpkeys, showkeys, and loadkeys?
> Because these commands don't seem to exist on my system.
> 
> the main repository in my /etc/apt/sources.list is Debian Testing if it matters.
> 
> _______________________________________________
> Blinux-list mailing list
> Blinux-list@redhat.com
> https://listman.redhat.com/mailman/listinfo/blinux-list

-- 
Rudy Vener
Website: http://www.rudyvener.com
Twitter: https://twitter.com/RudySalt
The difference between truth and falsehood is that truth remains the same no matter which political party holds the majority.

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://listman.redhat.com/mailman/listinfo/blinux-list

