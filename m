Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	by mail.lfdr.de (Postfix) with ESMTP id 6DD3036FFEB
	for <lists+blinux-list@lfdr.de>; Fri, 30 Apr 2021 19:48:21 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1619804900;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=VIF/VkVzVaCkmdcQSk16537QTnuamlsYWGz+7hRtTPM=;
	b=ZWOy+uDFxWcPxTs/ziKaMaxz9nmQ0u+tk540o/JYWKlgDqHuY9jYNimHWqfRvyr2QftVct
	Hg6x0duw37lHAocDnuJcEaewufbAVXjrE6zHfOsR7CPV41ji99wbeJUQPDKME1z2R6FJoa
	OduO/Hzv2UdZISXSUc63M44rUTBNQo4=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-276-iTWliRklMqym6e6Kjse-Gg-1; Fri, 30 Apr 2021 13:48:18 -0400
X-MC-Unique: iTWliRklMqym6e6Kjse-Gg-1
Received: from smtp.corp.redhat.com (int-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.12])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id C72571008069;
	Fri, 30 Apr 2021 17:48:14 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 0AD732B162;
	Fri, 30 Apr 2021 17:48:14 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id CC64A1800BBE;
	Fri, 30 Apr 2021 17:48:12 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx05.intmail.prod.int.rdu2.redhat.com
	[10.11.54.5])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 13UHj0gB012764 for <blinux-list@listman.util.phx.redhat.com>;
	Fri, 30 Apr 2021 13:45:00 -0400
Received: by smtp.corp.redhat.com (Postfix)
	id 8370C11F4CC; Fri, 30 Apr 2021 17:45:00 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast05.extmail.prod.ext.rdu2.redhat.com [10.11.55.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 7EC4211F4BF
	for <blinux-list@redhat.com>; Fri, 30 Apr 2021 17:44:58 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com
	[205.139.110.120])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 0F4D6802E5E
	for <blinux-list@redhat.com>; Fri, 30 Apr 2021 17:44:58 +0000 (UTC)
Received: from mailbackend.panix.com (mailbackend.panix.com [166.84.1.89])
	(Using TLS) by relay.mimecast.com with ESMTP id
	us-mta-20-cpKQaYxPP1alN1JOeqwZaw-1; Fri, 30 Apr 2021 13:44:55 -0400
X-MC-Unique: cpKQaYxPP1alN1JOeqwZaw-1
Received: from panix3.panix.com (panix3.panix.com [166.84.1.3])
	by mailbackend.panix.com (Postfix) with ESMTP id 4FX0BH1sHJz29yQ
	for <blinux-list@redhat.com>; Fri, 30 Apr 2021 13:44:55 -0400 (EDT)
Received: by panix3.panix.com (Postfix, from userid 20196)
	id 4FX0BH1WJkz1QXL; Fri, 30 Apr 2021 13:44:55 -0400 (EDT)
Date: Fri, 30 Apr 2021 13:44:55 -0400
To: Linux for blind general discussion <blinux-list@redhat.com>
Subject: Re: Best Distro for Blind
Message-ID: <YIxCF1C83HFrpbkN@panix.com>
References: <4a0283bb-6247-cba9-28b5-3562a4ebaf6b@gmail.com>
MIME-Version: 1.0
In-Reply-To: <4a0283bb-6247-cba9-28b5-3562a4ebaf6b@gmail.com>
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
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.12
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Disposition: inline
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

I just switched from Vinux to Slint. Slint is orders of magnitude better.
Warning, I only use console, but with slint I can switch between speakup and fenrir, and within speakup
can switch between espeak and dectalk.
>From a quick read of slint getting started docs, you should be able 
to choose between a variety of talking GUI environments, but most
of the discussion on the slint list is about Mate.

Rudy

On Fri, Apr 30, 2021 at 01:20:41PM -0400, Linux for blind general discussion wrote:
> Hello,
> 
> 
> I am a totally blind person and a LONG time Windows/Jaws/NVDA user. I am
> wondering what would be a recommendation for the best distro/GUI environment
> to begin using??? I would love to be able to move away from Windows and use
> Linux full time for browsing, email, word processing and spreadsheets. I
> have a Thinkpad X220 that I can use for Linux. About 15 years ago, I played
> around with Venux, but that project seems to be dormant now. I have a Pi 3B+
> running some ham radio software and I have to SSH into it occasionally and
> perform some command line stuff. For daily usage, I want a full GUI
> environment.
> 
> 
> Thanks in advance for any suggestions.
> 
> 
> John
> 
> 
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

