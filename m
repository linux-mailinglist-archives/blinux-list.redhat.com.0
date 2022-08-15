Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.129.124])
	by mail.lfdr.de (Postfix) with ESMTPS id E6CA559462A
	for <lists+blinux-list@lfdr.de>; Tue, 16 Aug 2022 01:02:34 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1660604553;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=Qol2OQ5x5MJhgUBCTdWF59fITY8LQzy7WNzzCBNiVxI=;
	b=iSlcr//5Y/sUXw8UeCtzuANhI9Xh3DZVY07AYhdFRCQjb3TS7vtWpthBtcXs7EohrTpVdW
	stZGwD+/334Lv3a1PNOCQeLM2zfAX5+2tKkGzmVUom4Xqqx/Tl2yTgz8fZvjVaeHaXjxJu
	nO55OCPiku0huB2fo8PoiCKQiySmVoE=
Received: from mimecast-mx02.redhat.com (mimecast-mx02.redhat.com
 [66.187.233.88]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-581-e9RndX2sNai2E1G4NKOsIA-1; Mon, 15 Aug 2022 19:02:31 -0400
X-MC-Unique: e9RndX2sNai2E1G4NKOsIA-1
Received: from smtp.corp.redhat.com (int-mx04.intmail.prod.int.rdu2.redhat.com [10.11.54.4])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id BC3FF811E80;
	Mon, 15 Aug 2022 23:02:29 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (unknown [10.30.29.100])
	by smtp.corp.redhat.com (Postfix) with ESMTP id 8173B2026D64;
	Mon, 15 Aug 2022 23:02:29 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (localhost [IPv6:::1])
	by mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (Postfix) with ESMTP id E95AB1940353;
	Mon, 15 Aug 2022 23:02:28 +0000 (UTC)
Delivered-To: blinux-list@listman.corp.redhat.com
Delivered-To: blinux-list@redhat.com
Mime-Version: 1.0 (Mac OS X Mail 13.4 \(3608.120.23.2.7\))
Subject: Re: Impossible to know sender info
In-Reply-To: <mailman.770.1660603181.10501.blinux-list@redhat.com>
Date: Mon, 15 Aug 2022 16:02:18 -0700
References: <mailman.708.1660592109.10505.blinux-list@redhat.com>
 <mailman.703.1660592414.10507.blinux-list@redhat.com>
 <mailman.770.1660603181.10501.blinux-list@redhat.com>
To: blinux-list@redhat.com
Message-ID: <mailman.771.1660604547.10501.blinux-list@redhat.com>
From: Linux for blind general discussion <blinux-list@redhat.com>
X-BeenThere: blinux-list@redhat.com
X-Mailman-Version: 2.1.29
Precedence: list
List-Id: Linux for blind general discussion <blinux-list.redhat.com>
List-Unsubscribe: <https://listman.redhat.com/mailman/options/blinux-list>,
 <mailto:blinux-list-request@redhat.com?subject=unsubscribe>
List-Archive: <http://listman.redhat.com/archives/blinux-list/>
List-Post: <mailto:blinux-list@redhat.com>
List-Help: <mailto:blinux-list-request@redhat.com?subject=help>
List-Subscribe: <https://listman.redhat.com/mailman/listinfo/blinux-list>,
 <mailto:blinux-list-request@redhat.com?subject=subscribe>
Reply-To: blinux-list@redhat.com
Errors-To: blinux-list-bounces@redhat.com
Sender: "Blinux-list" <blinux-list-bounces@redhat.com>
X-Scanned-By: MIMEDefang 2.78 on 10.11.54.4
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

> On Aug 15, 2022, at 15:35, Joel Roth wrote:
> 
> ... If we're already hacking the From: field, how about
> including the original name e.g
> JustSomeGuy via Blinux <blinux-list@redhat.com> ?
> 
> If the MTA is postfix, it could be just the matter
> of writing a regex to do this. (Raises hand to volunteer)

This is a great offer; I hope you can get permission to do it.
FYI, I think the version is fairly old, so your mileage may vary...

- Rich Morin

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://listman.redhat.com/mailman/listinfo/blinux-list

