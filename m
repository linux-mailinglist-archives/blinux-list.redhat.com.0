Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [216.205.24.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 37CA043F3FB
	for <lists+blinux-list@lfdr.de>; Fri, 29 Oct 2021 02:36:04 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1635467763;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=wcvHeagypGos/Wm+fpy1JxYoh8y46C1Xqjdq9k3RulY=;
	b=ASFYuYluLQ96biXAnObsRc+BlXRdjNoc2v9N62WOXaE9rWFi4VIO8ujkNqTkkM2ar43E2c
	tKIkd2XHk0PPDovEjiVXOOHcubKbCGg/+rV2XS/h4Enxg6Q9B/8wgcXba+FQR8Ri2dO5G/
	N9LDHzK3BfRIjVwSfPd6gxDDkIzRWio=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-335-D75hY45NNqiJ1ZjBBVXXNg-1; Thu, 28 Oct 2021 20:35:59 -0400
X-MC-Unique: D75hY45NNqiJ1ZjBBVXXNg-1
Received: from smtp.corp.redhat.com (int-mx04.intmail.prod.int.phx2.redhat.com [10.5.11.14])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 49E2410A8E01;
	Fri, 29 Oct 2021 00:35:54 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 69FB017DBA;
	Fri, 29 Oct 2021 00:35:51 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 418AA1800B9C;
	Fri, 29 Oct 2021 00:35:46 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx05.intmail.prod.int.rdu2.redhat.com
	[10.11.54.5])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 19T0ZPeG010074 for <blinux-list@listman.util.phx.redhat.com>;
	Thu, 28 Oct 2021 20:35:25 -0400
Received: by smtp.corp.redhat.com (Postfix)
	id 467BD51DD; Fri, 29 Oct 2021 00:35:25 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast05.extmail.prod.ext.rdu2.redhat.com [10.11.55.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 4117F51DC
	for <blinux-list@redhat.com>; Fri, 29 Oct 2021 00:35:21 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-2.mimecast.com [205.139.110.61])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 417C180015A
	for <blinux-list@redhat.com>; Fri, 29 Oct 2021 00:35:21 +0000 (UTC)
Received: from mail-qv1-f45.google.com (mail-qv1-f45.google.com
	[209.85.219.45]) (Using TLS) by relay.mimecast.com with ESMTP id
	us-mta-334-VKOvx_X6OlaHtdo-2Nd7nA-1; Thu, 28 Oct 2021 20:35:19 -0400
X-MC-Unique: VKOvx_X6OlaHtdo-2Nd7nA-1
Received: by mail-qv1-f45.google.com with SMTP id u25so5316508qve.2
	for <blinux-list@redhat.com>; Thu, 28 Oct 2021 17:35:19 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20210112;
	h=x-gm-message-state:subject:to:references:from:message-id:date
	:user-agent:mime-version:in-reply-to:content-transfer-encoding
	:content-language;
	bh=eDGQfdJTTHAwmmT63cwwrPqb5rRhmn+336rOGNAwej0=;
	b=EH84RdkSwnhFhrDL34BOWZE01sr2hhBX6kuPo5ouuiVa+cHHmROtM3pgzIL5MSI260
	B/vrL07PLNjFcRo2+nyqH75VG8iEg9yKgbxfs9oZUo667OXxIMmKf9CxCS2iNm+RcxUA
	lSAeY+HxA/pFiQexCgdj0W0lr3aHiXXAjb2F8Ht6ELGfFGJoJknxl3h6yNxj2bzY3bHU
	unge6km7nDDcZEifhI2k5WykUUL2GGCj40teMBv60PWyToQHNtxAS7mSaN8khLjD+xDL
	gBGUtTtdN5B+MFzs2lOmlO/BWFlBMIUJL3bzk+cSk4ioHVpI86ek5RRYo3cP2F3MLKU+
	BW6A==
X-Gm-Message-State: AOAM532b5LxhBULIt6uTdFwjHGSLmlRNV9TMVTXd2Un+DH/f+Z6soYoM
	fHXCVjsg4ezQFQtvqNMnjzgiFJZPTOHYhA==
X-Google-Smtp-Source: ABdhPJybVq5J1crILPDWL6HaADShed64Mk09p6F2AYQ1WAwey/xyG1alSP7giLSfhzjA6/MQnlU/0w==
X-Received: by 2002:ad4:5948:: with SMTP id eo8mr7924072qvb.37.1635467718805; 
	Thu, 28 Oct 2021 17:35:18 -0700 (PDT)
Received: from ?IPv6:2601:c8:300:2f6:81c2:5443:ea0e:1957?
	([2601:c8:300:2f6:81c2:5443:ea0e:1957])
	by smtp.gmail.com with ESMTPSA id
	l15sm3333953qtk.41.2021.10.28.17.35.18 for <blinux-list@redhat.com>
	(version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
	Thu, 28 Oct 2021 17:35:18 -0700 (PDT)
Subject: Re: Can I run an accessible version of linux under windows?
To: Linux for blind general discussion <blinux-list@redhat.com>
References: <66F2A8CB-2631-469B-9594-F3173CD00F69@gmail.com>
Message-ID: <bda740bd-4cbf-254a-7e56-d18db8e2723a@gmail.com>
Date: Thu, 28 Oct 2021 20:35:17 -0400
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
	Thunderbird/78.13.0
MIME-Version: 1.0
In-Reply-To: <66F2A8CB-2631-469B-9594-F3173CD00F69@gmail.com>
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
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"

I am trying a version of Linux called Accessible Coconut.

It can be run from a live CD.

If you search for it, you will find a Sourceforge download link.

Thanks,

Rob

On 10/28/21 7:25 PM, Linux for blind general discussion wrote:
> Hello folks,
> I am new in this list, and I appologize if my question is not appropriate for the list. I like to learn linux but I have no idea where to start. For this I like to know if it is possible to run linux under windows and how to go about it if it is possible. If I could do that it will help me transition gradually from windows to linux.
> Thanks in advance for your help.
> Ibrahim
>
> Sent from my iPhone
>
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

