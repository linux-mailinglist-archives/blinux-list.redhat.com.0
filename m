Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [216.205.24.124])
	by mail.lfdr.de (Postfix) with ESMTP id 176A83ED9CB
	for <lists+blinux-list@lfdr.de>; Mon, 16 Aug 2021 17:23:25 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1629127404;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=WnSU4XSouLnTjMcKsO1fQ/ystbyDLRDhpV79l1TOrn8=;
	b=RNdhGRO64LstdR8jk2Z2hg4Uajic5HFqyXLTUTiXQnB3oc9XXK7i/cmY/D5OGkBYD/eFec
	HVZ5i9nIulUMpXpvxgzCPjuWTcITNnoQaV+EsQ7X3n4MAFZofW1ZCKgVwPuw28mAVKNoYP
	1CKY0aTk/gedcX6fHPGmW3tkfcLcCDM=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-517-fC1z8d7kMr-RugUaPVJ68A-1; Mon, 16 Aug 2021 11:23:22 -0400
X-MC-Unique: fC1z8d7kMr-RugUaPVJ68A-1
Received: from smtp.corp.redhat.com (int-mx08.intmail.prod.int.phx2.redhat.com [10.5.11.23])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 09D18800493;
	Mon, 16 Aug 2021 15:23:18 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id DFC5519C44;
	Mon, 16 Aug 2021 15:23:17 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 1AE7B4BB7C;
	Mon, 16 Aug 2021 15:23:17 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx06.intmail.prod.int.rdu2.redhat.com
	[10.11.54.6])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 17GFKsJY020140 for <blinux-list@listman.util.phx.redhat.com>;
	Mon, 16 Aug 2021 11:20:55 -0400
Received: by smtp.corp.redhat.com (Postfix)
	id CE9DC215672D; Mon, 16 Aug 2021 15:20:54 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast01.extmail.prod.ext.rdu2.redhat.com [10.11.55.17])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id C97AE21568BF
	for <blinux-list@redhat.com>; Mon, 16 Aug 2021 15:20:51 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-2.mimecast.com [207.211.31.81])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
	bits)) (No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 4A29389C7DB
	for <blinux-list@redhat.com>; Mon, 16 Aug 2021 15:20:51 +0000 (UTC)
Received: from mail-wm1-f54.google.com (mail-wm1-f54.google.com
	[209.85.128.54]) (Using TLS) by relay.mimecast.com with ESMTP id
	us-mta-433-RXn159pnPmiTxSWYSXnALA-1; Mon, 16 Aug 2021 11:20:49 -0400
X-MC-Unique: RXn159pnPmiTxSWYSXnALA-1
Received: by mail-wm1-f54.google.com with SMTP id
	j12-20020a05600c1c0c00b002e6d80c902dso198419wms.4
	for <blinux-list@redhat.com>; Mon, 16 Aug 2021 08:20:49 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:subject:to:references:from:message-id:date
	:user-agent:mime-version:in-reply-to:content-transfer-encoding
	:content-language;
	bh=kHQZFqcVvjESIXAOm9I8FMfn3cVNinVXm4FjQpWpw8I=;
	b=s/xIB4eB04uwgSNCVEL0CSMlnjUv/z6pqedYq08nVwPJKEnuvqgveUW2Aa/lJsew4f
	V11TS4jlXrk6z1hWyVF4U9gmy3x4R2RSN12gLcxAHBvvFJFODZOFGPt0pJVRSGR1RSt8
	2OUsbqX1f6bo0DQpSgR3fPT/54XJO+Tl16ceKPFSSECYxpFUCHkD4SdPvRN6DaDRkXfR
	xcFvy7A6rhnyBpUZF5Vi0HyTqT04j06Mr0RhANLZXqnoMWa1Olwc82VieKF8latVPH/5
	+q3XGwYMeuRvVuaoZ0Yjq/ZeF2f1EH15N/g5Dh5jd6Ryep7+Y3otU8XFjqe9e0epTCTd
	fy9w==
X-Gm-Message-State: AOAM530h6EflWd6G9BTUXDHapiMIftVGdmhpHYHzwX8OOfE/1vRfHZGn
	AtCvXGy6S1U9fvM0oNgTcHdSFaaA66mH0w==
X-Google-Smtp-Source: ABdhPJw9G+NVHrFz6eTwqKz9gtkR+fU73Qp/nW7wfFEeVhN7pBY/F22hGFOqfgTLneeg3n238aRtZg==
X-Received: by 2002:a1c:544b:: with SMTP id p11mr15347272wmi.20.1629127247944; 
	Mon, 16 Aug 2021 08:20:47 -0700 (PDT)
Received: from [192.168.1.221] ([90.251.27.18])
	by smtp.gmail.com with ESMTPSA id
	e11sm12077809wrm.80.2021.08.16.08.20.47 for <blinux-list@redhat.com>
	(version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
	Mon, 16 Aug 2021 08:20:47 -0700 (PDT)
Subject: Re: Anyone else experiencing Firefox 91 crashes?
To: Linux for blind general discussion <blinux-list@redhat.com>
References: <17f6f79e-2927-3ad4-7915-42053461d773@protonmail.com>
	<CAO2sX30xaswpT1vxCzem_jxckXVdRBW38NGuJMc9ODsmYMrsUw@mail.gmail.com>
Message-ID: <d099d3e8-6d06-0af4-c31d-ed18714d2f5d@gmail.com>
Date: Mon, 16 Aug 2021 16:20:46 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
	Thunderbird/78.12.0
MIME-Version: 1.0
In-Reply-To: <CAO2sX30xaswpT1vxCzem_jxckXVdRBW38NGuJMc9ODsmYMrsUw@mail.gmail.com>
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
X-Scanned-By: MIMEDefang 2.84 on 10.5.11.23
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"

Yes on Ubuntu, no on Solus

On 8/16/21 4:16 PM, Linux for blind general discussion wrote:
> _______________________________________________
> Blinux-list mailing list
> Blinux-list@redhat.com
> https://listman.redhat.com/mailman/listinfo/blinux-list
>

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://listman.redhat.com/mailman/listinfo/blinux-list

