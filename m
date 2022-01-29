Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.129.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 260FD4A2C01
	for <lists+blinux-list@lfdr.de>; Sat, 29 Jan 2022 06:41:03 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1643434862;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=CM6jX4lEc3wkmvy0F9fgmRNKk0MfZWZDzXbnx2Jxj3w=;
	b=APxwm9llu63ty8y619iuotMa0u6CSIhdJfcN1TNMnifdx/sqBe2Cu3lZxAHbxzWGYN/QqT
	sY1O+PE7yDF2tq4TNFrAJH9GiUdrF7Zrex6NlTvEY6Hicirlj4rl4kJQW7bfIkBeUu9s5S
	KKLFptdjeV3iWAREcrGSoj8p4o2v74Q=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-155-gbyYhximNA62fFrhjA7nxQ-1; Sat, 29 Jan 2022 00:40:58 -0500
X-MC-Unique: gbyYhximNA62fFrhjA7nxQ-1
Received: from smtp.corp.redhat.com (int-mx06.intmail.prod.int.phx2.redhat.com [10.5.11.16])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id A5AF018B613F;
	Sat, 29 Jan 2022 05:40:53 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id B5A1C7945D;
	Sat, 29 Jan 2022 05:40:52 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 1B24B4BB7B;
	Sat, 29 Jan 2022 05:40:49 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx04.intmail.prod.int.rdu2.redhat.com
	[10.11.54.4])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 20T5ddkf018105 for <blinux-list@listman.util.phx.redhat.com>;
	Sat, 29 Jan 2022 00:39:39 -0500
Received: by smtp.corp.redhat.com (Postfix)
	id 35204201AC7E; Sat, 29 Jan 2022 05:39:39 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast05.extmail.prod.ext.rdu2.redhat.com [10.11.55.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 2FDCF2027EB4
	for <blinux-list@redhat.com>; Sat, 29 Jan 2022 05:39:36 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com
	[205.139.110.120])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 0C3718032EB
	for <blinux-list@redhat.com>; Sat, 29 Jan 2022 05:39:36 +0000 (UTC)
Received: from mail-pf1-f174.google.com (mail-pf1-f174.google.com
	[209.85.210.174]) by relay.mimecast.com with ESMTP with STARTTLS
	(version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
	us-mta-322-6A4fN3iEO3S1PlrC16_6Cg-1; Sat, 29 Jan 2022 00:39:33 -0500
X-MC-Unique: 6A4fN3iEO3S1PlrC16_6Cg-1
Received: by mail-pf1-f174.google.com with SMTP id a8so8066372pfa.6
	for <blinux-list@redhat.com>; Fri, 28 Jan 2022 21:39:32 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20210112;
	h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
	:content-language:to:references:from:in-reply-to
	:content-transfer-encoding;
	bh=UBwTbVuIGPEuwacVnmGlekg/BKkf+BqzBJEQ5zgu9NE=;
	b=nTf1D8bQ3VA47DWSwx7WG8zJBEUTFk8c9HfHYwU81DCZ5PGCmnp/7eD6aqVsJGY/Hq
	yCCLLHrdJEx07q2LgT7Dk9Cuwh54qAjqa7H5v0Cwh4R78/g1i0R95CahSjo38r/OUxdv
	e51b8DE5elg/MmRSFu83XiIw6/8t3JmiGir6eNrdzRh74CycZf4y/GWtmM08BTT5MN6e
	17u5lM9mJpwwVjjsJKm+kN8NlRDmqQBBrXCCVMiy/h3VoqFD11F4xM2Avx1l6oU204RZ
	KfMrzUfVHH+JJKKWDHDEi77zCwVfoQ284nieLAAb/A2MLm+qIdSUAY2TfwmXX7WEmSXf
	WJhw==
X-Gm-Message-State: AOAM532k7e+y52W8D6x1Koi3hY+yzQXBsxcL83VN0FWTmToaVpWW6Gzb
	TdCweJ3+egpS4nAXRzVz9scKIdh4dB8=
X-Google-Smtp-Source: ABdhPJx4+UJbFoe6I+YPmoVM/Ob9fy/oZs+uYpPFJwSr7rqyHVGjuv/on9vbFJkPwkk5VtJjMT74Ew==
X-Received: by 2002:a65:60c3:: with SMTP id r3mr9097524pgv.347.1643434771442; 
	Fri, 28 Jan 2022 21:39:31 -0800 (PST)
Received: from ?IPV6:2607:fb90:7286:7d1:95d2:b4c4:48b:1fc9?
	([2607:fb90:7286:7d1:95d2:b4c4:48b:1fc9])
	by smtp.gmail.com with ESMTPSA id bj7sm3910297pjb.9.2022.01.28.21.39.30
	for <blinux-list@redhat.com>
	(version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
	Fri, 28 Jan 2022 21:39:31 -0800 (PST)
Message-ID: <55d93fef-37e8-765c-5f48-fe5e859f052f@gmail.com>
Date: Fri, 28 Jan 2022 22:39:29 -0700
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:91.0) Gecko/20100101
	Thunderbird/91.5.1
Subject: Re: Fedora-MATE_Compiz-Live-x86_64-35-1.2.iso
To: Linux for blind general discussion <blinux-list@redhat.com>
References: <2930A22F-EA6A-4939-A70A-6C92AF95E4CC@icloud.com>
	<84ff2447-0200-a2ae-1d7b-1d62d6853c17@gmail.com>
	<79793ef9-1158-eb3c-cfdb-8cbe2aa9bb1@panix.com>
	<9b23be50-9125-dbe1-66f4-03936e6c2aa1@gmail.com>
In-Reply-To: <9b23be50-9125-dbe1-66f4-03936e6c2aa1@gmail.com>
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
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.16
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"

what is bare metal?

I keep hearing that term zand am wanting to find out more inmfo on it

On 1/27/2022 6:10 PM, Linux for blind general discussion wrote:
> It will be interesting to find if archlinux on bare metal using
>> pipewire runs into sound problems.
>
>
> I don't think it will have sound problems. Everywhere I run Pipewire 
> on bare metal, it just works with no major problems, and actually few 
> minor problems. Fedora and Arch both seem to work on bare metal with 
> Pipewire. Virtual machines, especially Qemu and I believe VirtualBox 
> as well, seem to be the only places where it appears to have trouble.
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

