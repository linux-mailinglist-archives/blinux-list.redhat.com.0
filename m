Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 011F64AEF6E
	for <lists+blinux-list@lfdr.de>; Wed,  9 Feb 2022 11:39:52 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1644403192;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=45LH9s34oznpVK+JNmyJG0W2vKds1UZGxsf3AXU316A=;
	b=aCZO7ZXUFQGo1riptEEtfeQsKpN8chBBnfJpQoT7o2ASzmSYBV8bMghanuhH2z6rPCdTD6
	Qbrrg1x0uJzeawpKzRTAKMWym+Pb7R18+54P3irBdQ1z/T8+BsgVHt0K4i58OvwyldOiII
	wo4PLIIoZC8UsKGXDfAJZ6zPr1L1Y90=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-484-_biGP9ovPRCWxGPUcK8qcw-1; Wed, 09 Feb 2022 05:39:50 -0500
X-MC-Unique: _biGP9ovPRCWxGPUcK8qcw-1
Received: from smtp.corp.redhat.com (int-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.11])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id B3EDB1091DA0;
	Wed,  9 Feb 2022 10:39:46 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id D157566E2F;
	Wed,  9 Feb 2022 10:39:45 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 8BB514BB7C;
	Wed,  9 Feb 2022 10:39:44 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx09.intmail.prod.int.rdu2.redhat.com
	[10.11.54.9])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 219AdeiI030384 for <blinux-list@listman.util.phx.redhat.com>;
	Wed, 9 Feb 2022 05:39:40 -0500
Received: by smtp.corp.redhat.com (Postfix)
	id 4F82C492D1B; Wed,  9 Feb 2022 10:39:40 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast04.extmail.prod.ext.rdu2.redhat.com [10.11.55.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 4B6E6492D18
	for <blinux-list@redhat.com>; Wed,  9 Feb 2022 10:39:40 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-1.mimecast.com [205.139.110.61])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 32BFA1066558
	for <blinux-list@redhat.com>; Wed,  9 Feb 2022 10:39:40 +0000 (UTC)
Received: from pb-smtp2.pobox.com (pb-smtp2.pobox.com [64.147.108.71]) by
	relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.2,
	cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
	us-mta-596-CoZQc6mPMaedY8G-0k135w-1; Wed, 09 Feb 2022 05:39:38 -0500
X-MC-Unique: CoZQc6mPMaedY8G-0k135w-1
Received: from pb-smtp2.pobox.com (unknown [127.0.0.1])
	by pb-smtp2.pobox.com (Postfix) with ESMTP id 2F8B3F8DCA
	for <blinux-list@redhat.com>; Wed,  9 Feb 2022 05:36:53 -0500 (EST)
	(envelope-from joelz@pobox.com)
Received: from pb-smtp2.nyi.icgroup.com (unknown [127.0.0.1])
	by pb-smtp2.pobox.com (Postfix) with ESMTP id 17A9DF8DC8
	for <blinux-list@redhat.com>; Wed,  9 Feb 2022 05:36:53 -0500 (EST)
	(envelope-from joelz@pobox.com)
Received: from sprite (unknown [107.181.177.182])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by pb-smtp2.pobox.com (Postfix) with ESMTPSA id 5D8AFF8DC6
	for <blinux-list@redhat.com>; Wed,  9 Feb 2022 05:36:52 -0500 (EST)
	(envelope-from joelz@pobox.com)
Received: from jroth by sprite with local (Exim 4.94.2)
	(envelope-from <joelz@pobox.com>) id 1nHkKm-0005FR-E9
	for blinux-list@redhat.com; Wed, 09 Feb 2022 00:36:24 -1000
Date: Wed, 9 Feb 2022 00:36:24 -1000
To: blinux-list@redhat.com
Subject: Re: De-arrowing my system...how easy it is?
Message-ID: <20220209103624.dpjt6r3fnjuil7ga@sprite>
References: <7c4915b9-ca3a-9c1a-1132-b9896e94cbaa@gmail.com>
	<20220208193544.19898f78@bigbox.attlocal.net>
	<12bbdceb-725c-2656-4958-963f46426ed8@gmail.com>
MIME-Version: 1.0
In-Reply-To: <12bbdceb-725c-2656-4958-963f46426ed8@gmail.com>
X-Pobox-Relay-ID: 31B8C422-8994-11EC-9442-CB998F0A682E-04347428!pb-smtp2.pobox.com
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection
	Definition; Similar Internal Domain=false;
	Similar Monitored External Domain=false;
	Custom External Domain=false; Mimecast External Domain=false;
	Newly Observed Domain=false; Internal User Name=false;
	Custom Display Name List=false; Reply-to Address Mismatch=false;
	Targeted Threat Dictionary=false;
	Mimecast Threat Dictionary=false; Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 2.85 on 10.11.54.9
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

On Wed, Feb 09, 2022 at 10:00:18AM +0000, Linux for blind general discussion wrote:
> That's mostly what I'm looking for, hopefully something like that exists for
> Seamonkey. And yes, under X

Under X I use xmodmap and setxkbmap to reassign keys.

https://wiki.archlinux.org/title/Xmodmap

As long as you use some kind of shift key
combination, you can reassign the shifted state of JKLM (for
example Alt-j) to an arrow without disturbing your regular
input.


-- 
Joel Roth

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://listman.redhat.com/mailman/listinfo/blinux-list

