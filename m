Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	by mail.lfdr.de (Postfix) with ESMTPS id C0FC7479B54
	for <lists+blinux-list@lfdr.de>; Sat, 18 Dec 2021 15:26:58 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1639837617;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=069PfN/65OKKKPp0BbiRu+az8U8FiEx7MdEpL6RGnzA=;
	b=SlSx+LPIGgN+yA2LCiFM7dxKMBhpWsJ0S/lPFqt8JBSIDFW8+KVLPOttYvq5V/YDoT1ed0
	mkqLjtxbU1fUbIQcylSn0hXndmS1CdSrWdk7T8Xqt4Sl47qgft4CNMAF+ZPW1P1hFmkwIz
	KRCCAz7ESK0oU5p3JwNguLpQCPbE66g=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-312-7xkI1MwhNaOyxtn_61fSiQ-1; Sat, 18 Dec 2021 09:26:54 -0500
X-MC-Unique: 7xkI1MwhNaOyxtn_61fSiQ-1
Received: from smtp.corp.redhat.com (int-mx06.intmail.prod.int.phx2.redhat.com [10.5.11.16])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 9FEC61853026;
	Sat, 18 Dec 2021 14:26:50 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 9FC165C232;
	Sat, 18 Dec 2021 14:26:49 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 99C381809CB8;
	Sat, 18 Dec 2021 14:26:47 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx06.intmail.prod.int.rdu2.redhat.com
	[10.11.54.6])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 1BIEQhlb031917 for <blinux-list@listman.util.phx.redhat.com>;
	Sat, 18 Dec 2021 09:26:43 -0500
Received: by smtp.corp.redhat.com (Postfix)
	id 7951D2166B18; Sat, 18 Dec 2021 14:26:43 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast10.extmail.prod.ext.rdu2.redhat.com [10.11.55.26])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 747AE2166B4F
	for <blinux-list@redhat.com>; Sat, 18 Dec 2021 14:26:40 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-2.mimecast.com [207.211.31.81])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
	bits)) (No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 2747C1C04B47
	for <blinux-list@redhat.com>; Sat, 18 Dec 2021 14:26:40 +0000 (UTC)
Received: from mailbackend.panix.com (mailbackend.panix.com [166.84.1.89])
	by relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.2,
	cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
	us-mta-225-vdudDnVlN8aUvW21HI-giA-1; Sat, 18 Dec 2021 09:26:38 -0500
X-MC-Unique: vdudDnVlN8aUvW21HI-giA-1
Received: from panix1.panix.com (panix1.panix.com [166.84.1.1])
	by mailbackend.panix.com (Postfix) with ESMTP id 4JGSpQ0BJBz2q5r
	for <blinux-list@redhat.com>; Sat, 18 Dec 2021 09:26:38 -0500 (EST)
Received: by panix1.panix.com (Postfix, from userid 20712)
	id 4JGSpP6dtxzcbc; Sat, 18 Dec 2021 09:26:37 -0500 (EST)
Received: from localhost (localhost [127.0.0.1])
	by panix1.panix.com (Postfix) with ESMTP id 4JGSpP6FhHzcbC
	for <blinux-list@redhat.com>; Sat, 18 Dec 2021 09:26:37 -0500 (EST)
Date: Sat, 18 Dec 2021 09:26:37 -0500
To: Linux for blind general discussion <blinux-list@redhat.com>
Subject: Re: Webmail vs client question
In-Reply-To: <b320bf55-86cf-a1ab-8eed-7a42963f9c7e@gmail.com>
Message-ID: <alpine.NEB.2.23.451.2112180925010.7520@panix1.panix.com>
References: <b320bf55-86cf-a1ab-8eed-7a42963f9c7e@gmail.com>
MIME-Version: 1.0
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
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.16
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

email compressors exist, one of them I had used a while back had soup in
its name.  Another one was yarn but support for that one disappeared long
ago.


On Sat, 18 Dec 2021, Linux for blind general discussion wrote:

> So this came to mind earlier, and I'm wondering if I can do anything about it,
> and it was prompted by an idea I had to save disk space.
>
>
> I've read up on the difference with POP3 vs IMAP, and I like how
> Seamonkey/Thunderbird/Claws/etc handle mail in a much easier to read format
> than webmail interfaces.
>
> But I'm wondering if there's a middle ground, if I can have a client that lets
> me access my mail, but doesn't clutter up my disk? I was told both POP3 and
> IMAP eat up disk space on a computer after all, and I'm both not sure how true
> that is, and wondering if I can do anything to mitigate that?
>
> _______________________________________________
> Blinux-list mailing list
> Blinux-list@redhat.com
> https://listman.redhat.com/mailman/listinfo/blinux-list
>
>

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://listman.redhat.com/mailman/listinfo/blinux-list

