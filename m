Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [216.205.24.124])
	by mail.lfdr.de (Postfix) with ESMTP id 9E85D2E8F29
	for <lists+blinux-list@lfdr.de>; Mon,  4 Jan 2021 02:17:55 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1609723074;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=Ke3zCG7K5e1UJms+tbsvpLUWtboNJuv9MYnnCq8VYYA=;
	b=ePV09YMOWJt33oQ1ahIJOyS8F3QsF6ZKxDTEk8liKmwio24WThnO9BAydNSr3eANC63fD6
	plz/ZrBVSGhMASw/JedYauFbp9FOp/vo56aNHYbsv52OuDkPk8xRl+lkEStRWyZHVdpEsN
	SReLDA9k21FCvVbCwvDWleBv9H3bU4g=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-119-iM4-1lP-MZGHuJt9P5s6UQ-1; Sun, 03 Jan 2021 20:17:52 -0500
X-MC-Unique: iM4-1lP-MZGHuJt9P5s6UQ-1
Received: from smtp.corp.redhat.com (int-mx07.intmail.prod.int.phx2.redhat.com [10.5.11.22])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 4C58D15722;
	Mon,  4 Jan 2021 01:17:47 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id F337B10016FF;
	Mon,  4 Jan 2021 01:17:46 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 796AC180954D;
	Mon,  4 Jan 2021 01:17:41 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx03.intmail.prod.int.rdu2.redhat.com
	[10.11.54.3])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 1041HbtA015715 for <blinux-list@listman.util.phx.redhat.com>;
	Sun, 3 Jan 2021 20:17:37 -0500
Received: by smtp.corp.redhat.com (Postfix)
	id 00BBC1000DA3; Mon,  4 Jan 2021 01:17:37 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast02.extmail.prod.ext.rdu2.redhat.com [10.11.55.18])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id F0AD1112C085
	for <blinux-list@redhat.com>; Mon,  4 Jan 2021 01:17:34 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-1.mimecast.com [207.211.31.81])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 98FBB8007DF
	for <blinux-list@redhat.com>; Mon,  4 Jan 2021 01:17:34 +0000 (UTC)
Received: from mail-oi1-f175.google.com (mail-oi1-f175.google.com
	[209.85.167.175]) (Using TLS) by relay.mimecast.com with ESMTP id
	us-mta-487-yFWC8vrnNZmcM37gBAwZFQ-1; Sun, 03 Jan 2021 20:17:32 -0500
X-MC-Unique: yFWC8vrnNZmcM37gBAwZFQ-1
Received: by mail-oi1-f175.google.com with SMTP id l200so30367481oig.9
	for <blinux-list@redhat.com>; Sun, 03 Jan 2021 17:17:32 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:from:content-transfer-encoding:mime-version
	:subject:date:references:to:in-reply-to:message-id;
	bh=dVaEYK3Lpv3Xy4KrImNb7CdtiW3bUM4RGEQ1FshNyMQ=;
	b=b3ycXM5/4jiLTl9syXRRnoHItdhAE2EUka1ksuJ+40FT8qO4hFsJD34hRD0nis8qSh
	N/7IcLpzCbBWBQg8s7ojfFIIFh0mz9RexjNVDrawuHfaBOYvXhT2AjHvJ1tUhUIkIM7D
	loP1M+veWNo1Se7Rx5iPALfFQiZc6nRL3W2bVPypmRQGM9rg6SGAx2440y5kjOB2O6UE
	hnL0VYf04C8rMvvC18jVJqCdxi+J/u0GRAcTUEY+Pu2NzeKZvxLBbIA9Y7j9+pEP60FY
	boePR6m1ze0bD8rI/q9GUc1Pn6lXi2UsBDReP/AQNcCgXl8SDi2IhmzD3jLJnFaYKOvU
	ovfg==
X-Gm-Message-State: AOAM5312TB5gcs39oY0AB+6kYL6rb8FInKQQXJ8CtiMD3b8jSzQE9UgJ
	McaIdmLJJrOaRWFgD6tShbf/a6JfCFc=
X-Google-Smtp-Source: ABdhPJxTDxal9C940uPsOU3ddV3S5Z7TTkdziM24U/xEJ5HbiM2MV7E2BvfaUgsZehGsYaGZKsiA1w==
X-Received: by 2002:aca:a98e:: with SMTP id
	s136mr16372249oie.116.1609723051283; 
	Sun, 03 Jan 2021 17:17:31 -0800 (PST)
Received: from ?IPv6:2601:3c2:8200:9360:90fb:8d98:dce0:5030?
	([2601:3c2:8200:9360:90fb:8d98:dce0:5030])
	by smtp.gmail.com with ESMTPSA id
	s9sm13053815oie.53.2021.01.03.17.17.30 for <blinux-list@redhat.com>
	(version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
	Sun, 03 Jan 2021 17:17:30 -0800 (PST)
Mime-Version: 1.0 (Mac OS X Mail 11.5 \(3445.9.7\))
Subject: Re: speech output log
Date: Sun, 3 Jan 2021 19:17:29 -0600
References: <d79b90e0-c23c-20e9-7313-d54c5cddbef8@gmail.com>
To: blinux-list@redhat.com
In-Reply-To: <d79b90e0-c23c-20e9-7313-d54c5cddbef8@gmail.com>
Message-Id: <27F48B51-66BA-41E1-A7B2-0779AF30677B@gmail.com>
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection
	Definition; Similar Internal Domain=false;
	Similar Monitored External Domain=false;
	Custom External Domain=false; Mimecast External Domain=false;
	Newly Observed Domain=false; Internal User Name=false;
	Custom Display Name List=false; Reply-to Address Mismatch=false;
	Targeted Threat Dictionary=false;
	Mimecast Threat Dictionary=false; Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 2.78 on 10.11.54.3
X-MIME-Autoconverted: from quoted-printable to 8bit by
	lists01.pubmisc.prod.ext.phx2.redhat.com id 1041HbtA015715
X-loop: blinux-list@redhat.com
From: Linux for blind general discussion <blinux-list@redhat.com>
X-BeenThere: blinux-list@redhat.com
X-Mailman-Version: 2.1.12
Precedence: junk
Reply-To: blinux-list@redhat.com
List-Id: Linux for blind general discussion <blinux-list.redhat.com>
List-Unsubscribe: <https://www.redhat.com/mailman/options/blinux-list>,
	<mailto:blinux-list-request@redhat.com?subject=unsubscribe>
List-Archive: <https://www.redhat.com/archives/blinux-list>
List-Post: <mailto:blinux-list@redhat.com>
List-Help: <mailto:blinux-list-request@redhat.com?subject=help>
List-Subscribe: <https://www.redhat.com/mailman/listinfo/blinux-list>,
	<mailto:blinux-list-request@redhat.com?subject=subscribe>
Sender: blinux-list-bounces@redhat.com
Errors-To: blinux-list-bounces@redhat.com
X-Scanned-By: MIMEDefang 2.84 on 10.5.11.22
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

Curious, what is Kodi?

> On Jan 3, 2021, at 7:06 PM, Linux for blind general discussion <blinux-list@redhat.com> wrote:
> 
> So I'm using kodi on my laptop and need to get messages that kodi screenreader outputs. Is there a way I can find this log because I have no clue what to monitor with tail.
> 
> _______________________________________________
> Blinux-list mailing list
> Blinux-list@redhat.com
> https://www.redhat.com/mailman/listinfo/blinux-list
> 


_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://www.redhat.com/mailman/listinfo/blinux-list

