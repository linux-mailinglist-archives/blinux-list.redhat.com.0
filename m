Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.129.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 3BB065BA1BA
	for <lists+blinux-list@lfdr.de>; Thu, 15 Sep 2022 22:09:29 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1663272568;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=TRFIkl427C3YhE4gphfLpyS9QSwOFrLwzHDKDDs/r9w=;
	b=ZwYhMFVOHdKrYzcUx+j8ZTbY4sWk+SMSXI1/OsKthiaJ/jS1z8cD2iSdA1q103cW05Wp1o
	yTGxtUlHcKmGwwtpAd9FQXDYGECgSNpG83ZsLNkWEIM8bnjvbYPzr6pFJHsYiGMKAydbzN
	Wq03+vKvgg4CncmrGsEfgS+9VGIGPMs=
Received: from mimecast-mx02.redhat.com (mimecast-mx02.redhat.com
 [66.187.233.88]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-657-LOv8O9yHM_q79KTNfETJww-1; Thu, 15 Sep 2022 16:09:26 -0400
X-MC-Unique: LOv8O9yHM_q79KTNfETJww-1
Received: from smtp.corp.redhat.com (int-mx06.intmail.prod.int.rdu2.redhat.com [10.11.54.6])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id BA59285A583;
	Thu, 15 Sep 2022 20:09:24 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (unknown [10.30.29.100])
	by smtp.corp.redhat.com (Postfix) with ESMTP id BE1952166B26;
	Thu, 15 Sep 2022 20:09:16 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (localhost [IPv6:::1])
	by mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (Postfix) with ESMTP id 44A2D1946597;
	Thu, 15 Sep 2022 20:09:16 +0000 (UTC)
Delivered-To: blinux-list@listman.corp.redhat.com
Delivered-To: blinux-list@redhat.com
DKIM-Filter: OpenDKIM Filter v2.11.0 dalen.lamasti.net 7C76F14C1604
Date: Thu, 15 Sep 2022 21:59:15 +0200
To: Linux for blind general discussion <blinux-list@redhat.com>
Subject: Re: Daisy-player
References: <mailman.8282.1662926405.10503.blinux-list@redhat.com>
 <mailman.7882.1662933308.10505.blinux-list@redhat.com>
 <mailman.8693.1663096733.10503.blinux-list@redhat.com>
 <mailman.8220.1663098144.10507.blinux-list@redhat.com>
 <mailman.8615.1663132135.10499.blinux-list@redhat.com>
 <mailman.8303.1663139548.10507.blinux-list@redhat.com>
 <mailman.8402.1663143347.10505.blinux-list@redhat.com>
 <mailman.8741.1663173607.10505.blinux-list@redhat.com>
MIME-Version: 1.0
In-Reply-To: <mailman.8741.1663173607.10505.blinux-list@redhat.com>
X-Spam-Status: No, score=-3.1 required=5.0 tests=ALL_TRUSTED,BAYES_00,
 DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,
 T_SCC_BODY_TEXT_LINE autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on dalen.lamasti.net
Message-ID: <mailman.436.1663272555.6079.blinux-list@redhat.com>
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
X-Scanned-By: MIMEDefang 3.1 on 10.11.54.6
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Disposition: inline
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

[Samuel]

> > > It's probably missing the use of pkg-config. What does
> > > 
> > > pkg-config --cflags sox
> > > 
> > > emit?
> > 
> > -I/usr/include/sox
> 
> Ok, that's why. I have now fixed ./configure into using pkg-config, that
> should fix such kind of bug.

Thanks a lot. Works perfectly.

Lars

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://listman.redhat.com/mailman/listinfo/blinux-list

