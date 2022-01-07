Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 6B8A448785B
	for <lists+blinux-list@lfdr.de>; Fri,  7 Jan 2022 14:41:18 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1641562877;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=a6B5weC79aHuzU2UdVPMbi3IHN18xpJzCqRm9XBkxtE=;
	b=Poq9vnDQ1sSAZsobi9rmuMzrrI3Ivu2autzw7WRPuqYi9d4DUjcqM/ZEiSkK80grY5xCkU
	CaXnSUIILEB/INZ0Pl4ks7JGDpsCI1xVgs09R903jq0Yrktra4tBUTjVwQMmeA5wshmGuA
	6UvNpqsgPZqF6eH/CCmBSh2GREW6iug=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-632-saqNwxlhPSCkBqHKCbFdcw-1; Fri, 07 Jan 2022 08:41:13 -0500
X-MC-Unique: saqNwxlhPSCkBqHKCbFdcw-1
Received: from smtp.corp.redhat.com (int-mx03.intmail.prod.int.phx2.redhat.com [10.5.11.13])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 7FC5E190A7A4;
	Fri,  7 Jan 2022 13:41:08 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 6294E84D28;
	Fri,  7 Jan 2022 13:41:06 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id AE05C4CA9B;
	Fri,  7 Jan 2022 13:40:59 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx01.intmail.prod.int.rdu2.redhat.com
	[10.11.54.1])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 207DdvAN028710 for <blinux-list@listman.util.phx.redhat.com>;
	Fri, 7 Jan 2022 08:39:57 -0500
Received: by smtp.corp.redhat.com (Postfix)
	id 7411C40FF70F; Fri,  7 Jan 2022 13:39:57 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast06.extmail.prod.ext.rdu2.redhat.com [10.11.55.22])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 6F41740FF706
	for <blinux-list@redhat.com>; Fri,  7 Jan 2022 13:39:57 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-2.mimecast.com [205.139.110.61])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 530BA185A7B2
	for <blinux-list@redhat.com>; Fri,  7 Jan 2022 13:39:57 +0000 (UTC)
Received: from mail.rednote.net (opera.rednote.net [66.228.34.147]) by
	relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.2,
	cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
	us-mta-208-KyJdHJc7NXWNJqhdUWE9Ig-1; Fri, 07 Jan 2022 08:39:54 -0500
X-MC-Unique: KyJdHJc7NXWNJqhdUWE9Ig-1
Received: from opera.rednote.net (localhost [IPv6:::1])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest
	SHA256) (No client certificate requested)
	by mail.rednote.net (Postfix) with ESMTPS id 481C7FB1DB;
	Fri,  7 Jan 2022 08:39:52 -0500 (EST)
DMARC-Filter: OpenDMARC Filter v1.4.1 mail.rednote.net 481C7FB1DB
Received: (from janina@localhost)
	by opera.rednote.net (8.17.1/8.16.1/Submit) id 207DdpS1493305;
	Fri, 7 Jan 2022 08:39:51 -0500
Date: Fri, 7 Jan 2022 08:39:51 -0500
To: Didier Spaier <didier@slint.fr>
Subject: Re: [orca-list] Jos Lemmens passed away on November 9, 2021
Message-ID: <YdhCpxHW+JCdUKQO@rednote.net>
References: <bafa422c-eba4-223a-0d2f-f632f5bd6445@slint.fr>
MIME-Version: 1.0
In-Reply-To: <bafa422c-eba4-223a-0d2f-f632f5bd6445@slint.fr>
X-Operating-System: Linux opera.rednote.net 5.15.12-200.fc35.x86_64
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection
	Definition; Similar Internal Domain=false;
	Similar Monitored External Domain=false;
	Custom External Domain=false; Mimecast External Domain=false;
	Newly Observed Domain=false; Internal User Name=false;
	Custom Display Name List=false; Reply-to Address Mismatch=false;
	Targeted Threat Dictionary=false;
	Mimecast Threat Dictionary=false; Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 2.84 on 10.11.54.1
X-loop: blinux-list@redhat.com
Cc: Linux for blind general discussion <blinux-list@redhat.com>,
	debian-accessibility@lists.debian.org, slint@freelists.org,
	orca-list <orca-list@gnome.org>
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

Very sad to hear of his passing, Didier. I knew him through W3C work. He
was indeed a capable technologist and a most gentle soul. His passing is
indeed a loss.

Best,

Janina

Orca screen reader developers writes:
> Hi,
> 
> I have been sad to learn that we lost Jos from his web page:
> http://jlemmens.nl/
> http://ta.twi.tudelft.nl/dv/staff/lemmens/jlemmens.nl/
> 
> Quote from this page:
> 
> --
> Update November 9, 2021: I am very sorry to inform you that Jos quietly passed
> away this morning.
> He will be remembered as our own dear, clever, little "Stephen Hawking".
> His brother Kees and other family.
> 
> His VPS server was closed recently and this website is now temporarily hosted at
> the TU Delft.
> --
> 
> Los was the developer of eBook-speaker and daisy-player, both included in Slint.
> 
> I had communicated with him not so long ago.
> 
> I will miss him.
> 
> Best regards,
> 
> Didier
> 
> _______________________________________________
> orca-list mailing list
> orca-list@gnome.org
> https://mail.gnome.org/mailman/listinfo/orca-list
> Orca wiki: https://wiki.gnome.org/Projects/Orca
> Orca documentation: https://help.gnome.org/users/orca/stable/
> GNOME Universal Access guide: https://help.gnome.org/users/gnome-help/stable/a11y.html

-- 

Janina Sajka
(she/her/hers)
https://linkedin.com/in/jsajka

Linux Foundation Fellow
Executive Chair, Accessibility Workgroup:	http://a11y.org

The World Wide Web Consortium (W3C), Web Accessibility Initiative (WAI)
Co-Chair, Accessible Platform Architectures	http://www.w3.org/wai/apa

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://listman.redhat.com/mailman/listinfo/blinux-list

