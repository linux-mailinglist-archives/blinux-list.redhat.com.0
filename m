Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 2BCE051783B
	for <lists+blinux-list@lfdr.de>; Mon,  2 May 2022 22:35:26 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1651523725;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=cPpMXgCPeSBaqueQlsa7ca8/PyrtnWfSfio+FaNHThE=;
	b=VegPNrGrwTEaRTOLQ5vp+wzod5dRhwHEuW0up5az/JrVKbFkIyKALm60ZOtCenYFaI1OUj
	WMraLz5RA8BsNN8qsqfg2BEMoxJG4a1bfj+b+1qzLc5aolF+fRfkqA+sZev6ZtPpgSIH3L
	CjHLoOlYf7XoX+pZr/4z3uQfKa0gj+A=
Received: from mimecast-mx02.redhat.com (mimecast-mx02.redhat.com
 [66.187.233.88]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-110-FL88sHwSPpifTNjdToVpyg-1; Mon, 02 May 2022 16:35:21 -0400
X-MC-Unique: FL88sHwSPpifTNjdToVpyg-1
Received: from smtp.corp.redhat.com (int-mx03.intmail.prod.int.rdu2.redhat.com [10.11.54.3])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 17E7C811E75;
	Mon,  2 May 2022 20:35:20 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (unknown [10.30.29.100])
	by smtp.corp.redhat.com (Postfix) with ESMTP id 10B81111E3E6;
	Mon,  2 May 2022 20:35:18 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (localhost [IPv6:::1])
	by mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (Postfix) with ESMTP id 9C6481947055;
	Mon,  2 May 2022 20:35:17 +0000 (UTC)
Delivered-To: blinux-list@listman.corp.redhat.com
Delivered-To: blinux-list@redhat.com
Mime-Version: 1.0 (Mac OS X Mail 16.0 \(3696.80.82.1.1\))
Subject: Re: Getting Linux in to the hands of those in need.
Date: Mon, 2 May 2022 15:35:12 -0500
References: <mailman.12273.1651423399.111201.blinux-list@redhat.com>
 <mailman.12052.1651424402.111207.blinux-list@redhat.com>
To: blinux-list@redhat.com
In-Reply-To: <mailman.12052.1651424402.111207.blinux-list@redhat.com>
Message-ID: <mailman.12656.1651523717.111202.blinux-list@redhat.com>
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
X-Scanned-By: MIMEDefang 2.78 on 10.11.54.3
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

I have a 400 and like it.

> On May 1, 2022, at 11:58, Linux for blind general discussion <blinux-list@redhat.com> wrote:
> 
> Raspberry Pi 400 would be my recommendation. It doesn't have built-in audio, but you can justt plug in USB audio and a pair of headphones or speakers. I think it should also plug into any HDMI compatible TV or computer monitor as well, although HDMI audio tends to be a bit flaky at least on some devices. It's not as DIY as most of the other Raspberry Pi offerings, so it is much better for new users. Another option is the Pinebook Pro, which is already a complete laptop solution, assuming they have them in stock and available for purchase. You probably would need a larger eMMC flash chip for it, but it should run faster than the Raspberry Pi 400, simply because it's using eMMC instead of relying primarily on MicroSD, which although it is much faster than it once was, can still get bogged down easily with frequent i/o operations. Just my thoughts, I hope they help.
> 
> ~Kyle
> 
> _______________________________________________
> Blinux-list mailing list
> Blinux-list@redhat.com
> https://listman.redhat.com/mailman/listinfo/blinux-list
> 

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://listman.redhat.com/mailman/listinfo/blinux-list

