Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.129.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 98E3945D243
	for <lists+blinux-list@lfdr.de>; Thu, 25 Nov 2021 01:59:45 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1637801984;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=fRpAd/8ykdHf0JIIQg2hOrFYrMAggvIN2cEeD1I5xY4=;
	b=PPhbaalV6v5F6A0NSRoxQlICin3bY5cwblDLGAEEdvnAuexc1GYtt5aChJAQmxh4P5ZE3g
	XgWFrr9pMNwwVaDoOdu1KRZ7EVoy/4B5jJhGOne1ch6Efw5ZTUCsxQ7Mo9b05j4se/W9rZ
	gVnlYbGh8mfVzKdD009FNm4Z5NSuRfs=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-201-i30OktAqNP20xmvMRyiTKg-1; Wed, 24 Nov 2021 19:59:41 -0500
X-MC-Unique: i30OktAqNP20xmvMRyiTKg-1
Received: from smtp.corp.redhat.com (int-mx05.intmail.prod.int.phx2.redhat.com [10.5.11.15])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id D292B102CB2A;
	Thu, 25 Nov 2021 00:59:36 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id F05D25D6CF;
	Thu, 25 Nov 2021 00:59:34 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 8D7974BB7C;
	Thu, 25 Nov 2021 00:59:26 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx06.intmail.prod.int.rdu2.redhat.com
	[10.11.54.6])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 1AP0xHDr006844 for <blinux-list@listman.util.phx.redhat.com>;
	Wed, 24 Nov 2021 19:59:17 -0500
Received: by smtp.corp.redhat.com (Postfix)
	id 805612144B21; Thu, 25 Nov 2021 00:59:17 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast01.extmail.prod.ext.rdu2.redhat.com [10.11.55.17])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 78FF82144B20
	for <blinux-list@redhat.com>; Thu, 25 Nov 2021 00:59:14 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com
	[205.139.110.120])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id A8B4885A5B5
	for <blinux-list@redhat.com>; Thu, 25 Nov 2021 00:59:14 +0000 (UTC)
Received: from darkstar.slint.fr (darkstar.slint.fr [172.105.89.79]) by
	relay.mimecast.com with ESMTP id us-mta-552-Rf_W_VQqNSKAo41EAB5F2w-1;
	Wed, 24 Nov 2021 19:59:12 -0500
X-MC-Unique: Rf_W_VQqNSKAo41EAB5F2w-1
Received: from darkstar.example.slint
	(men75-h08-176-172-247-100.dsl.sta.abo.bbox.fr [176.172.247.100])
	by darkstar.slint.fr (Postfix) with ESMTPSA id 4E80FA38C9
	for <blinux-list@redhat.com>; Wed, 24 Nov 2021 23:58:31 +0100 (CET)
Subject: Re: Fedora and virtual machines not starting
To: blinux-list@redhat.com
References: <5c81b0ff-aff6-4a36-c51d-5d158ef96b69@gmail.com>
	<7e0f2665-fa77-42db-62bc-bc92ecd199d9@gmail.com>
	<521d7813-65f3-ed3b-6a0d-9377ef379904@gmail.com>
	<2a4351fc-b90c-b662-1fce-7999a721bad6@gmail.com>
	<d8052d3c-e817-2800-8039-d93f30b02803@gmail.com>
	<f1953152-1ebc-0f21-7f23-db9a329ec5fb@gmail.com>
	<e0e1f20e-e4cd-1c84-d620-a0aee6c7e8ba@gmail.com>
	<ff690e73-0230-0613-a70e-653ce98a1f5c@gmail.com>
	<9f8ca8eb-fab2-e53f-cdb3-3be623a56137@gmail.com>
Message-ID: <a7342368-d9de-c436-d5c8-84d0b1f0aa23@slint.fr>
Date: Thu, 25 Nov 2021 01:59:10 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
	Thunderbird/68.12.0
MIME-Version: 1.0
In-Reply-To: <9f8ca8eb-fab2-e53f-cdb3-3be623a56137@gmail.com>
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
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"

No luck for me either with Fedora 35 mate in Qemu.

I could check that orca starts (from mate-terminal), so does 
speech-dispatcher, but no speech.

However sound is working in the VM as I could listen a you tube video 
video, even if the sound is very distorted.

I suggest to report tee issue to Fedora. o they have an accessibility 
mailing list?

02:00 AM here bed time.

Cheers,
Didier

On 25/11/2021 01:32, Linux for blind general discussion wrote:
> I've no sound with 35, but sound with 34 however using quickemu/quickget 
> though. I'm curious if dider runs into this too on F35, or if it';s 
> something only we're running into? A quick Google points me to similar 
> issues with the 20X series of releases but those were wolved a long time 
> ago.
> 
> It's strangre. I'm using a USB headset however, and I can't think of a 
> reason why F34 would work but not F35 on the exact same system
> 
> On 11/25/21 00:25, Linux for blind general discussion wrote:
>> Could be something with Solus. I get no sound at all using 34 MATE or 
>> Workstation in plain qemu. But this seems odd, considering all the 
>> audio issues I've had with Solus, both in vm's and on bare metal. That 
>> said, I wonder if I should try this using a snap or flatpak if either 
>> is available, since I have issues with Fedora's version of MAME that I 
>> don't have with the snap, although I can't say that I've had any other 
>> issues with Fedora's default packages.
>>
>> _______________________________________________
>> Blinux-list mailing list
>> Blinux-list@redhat.com
>> https://listman.redhat.com/mailman/listinfo/blinux-list
>>
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

