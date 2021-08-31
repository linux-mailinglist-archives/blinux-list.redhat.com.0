Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	by mail.lfdr.de (Postfix) with ESMTP id DD1B53FCF2F
	for <lists+blinux-list@lfdr.de>; Tue, 31 Aug 2021 23:34:53 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1630445692;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=QJeKCeg0cUzQqtfChASrmkU1rd7oRYs1SK/YXCGahmM=;
	b=CmV6Htyxe2lY1tcFCkxgw3H03/xvtcTTh1+3dKI1WpMhPDTjcYcveDfSuH8gTl2Qu1lG4R
	rfL4cZXYfo2l3p1HB6OvXA0paVypWykKJ0xh3KmcEKyLu+Cwr0d12kKD7fFK4U0s69dK9A
	mwUr2o+6iI2BCeOWQu8ECnYoSsT2v48=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-246-6Pqq10f9MvyC45cYt-uNWg-1; Tue, 31 Aug 2021 17:34:51 -0400
X-MC-Unique: 6Pqq10f9MvyC45cYt-uNWg-1
Received: from smtp.corp.redhat.com (int-mx05.intmail.prod.int.phx2.redhat.com [10.5.11.15])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 5592B80198A;
	Tue, 31 Aug 2021 21:34:45 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 1A14C6A915;
	Tue, 31 Aug 2021 21:34:42 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 5EC554BB7B;
	Tue, 31 Aug 2021 21:34:38 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx06.intmail.prod.int.rdu2.redhat.com
	[10.11.54.6])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 17VLX5tI021114 for <blinux-list@listman.util.phx.redhat.com>;
	Tue, 31 Aug 2021 17:33:05 -0400
Received: by smtp.corp.redhat.com (Postfix)
	id 872F42138D1F; Tue, 31 Aug 2021 21:33:05 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast05.extmail.prod.ext.rdu2.redhat.com [10.11.55.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 7F2542138D17
	for <blinux-list@redhat.com>; Tue, 31 Aug 2021 21:33:01 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com
	[205.139.110.120])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 0E77588647F
	for <blinux-list@redhat.com>; Tue, 31 Aug 2021 21:33:01 +0000 (UTC)
Received: from mail-oi1-f181.google.com (mail-oi1-f181.google.com
	[209.85.167.181]) (Using TLS) by relay.mimecast.com with ESMTP id
	us-mta-200-VccNKS57O2mMgTbTNtZHxg-1; Tue, 31 Aug 2021 17:32:58 -0400
X-MC-Unique: VccNKS57O2mMgTbTNtZHxg-1
Received: by mail-oi1-f181.google.com with SMTP id s20so1082409oiw.3
	for <blinux-list@redhat.com>; Tue, 31 Aug 2021 14:32:58 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:from:date:to:subject:in-reply-to:message-id
	:references:mime-version;
	bh=sWng4giIiRuiyWLwz924KkeYBfS7+DyvzgFiQNi246U=;
	b=PLPEMwOHT0KBVbEk+0JtgmBj7m7aAXksrD4Q6aYkAed4cqNobz3/xCJqFY/80YdD+p
	Czhu3Mxq4C/e3kvfTAFN/vPK0f7YIPtGQwnHKNhWerErdPAzPYP9sRT5GIoChLkJZCM+
	lCnZdIH00+NQuZ0PtmB921fNO/8oHLdCmH6cwRWMXAI5rQ/upyK+gTs6T35QdPINHP4E
	FzUL8nO2tsLyri0z6h0fur+yvbbdfu0Cjp04BCFvPnK2fr1wFdRdKYhZwluVmcUUE/tG
	kV0OnrOD7/AXyzBNHnC3DHn2r/17IrfgAG1emNvRnfxAVWjHwNgjcWCkaotj1XeaOK36
	dHJQ==
X-Gm-Message-State: AOAM533HPQW8c6Hu2BhjdP/8dpkUwzpGaorzXyZgVZ7ygjL7upho8+F3
	SpgD+wsCdgZzCpsogRhM0GVqEMctwTg=
X-Google-Smtp-Source: ABdhPJxhXC1f2kjGRpd5B+TpQ8MtxaO/omjuAylpKCy86jFG5Ic+3SU4tN9I1V6p8aU++FQ8R+wDFg==
X-Received: by 2002:a05:6808:997:: with SMTP id
	a23mr5024989oic.11.1630445577516; 
	Tue, 31 Aug 2021 14:32:57 -0700 (PDT)
Received: from debian-hp-laptop.attlocal.net
	([2600:1702:20f0:4420:bb3e:e8fc:1385:4ce])
	by smtp.gmail.com with ESMTPSA id
	l13sm4212484otp.29.2021.08.31.14.32.56 for <blinux-list@redhat.com>
	(version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
	Tue, 31 Aug 2021 14:32:57 -0700 (PDT)
X-Google-Original-From: Matthew Dyer <matthew@gmail.com>
Date: Tue, 31 Aug 2021 17:32:55 -0400 (EDT)
To: Linux for blind general discussion <blinux-list@redhat.com>
Subject: Re: blind-arch findings
In-Reply-To: <alpine.NEB.2.23.451.2108311320240.4235@panix1.panix.com>
Message-ID: <601917c3-21b1-b0c3-d375-925260efb669@gmail.com>
References: <alpine.NEB.2.23.451.2108311320240.4235@panix1.panix.com>
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
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.15
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"

Hi,

Also, by default it uses the lts kirnel and not the latest kernel.  I 
don't think there is a way to fix this.  I think there should be a way to 
chuse which kernel you want, but either way iIt I think it is great for 
soomeone whoo is getting started, but you can get around this drive size 
problem by manually creatting your partitions if you know what you are 
doing, but I think you should bwe able to just use the remaining space by 
default.

Matthew



On Tue, 31 Aug 2021, Linux for blind general discussion wrote:

> It can't do an install for a command line so it is necessary to choose a
> desktop.
> Several warnings get thrown by the script but the script continues to
> work.
> I think if I do this again and pick a desktop the install will work
> completely.
> Partitions are made small sizes and this is on a disk with 240G of space.
> Maybe that could be improved so more of the disk gets used by partitions.
> No option to create and use a swap file rather than a swap partition is
> available yet.
> The script could probably install budgie as a desktop choice if worked.
> When I installed stuff I put xorg on the system along with fonts and maybe
> if I had left desktop and xorg off this might have come up in command line
> mode.  I'll check that out time permitting.
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

