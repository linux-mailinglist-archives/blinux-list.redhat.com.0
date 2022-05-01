Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.129.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 52C0B5167CB
	for <lists+blinux-list@lfdr.de>; Sun,  1 May 2022 22:29:30 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1651436969;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=j6n75K29qeicrazyXEO7RcuA2P3sx5blOnJ47bXGpck=;
	b=N5z+mpz3dmhCda8w7kxuppy/vvVEQaiSGgmf1TO89yudxOwX5m1CzWujcjWYdv50DREylb
	HGWaqQpjM07L7Gc/kdhwU/AAmzXWkjstPWP0YjYtWlf00DuRhdVweXgq8woIdrCpRkCY2v
	A+4SFPUPM+O0/4tHmFOzx3/bvDkAkIs=
Received: from mimecast-mx02.redhat.com (mx3-rdu2.redhat.com
 [66.187.233.73]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-595-lUa_Jg0sM-2l75PaMIdZ1A-1; Sun, 01 May 2022 16:29:26 -0400
X-MC-Unique: lUa_Jg0sM-2l75PaMIdZ1A-1
Received: from smtp.corp.redhat.com (int-mx09.intmail.prod.int.rdu2.redhat.com [10.11.54.9])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id E839F1C0515B;
	Sun,  1 May 2022 20:29:24 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com [10.30.29.100])
	by smtp.corp.redhat.com (Postfix) with ESMTP id C12EB464DD2;
	Sun,  1 May 2022 20:29:24 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (localhost [IPv6:::1])
	by mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (Postfix) with ESMTP id E90561947063;
	Sun,  1 May 2022 20:29:23 +0000 (UTC)
Delivered-To: blinux-list@listman.corp.redhat.com
Delivered-To: blinux-list@redhat.com
Date: Sun, 1 May 2022 16:29:03 -0400
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.8.0
Subject: Re: Pinebook Pro.
To: Linux for blind general discussion <blinux-list@redhat.com>
References: <mailman.12282.1651435313.111210.blinux-list@redhat.com>
In-Reply-To: <mailman.12282.1651435313.111210.blinux-list@redhat.com>
Message-ID: <mailman.12533.1651436963.111206.blinux-list@redhat.com>
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
X-Scanned-By: MIMEDefang 2.85 on 10.11.54.9
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"

The Pinebook Pro does already come with Linux installed on it, but I 
think it's a KDE something, and that isn't working with the Orca screen 
reader at this time, that's still a work in progress. But I do think 
it's running some kind of Ubuntu derivative, so you could just get the 
packages installed that you need probably. Regarding the form factor, 
it's a laptop about the size of a Chromebook. These do seem to be hard 
to find though, so keep watching for them to become available if they've 
run out. Looks like they will have some at the end of next month from 
what I'm reading.

https://pine64.com/product/14%e2%80%b3-pinebook-pro-linux-laptop-ansi-us-keyboard/

https://pine64.com/product/14%e2%80%b3-pinebook-pro-linux-laptop-iso-uk-keyboard/

~Kyle

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://listman.redhat.com/mailman/listinfo/blinux-list

