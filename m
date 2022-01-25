Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.129.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 9818649BED4
	for <lists+blinux-list@lfdr.de>; Tue, 25 Jan 2022 23:46:34 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1643150793;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=q92J5jAuEx/igQGZCoelEV8hl1JTzYlNnykmXT4WyR0=;
	b=MAI/WG03O3fBGLmQORvOn0flNIqXWzYRludBRdkgfh7dtglpgfkoj3XVEVsrG3lphFWpEZ
	LpQ9BPVKcO7GXU7vpPvpOwXnThhjLDB7y4rAiyXiORypfHh0cfQixcmXFY3kfRJZhTAXtS
	5vU2RsqgFChMqmqPNXLpr2D54AlwGdA=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-509-mfTUO-b9OHiLNyY9597cGA-1; Tue, 25 Jan 2022 17:46:30 -0500
X-MC-Unique: mfTUO-b9OHiLNyY9597cGA-1
Received: from smtp.corp.redhat.com (int-mx03.intmail.prod.int.phx2.redhat.com [10.5.11.13])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 5D678180CBFE;
	Tue, 25 Jan 2022 22:46:24 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id E29B85E480;
	Tue, 25 Jan 2022 22:46:21 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 24A161809CB8;
	Tue, 25 Jan 2022 22:46:13 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx02.intmail.prod.int.rdu2.redhat.com
	[10.11.54.2])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 20PMk6w3002343 for <blinux-list@listman.util.phx.redhat.com>;
	Tue, 25 Jan 2022 17:46:06 -0500
Received: by smtp.corp.redhat.com (Postfix)
	id 3E74240885A0; Tue, 25 Jan 2022 22:46:06 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast05.extmail.prod.ext.rdu2.redhat.com [10.11.55.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 3AAFE40885A6
	for <blinux-list@redhat.com>; Tue, 25 Jan 2022 22:46:06 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-2.mimecast.com [207.211.31.81])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
	bits)) (No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 2595B803C9F
	for <blinux-list@redhat.com>; Tue, 25 Jan 2022 22:46:06 +0000 (UTC)
Received: from pb-smtp20.pobox.com (pb-smtp20.pobox.com [173.228.157.52]) by
	relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.2,
	cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
	us-mta-499-rJMMZAwRMViiBxZJ_YBsGA-1; Tue, 25 Jan 2022 17:46:04 -0500
X-MC-Unique: rJMMZAwRMViiBxZJ_YBsGA-1
Received: from pb-smtp20.pobox.com (unknown [127.0.0.1])
	by pb-smtp20.pobox.com (Postfix) with ESMTP id 3814B1821B3
	for <blinux-list@redhat.com>; Tue, 25 Jan 2022 17:40:11 -0500 (EST)
	(envelope-from joelz@pobox.com)
Received: from pb-smtp20.sea.icgroup.com (unknown [127.0.0.1])
	by pb-smtp20.pobox.com (Postfix) with ESMTP id 2FE1D1821B2
	for <blinux-list@redhat.com>; Tue, 25 Jan 2022 17:40:11 -0500 (EST)
	(envelope-from joelz@pobox.com)
Received: from sprite (unknown [66.8.171.137])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by pb-smtp20.pobox.com (Postfix) with ESMTPSA id 920CF1821B1
	for <blinux-list@redhat.com>; Tue, 25 Jan 2022 17:40:08 -0500 (EST)
	(envelope-from joelz@pobox.com)
Received: from jroth by sprite with local (Exim 4.94.2)
	(envelope-from <joelz@pobox.com>) id 1nCUTn-0003hV-Jq
	for blinux-list@redhat.com; Tue, 25 Jan 2022 12:39:59 -1000
Date: Tue, 25 Jan 2022 12:39:58 -1000
To: blinux-list@redhat.com
Subject: Re: Configuring ratpoison
Message-ID: <20220125223958.mrokwwfhnl4uzxco@sprite>
References: <47701df7-e208-a9dc-b03d-2aa6d6a74b03@gmail.com>
MIME-Version: 1.0
In-Reply-To: <47701df7-e208-a9dc-b03d-2aa6d6a74b03@gmail.com>
X-Pobox-Relay-ID: BFAF149A-7E2F-11EC-B5BF-C85A9F429DF0-04347428!pb-smtp20.pobox.com
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

Brandt wrote:
> I installed ratpoison on my Slint system, and don't have either
> ~/.ratpoisonrc or /etc/ratpoison.

How is ratpoison working out for you? I had previously used
stumpwm, said to be the successor of ratpoison. i3 is
another tiling window manager. 

-- 
Joel Roth

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://listman.redhat.com/mailman/listinfo/blinux-list

