Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	by mail.lfdr.de (Postfix) with ESMTP id ADF8C3E003C
	for <lists+blinux-list@lfdr.de>; Wed,  4 Aug 2021 13:33:38 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1628076817;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=tNZw8ak6w5WQcp9oBUmKxAUCqeZMO53b9G0iIxXCHlE=;
	b=EZKHzGDonzP5Zr32Vd/7RWmx5LEXHGbaw/+BtqzZmkdsJalM0i9ddlUbE4xauMJfoUGBD8
	oL9IEcEfpXUbQqpxFhua6nwnOKyY7DPil7/gURR+nW1rTdznDy3jf9fpUXq58uED19eVxN
	BjRHxJ+bDySXB4XJbZMgl3kWivrj3ZM=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-242-aTAMloGHOq69V-4jIOg_SA-1; Wed, 04 Aug 2021 07:33:36 -0400
X-MC-Unique: aTAMloGHOq69V-4jIOg_SA-1
Received: from smtp.corp.redhat.com (int-mx07.intmail.prod.int.phx2.redhat.com [10.5.11.22])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id AC7ED760C0;
	Wed,  4 Aug 2021 11:33:31 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 1ECA31000358;
	Wed,  4 Aug 2021 11:33:31 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 063834BB7B;
	Wed,  4 Aug 2021 11:33:29 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx06.intmail.prod.int.rdu2.redhat.com
	[10.11.54.6])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 174BXMNO018792 for <blinux-list@listman.util.phx.redhat.com>;
	Wed, 4 Aug 2021 07:33:22 -0400
Received: by smtp.corp.redhat.com (Postfix)
	id D4CC7200E57B; Wed,  4 Aug 2021 11:33:21 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast01.extmail.prod.ext.rdu2.redhat.com [10.11.55.17])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id C2750210EB88
	for <blinux-list@redhat.com>; Wed,  4 Aug 2021 11:33:18 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-2.mimecast.com [207.211.31.81])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
	bits)) (No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id A10F9866DF1
	for <blinux-list@redhat.com>; Wed,  4 Aug 2021 11:33:18 +0000 (UTC)
Received: from mail-wm1-f53.google.com (mail-wm1-f53.google.com
	[209.85.128.53]) (Using TLS) by relay.mimecast.com with ESMTP id
	us-mta-573-QRj5UU6uPG6uD154nFRfpQ-1; Wed, 04 Aug 2021 07:33:16 -0400
X-MC-Unique: QRj5UU6uPG6uD154nFRfpQ-1
Received: by mail-wm1-f53.google.com with SMTP id
	a192-20020a1c7fc90000b0290253b32e8796so3529246wmd.0
	for <blinux-list@redhat.com>; Wed, 04 Aug 2021 04:33:16 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:subject:to:references:from:message-id:date
	:user-agent:mime-version:in-reply-to:content-transfer-encoding
	:content-language;
	bh=PZWIfkqum7tWykk6rqgFudMdnHPTh70InSrR3gKikBg=;
	b=W0kWCA0AMqUvGjLWhh/C00451TnxwCe5fbWbDaI78OFSZWu57MkK/Gh7FTt/veCDx/
	SudHNeEEWm5SkcnvJfjAongL1ixAoL5LMa0/9tVS/ZdLZ4F56Zxlgtl5meuj/KjV0BSv
	5ckmBuTkbekoGIZDFAJURWQoOXlHgM1eEAIsUWEXZsMEJB6eKQgzGIkIJlnNQ4Yiq7z3
	GSvWDu3/lwEwpJK3mRTqedcySPtNQJOIUwxTByU/F4loGcbcjjtv9ayrSk38oIFxeWbM
	LVd83OwsrAstbUapVRpkAWaFQxiCEg83kMfKw0AQOXDe+jB9NnlvJgro/MPU5FpixFk3
	fUmw==
X-Gm-Message-State: AOAM5338EBu2UJ0yWWDuOsVffNn+0mZ44P3sJ8Q35iWRXbBE8ZJe5c4j
	f2FTYRZVrTngTvDSP06TiOc5vZLFrKnXtA==
X-Google-Smtp-Source: ABdhPJw9hKmo9ZmVaM+zgvcKyK4wVQAxsY/vLQ2KqdNSnPdK+TyDtnTlsxqzbjN0JgcWxucSizmdhw==
X-Received: by 2002:a05:600c:1c11:: with SMTP id
	j17mr17931420wms.35.1628076795088; 
	Wed, 04 Aug 2021 04:33:15 -0700 (PDT)
Received: from [192.168.1.130] ([90.254.192.41])
	by smtp.gmail.com with ESMTPSA id l2sm2166546wru.67.2021.08.04.04.33.14
	for <blinux-list@redhat.com>
	(version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
	Wed, 04 Aug 2021 04:33:14 -0700 (PDT)
Subject: Re: Solus DE observations
To: Linux for blind general discussion <blinux-list@redhat.com>
References: <3c0f9041-d6e9-5fb5-2e9c-a96dc59bd86c@gmail.com>
	<7b4a0e8e-f7b2-af91-975c-d3ca3a3cbdcf@gmail.com>
	<76FFA217-1F68-444A-8DB7-C465759CD123@gmail.com>
	<fd407fcb-4241-4fd6-49e8-bd25a69f3348@gmail.com>
	<DC07B063-C1B9-49B0-89BA-7F340746AB3D@gmail.com>
	<57bd933a-c517-2ec6-0f1e-716e4a81908b@gmail.com>
	<4020EC8C-BE9D-4ABC-A1B6-EFDCB9F261ED@gmail.com>
	<2a58e6d9-54c9-8d66-7433-aebc6fcf687c@gmail.com>
	<229F2558-87BD-4F2F-907D-218C2D542480@gmail.com>
Message-ID: <507fd0d3-4aa0-dabf-c080-90bb0775dfa5@gmail.com>
Date: Wed, 4 Aug 2021 12:33:15 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
	Thunderbird/78.12.0
MIME-Version: 1.0
In-Reply-To: <229F2558-87BD-4F2F-907D-218C2D542480@gmail.com>
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
X-Scanned-By: MIMEDefang 2.84 on 10.5.11.22
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"

Dave, did you have the issue I'm experienceing with Firefox not 
announcing Orca keystrokes and Chromium based apps causing Marco to lose 
focus at times? Those are my two biggest issues with the Mate DE, but 
Budgie with a drop down terminal is all kinds of amazingly good.

On 8/4/21 12:05 PM, Linux for blind general discussion wrote:
> How was linux mint and orca during installing?
>
>> On Aug 3, 2021, at 9:23 PM, Linux for blind general discussion <blinux-list@redhat.com> wrote:
>>
>> This message is coming from my Solus Mate installation.  Mate and the applications work as expected, with the exception of speech dispatcher.  All other audio sounds fine, but speech is a little choppy.  Also, I found that some packages aren't in the repos, namely LIOS and Chirp.  I don't know what the build experience is like in Solus, and have those packages in my Slint system. Speaking of Slint, have you considered it?
>>
>>
>> I have used Linux Mint Mate edition, and find that the accessibility works fine in the apps and on the desktop and menus.  I find that I have to use flat review on Mint Mate's bottom panel, and the battery  charge indicator doesn't seem to refresh properly.
>>
>>
>>
>> HTH,
>>
>>
>>
>> Dave  H.
>>
>>
>>
>>
>> Sent with Thunderbird and Solus GNU/Linux.
>>
>> On 8/3/21 10:13 PM, Linux for blind general discussion wrote:
>>> Dave, I have used gnome and mate with ubuntu.
>>> I thought of linux mint, and tried it, but orca would not work.
>>> Had you tried mint?
>>> As to Solus, is that workable?
>> _______________________________________________
>> Blinux-list mailing list
>> Blinux-list@redhat.com
>> https://listman.redhat.com/mailman/listinfo/blinux-list
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

