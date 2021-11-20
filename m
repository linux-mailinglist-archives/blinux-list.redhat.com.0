Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.129.124])
	by mail.lfdr.de (Postfix) with ESMTPS id B209A457AC8
	for <lists+blinux-list@lfdr.de>; Sat, 20 Nov 2021 04:29:32 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1637378971;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=lOmZP8f6mVWL6OkKaHy1kK2Kb0Mkbo2aCrSZjS6XdxI=;
	b=ONVD6shwihghMcUr1pAMZPmOGimfaNQVkqQmsNAhOP/JBqUxZCUTf1HTQ7vecuBxzZ0plc
	yK0TMcOba7WTg4G06DVCR3mFaGIETBVQAKL7kIEuCm7H8jrTS/23LKsaqw0pbNdFNAeBiM
	YP/BJIEiSKzjLqJeqJ9Wz2nscxPhHjU=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-421-Hanr_zBKMkOVMFvVXvUMPw-1; Fri, 19 Nov 2021 22:29:28 -0500
X-MC-Unique: Hanr_zBKMkOVMFvVXvUMPw-1
Received: from smtp.corp.redhat.com (int-mx07.intmail.prod.int.phx2.redhat.com [10.5.11.22])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 9C2671023F4F;
	Sat, 20 Nov 2021 03:29:24 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 53B27100EA05;
	Sat, 20 Nov 2021 03:29:24 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id D1E081832E81;
	Sat, 20 Nov 2021 03:29:20 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx04.intmail.prod.int.rdu2.redhat.com
	[10.11.54.4])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 1AK3TGZC012523 for <blinux-list@listman.util.phx.redhat.com>;
	Fri, 19 Nov 2021 22:29:16 -0500
Received: by smtp.corp.redhat.com (Postfix)
	id 146E82026D5D; Sat, 20 Nov 2021 03:29:16 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast06.extmail.prod.ext.rdu2.redhat.com [10.11.55.22])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 0F13D2026D48
	for <blinux-list@redhat.com>; Sat, 20 Nov 2021 03:29:11 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-1.mimecast.com [205.139.110.61])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 5E6EA185A7B2
	for <blinux-list@redhat.com>; Sat, 20 Nov 2021 03:29:11 +0000 (UTC)
Received: from mail-qv1-f42.google.com (mail-qv1-f42.google.com
	[209.85.219.42]) by relay.mimecast.com with ESMTP with STARTTLS
	(version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
	us-mta-556-63b3AGC6NIeeBVB7xKFmQQ-1; Fri, 19 Nov 2021 22:29:09 -0500
X-MC-Unique: 63b3AGC6NIeeBVB7xKFmQQ-1
Received: by mail-qv1-f42.google.com with SMTP id kl8so8474850qvb.3
	for <blinux-list@redhat.com>; Fri, 19 Nov 2021 19:29:09 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20210112;
	h=x-gm-message-state:subject:to:references:from:message-id:date
	:user-agent:mime-version:in-reply-to:content-transfer-encoding
	:content-language;
	bh=ydhTHMsud08S4D4a8z4i4+PvD0y2scSSGrTaT+Fn350=;
	b=2OS9Uizz77eChvX0Kasc39H7ql/Jc84pZ6iKQ1+9rhPHeOGMC9Zmm1TucxgqLzl6u3
	z/CpaIWFRlMOltyKkxtFCNaKkhh2WfFk1gGqmMF1QgDtck2VgVU/mFw22ZQz7aq845lY
	tbRzDpdHdFikTRtEA3/f97gstz1EOvCCUrTTLDO8y0oEIm4yrM/5gMO+/k+w+jpPINwG
	auYg7RgBrMcSfyIxG/4rGXsmAqIPNS5M8lGFrsNnaTgAWgLU12RMHj07FQKzppFMccAO
	9pYuCoiw24sC8nEXKq+T6YY5JxB1DW+lQF+YpPPzeXiP5n0tnqEEV770pDUpiGv+SOmi
	+UYw==
X-Gm-Message-State: AOAM532P/zJZUGyFEqcAOHbiRqFxliSM91IysroGQg/yMbFk0zBJkYcZ
	KJOejSgjobYEdGBMUoxx5oNED39hl39u792X
X-Google-Smtp-Source: ABdhPJzURd+y+R57Zr1p3Dn5dSGoaHbVr1r4vyWrW47xQQDDgpZcpN2ef5SOaP4ZK9JeZF7oRTCPUA==
X-Received: by 2002:ad4:5966:: with SMTP id eq6mr77858534qvb.14.1637378948998; 
	Fri, 19 Nov 2021 19:29:08 -0800 (PST)
Received: from darkstar.example.slint ([2601:152:4000:330::15])
	by smtp.gmail.com with ESMTPSA id
	n13sm1025220qkp.19.2021.11.19.19.29.08 for <blinux-list@redhat.com>
	(version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
	Fri, 19 Nov 2021 19:29:08 -0800 (PST)
Subject: Re: what is the shortcut for continuous read on orca
To: blinux-list@redhat.com
References: <6283f17e-5316-8991-44ce-442189ef349e@gmail.com>
	<fe6f91df-994d-e4b5-5b7f-054e8d273546@gmail.com>
	<CAO2sX32wsCa+nmyU1+m1sHbTbQWCDTgeHp=514T08SZpi+kvcA@mail.gmail.com>
Message-ID: <b552b034-4b28-2db3-bd1f-545ee1077b94@gmail.com>
Date: Fri, 19 Nov 2021 22:29:07 -0500
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
	Thunderbird/68.12.0
MIME-Version: 1.0
In-Reply-To: <CAO2sX32wsCa+nmyU1+m1sHbTbQWCDTgeHp=514T08SZpi+kvcA@mail.gmail.com>
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection
	Definition; Similar Internal Domain=false;
	Similar Monitored External Domain=false;
	Custom External Domain=false; Mimecast External Domain=false;
	Newly Observed Domain=false; Internal User Name=false;
	Custom Display Name List=false; Reply-to Address Mismatch=false;
	Targeted Threat Dictionary=false;
	Mimecast Threat Dictionary=false; Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 2.78 on 10.11.54.4
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
X-Scanned-By: MIMEDefang 2.84 on 10.5.11.22
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"

thanks a bundle. Somehow I missed this one when I reviewed the shortcuts 
listed under help.

Cheers,

Ibrahim


On 11/19/21 9:29 PM, Linux for blind general discussion wrote:
> And if Caps Lock plus semi-colon doesn't work, try insert plus semi-colon.
>
> On 11/20/21, Linux for blind general discussion <blinux-list@redhat.com> wrote:
>> use caps-lock+semicolon for continuous read.
>>
>>
>>
>> On 11/19/21 8:50 PM, Linux for blind general discussion wrote:
>>> What is the shortcut to have a continous read for orca? I read through
>>> all the shortcuts for a laptop and I did not
>> _______________________________________________
>> Blinux-list mailing list
>> Blinux-list@redhat.com
>> https://listman.redhat.com/mailman/listinfo/blinux-list
> _______________________________________________
> Blinux-list mailing list
> Blinux-list@redhat.com
> https://listman.redhat.com/mailman/listinfo/blinux-list
>

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://listman.redhat.com/mailman/listinfo/blinux-list

