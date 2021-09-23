Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	by mail.lfdr.de (Postfix) with ESMTP id 8EC8C4163A0
	for <lists+blinux-list@lfdr.de>; Thu, 23 Sep 2021 18:50:26 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1632415825;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=x4vt53DKW2rG/ykm3jQF0q3BM6bbW4swJR0k8GxwYK8=;
	b=FCaLrMjgBoTZqXPHbFV28+JJ5ouoaTRwHoNqJz4zb70zzufQtUQGD6hBKawApTbIIqPQff
	kdteTXKhqA6c0RJ0AfOo/ylpuBO+f5xv8+VfjqiQZBYdvUyOh5uqqTOOyGfW7Kze9RXRV5
	geu2RaNoB23sxpLLVD7FEV0VfJ2PEQo=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-252-QpOVPXp8Pxy7C_GPXCrRVQ-1; Thu, 23 Sep 2021 12:50:23 -0400
X-MC-Unique: QpOVPXp8Pxy7C_GPXCrRVQ-1
Received: from smtp.corp.redhat.com (int-mx04.intmail.prod.int.phx2.redhat.com [10.5.11.14])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id A61A31006AA8;
	Thu, 23 Sep 2021 16:50:18 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 01FEB5D9CA;
	Thu, 23 Sep 2021 16:50:16 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 255F3180598A;
	Thu, 23 Sep 2021 16:50:09 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx05.intmail.prod.int.rdu2.redhat.com
	[10.11.54.5])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 18NGlk6j011068 for <blinux-list@listman.util.phx.redhat.com>;
	Thu, 23 Sep 2021 12:47:46 -0400
Received: by smtp.corp.redhat.com (Postfix)
	id 517B614194C; Thu, 23 Sep 2021 16:47:46 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast02.extmail.prod.ext.rdu2.redhat.com [10.11.55.18])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 4B07314E771
	for <blinux-list@redhat.com>; Thu, 23 Sep 2021 16:47:35 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-1.mimecast.com [207.211.31.81])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
	bits)) (No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 212F6800159
	for <blinux-list@redhat.com>; Thu, 23 Sep 2021 16:47:33 +0000 (UTC)
Received: from mail-qt1-f177.google.com (mail-qt1-f177.google.com
	[209.85.160.177]) (Using TLS) by relay.mimecast.com with ESMTP id
	us-mta-371-pAxbtNS1NW2WLhK2p88Rmg-1; Thu, 23 Sep 2021 12:47:31 -0400
X-MC-Unique: pAxbtNS1NW2WLhK2p88Rmg-1
Received: by mail-qt1-f177.google.com with SMTP id t2so260959qtx.8
	for <blinux-list@redhat.com>; Thu, 23 Sep 2021 09:47:31 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20210112;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=Knk6qR+HZ00ZHxj943PBlPqqLYJUYJzyJMJIWNFpiKQ=;
	b=gPIDe2IGolHvoKU0RaECE0/IUmqpwvzdWrX9+VBs83YSSeecD0jHAVobMH0y9j8+UG
	g3wJVteh02x6i3XYlhzW9BeeSnIWHc/cqdC2nKUFOcEzl3d4xOPxyi0ho1K8g/98emtB
	dizF/NCrCLQpvXqkFXd1Z1tpnkagnYzj1OBq4zY8cFH3itQ5yXXeIKp2/JWoZoSNzlyH
	oC6Ra7mca8MyJ3WeZpHkGG+1l+QojwDZWX15a2BNbykmr9NIKtC5K4BMmXP2xgdQKtvg
	cSa+M1dfTRj2/NFuekbcxfl6zdVQnRKgeZun4EqOQ2lnesE1dUtw2gwE/flJPyivGgSv
	OSCg==
X-Gm-Message-State: AOAM531F0ImM2s6ZO8jiWalnL2aPobov1sWAHjdzhexHtwGjsbvWCqQv
	idfCHUimTizerl1I34lvlbxc5PM4+ecDcPV5T9OshI7kgpg=
X-Google-Smtp-Source: ABdhPJxYMvmnUyuox090qn0TFrUJ+adCcxY5YuThz71ttdLF+onYKm70tPoSTm4xRCZzxKG7taoPr107oiQanPCeCoo=
X-Received: by 2002:ac8:5c91:: with SMTP id r17mr5661444qta.184.1632415650955; 
	Thu, 23 Sep 2021 09:47:30 -0700 (PDT)
MIME-Version: 1.0
Received: by 2002:ad4:5548:0:0:0:0:0 with HTTP; Thu, 23 Sep 2021 09:47:30
	-0700 (PDT)
In-Reply-To: <A4E5D55F-F90B-4069-9848-C21414621974@hxcore.ol>
References: <CAO2sX33aWL4__RHq2RZkFW+PimVh7Z7g=_TS1wudsG7sAeiBQA@mail.gmail.com>
	<A4E5D55F-F90B-4069-9848-C21414621974@hxcore.ol>
Date: Thu, 23 Sep 2021 16:47:30 +0000
Message-ID: <CAO2sX31tRhsEv_p2-Zp4b=B5GVWNtoariLePU-DQ=ngaT-OJuA@mail.gmail.com>
Subject: Re: [raspberry-vi] Re: Possibly Off-Topic: Android Smartphone
	Recommendations.
To: raspberry-vi@freelists.org
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
Cc: Linux for blind general discussion <blinux-list@redhat.com>
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
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.14
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

Okay, talked with someone from my carrier yesterday afternoon...

The good news is that, with my current plan, I can cancel the unused
line and add a new line to get a ~800 discount on the new smartphone,
Won't make the phone free(still have to pay sales tax on the monthly
finance payments before the rebate, but it does remove the price tag
as a limiting factor.

The bad news, all Pixel models are out of stock and listed as end of
life in my carrier's system... Not sure what that means for the Pixel
5a(Google informs me it's only been out for about a month, but no idea
if my carrier is just slow to pick up new models or just doesn't plan
to add it to their line-up)...

So, I hear Samsung is #2 in Android Accessibility, and I've had good
experiences with their devices in the past(I even had one of their
budget smartphones back in the Android 2.2 days when I had a working
eye). So any tips on which Samsung models are worth a try versus which
to avoid?

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://listman.redhat.com/mailman/listinfo/blinux-list

