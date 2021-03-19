Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [63.128.21.124])
	by mail.lfdr.de (Postfix) with ESMTP id A9D7C341205
	for <lists+blinux-list@lfdr.de>; Fri, 19 Mar 2021 02:19:17 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1616116756;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=zVkEhggD2VIYuA+cieNylMAgO2dTSRQk/CyQa/gWgnM=;
	b=imciNIKq9p+KsjylRd+pnQVBUzDMDByxwzskjV4MV1x5QFEsXnVpm6hehJcM5K5Gm5AMDR
	RvLuHv8cZpo084eZf24uD6n9GM/tvkTxJP86DDVAwLGIu/TvjDAS4tdrQ42KuNfsHj6ScI
	Idmt1XrU/M7FLRwkNAbjQYlV3MADq2w=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-340-X_ZF0yYrM8SrMzGSZejqSQ-1; Thu, 18 Mar 2021 21:19:15 -0400
X-MC-Unique: X_ZF0yYrM8SrMzGSZejqSQ-1
Received: from smtp.corp.redhat.com (int-mx05.intmail.prod.int.phx2.redhat.com [10.5.11.15])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 8F785104FB66;
	Fri, 19 Mar 2021 01:19:11 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id DC5D15D6AB;
	Fri, 19 Mar 2021 01:19:09 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 1FC534BB7C;
	Fri, 19 Mar 2021 01:19:09 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx05.intmail.prod.int.rdu2.redhat.com
	[10.11.54.5])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 12J1J5Oi005586 for <blinux-list@listman.util.phx.redhat.com>;
	Thu, 18 Mar 2021 21:19:05 -0400
Received: by smtp.corp.redhat.com (Postfix)
	id EB3FCF97FC; Fri, 19 Mar 2021 01:19:04 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast04.extmail.prod.ext.rdu2.redhat.com [10.11.55.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id E5C3BFA730
	for <blinux-list@redhat.com>; Fri, 19 Mar 2021 01:19:01 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com
	[207.211.31.120])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 3FC701021E08
	for <blinux-list@redhat.com>; Fri, 19 Mar 2021 01:19:01 +0000 (UTC)
Received: from mailbackend.panix.com (mailbackend.panix.com [166.84.1.89])
	(Using TLS) by relay.mimecast.com with ESMTP id
	us-mta-183-aPXGHx3DOZCN8xgqhd9VEA-1; Thu, 18 Mar 2021 21:18:58 -0400
X-MC-Unique: aPXGHx3DOZCN8xgqhd9VEA-1
Received: from panix1.panix.com (panix1.panix.com [166.84.1.1])
	by mailbackend.panix.com (Postfix) with ESMTP id 4F1mJ21TQtz1hQY
	for <blinux-list@redhat.com>; Thu, 18 Mar 2021 21:18:58 -0400 (EDT)
Received: by panix1.panix.com (Postfix, from userid 20712)
	id 4F1mJ20cxCzcbc; Thu, 18 Mar 2021 21:18:58 -0400 (EDT)
Received: from localhost (localhost [127.0.0.1])
	by panix1.panix.com (Postfix) with ESMTP id 4F1mJ20HWRzcbW
	for <blinux-list@redhat.com>; Thu, 18 Mar 2021 21:18:58 -0400 (EDT)
Date: Thu, 18 Mar 2021 21:18:57 -0400
To: Linux for blind general discussion <blinux-list@redhat.com>
Subject: Re: Are Their Any Other Graphical Screen-Readers in Linux, Other
	than ORCA?
In-Reply-To: <eb9e4135-2b54-ec88-536a-5d7f8e71d9df@hubert-humphrey.com>
Message-ID: <alpine.NEB.2.23.451.2103182115590.7593@panix1.panix.com>
References: <eb9e4135-2b54-ec88-536a-5d7f8e71d9df@hubert-humphrey.com>
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
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.15
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"

I haven't messed with it, but think lots of customization could be done 
with ala carte which is a menuing system for graphical user interfaces in 
Linux.  Ratpoison is available and operated entirely by keyboard once 
installed correctly.

On Thu, 18 Mar 2021, Linux for blind general discussion wrote:

> Well, 1 of my sighted Linux friends thinks the reason I am not comfortable in 
> ORCA has more to do with as he calls it, "tyling" He thinks another desktop 
> might be the trick? Some background, when I was practicly dragged 
> `kicking-and-screaming in to windows in late 1997, I did manage to get a feel 
> for a win95/98 desktop, where everything was up-and-down. But once they 
> switched to windows explorer, they basicly lost me. So an obvious 2 
> questions? Are their any other alternatives to ORCA? And if that were an only 
> choice, are their simpler desktops which would have more of  a feel I am more 
> used to? An only other choice, which won't compile now is LSR from around 
> 2007.
> I am certainly rather contented with a straight console, but for many sites, 
> graphical may be an alternative, which a Chromebook with Chromevox has not 
> really offered. Thanks so much in advance for your analysis. Also, I trust 
> there are many more hier quality voices in graphical?
> Chime
>
> _______________________________________________
> Blinux-list mailing list
> Blinux-list@redhat.com
> https://listman.redhat.com/mailman/listinfo/blinux-list
>
>
>

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://listman.redhat.com/mailman/listinfo/blinux-list

