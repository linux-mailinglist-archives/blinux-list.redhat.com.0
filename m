Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.129.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 4B4C4516677
	for <lists+blinux-list@lfdr.de>; Sun,  1 May 2022 19:00:13 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1651424412;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=TIdVDa7hRbd++sPxorxNIMkAl55Lo5bstl6/PtHyaDc=;
	b=achyN5p8tXc6vwQquVFQHdHFm3Sfd7kTov6c5EzFrdwDXFLthE8P+KKkHDx5m6Z8QIDzFY
	gA/NaPmMjn4VuYx2uz3dpoVXGjGAZVsT+0Ux/pupyOyeBlBdAS+1djGprtRPynLaE9ZUV7
	L4NyP/0H+FH3tqL4SKURrlwVWBhxEXA=
Received: from mimecast-mx02.redhat.com (mimecast-mx02.redhat.com
 [66.187.233.88]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-649-HjFdnZoINK2Y9X1GD2y8Cw-1; Sun, 01 May 2022 13:00:08 -0400
X-MC-Unique: HjFdnZoINK2Y9X1GD2y8Cw-1
Received: from smtp.corp.redhat.com (int-mx08.intmail.prod.int.rdu2.redhat.com [10.11.54.8])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 58028833961;
	Sun,  1 May 2022 17:00:05 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (unknown [10.30.29.100])
	by smtp.corp.redhat.com (Postfix) with ESMTP id A5655C52C82;
	Sun,  1 May 2022 17:00:04 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (localhost [IPv6:::1])
	by mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (Postfix) with ESMTP id BE15F1947063;
	Sun,  1 May 2022 17:00:03 +0000 (UTC)
Delivered-To: blinux-list@listman.corp.redhat.com
Delivered-To: blinux-list@redhat.com
Date: Sun, 1 May 2022 12:58:54 -0400
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.8.0
Subject: Re: Getting Linux in to the hands of those in need.
To: Linux for blind general discussion <blinux-list@redhat.com>
References: <mailman.12273.1651423399.111201.blinux-list@redhat.com>
In-Reply-To: <mailman.12273.1651423399.111201.blinux-list@redhat.com>
Message-ID: <mailman.12052.1651424402.111207.blinux-list@redhat.com>
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
X-Scanned-By: MIMEDefang 2.85 on 10.11.54.8
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"

Raspberry Pi 400 would be my recommendation. It doesn't have built-in 
audio, but you can justt plug in USB audio and a pair of headphones or 
speakers. I think it should also plug into any HDMI compatible TV or 
computer monitor as well, although HDMI audio tends to be a bit flaky at 
least on some devices. It's not as DIY as most of the other Raspberry Pi 
offerings, so it is much better for new users. Another option is the 
Pinebook Pro, which is already a complete laptop solution, assuming they 
have them in stock and available for purchase. You probably would need a 
larger eMMC flash chip for it, but it should run faster than the 
Raspberry Pi 400, simply because it's using eMMC instead of relying 
primarily on MicroSD, which although it is much faster than it once was, 
can still get bogged down easily with frequent i/o operations. Just my 
thoughts, I hope they help.

~Kyle

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://listman.redhat.com/mailman/listinfo/blinux-list

