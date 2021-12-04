Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.129.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 0040B46854F
	for <lists+blinux-list@lfdr.de>; Sat,  4 Dec 2021 15:19:25 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1638627564;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=bn5pU3DLJWuK9SHrOM9w44YvIfjn3RiIZ50plDyaXT0=;
	b=fwmhiylv8ivY47f/ShxZwbvCH6+LzZ+BH/tROiCh8iXO1FHNtAd5IN5BP1zQwCgWUyuHzj
	ZuO9thXx0FhykFX+b14S6xwzmU6BAXrZUEDhcYtHQbIAzCOVGIvNV6+u1c8fiBDOEu4U0e
	v2G2GTYdZKXctR1/BpL9DagrEnga65c=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-603-poS5ef-yM2aeKYmfMtEr6g-1; Sat, 04 Dec 2021 09:19:20 -0500
X-MC-Unique: poS5ef-yM2aeKYmfMtEr6g-1
Received: from smtp.corp.redhat.com (int-mx06.intmail.prod.int.phx2.redhat.com [10.5.11.16])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 613D31808320;
	Sat,  4 Dec 2021 14:19:15 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 8CF6476613;
	Sat,  4 Dec 2021 14:19:12 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 0226D4BB7C;
	Sat,  4 Dec 2021 14:19:04 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx01.intmail.prod.int.rdu2.redhat.com
	[10.11.54.1])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 1B4EGnFZ002632 for <blinux-list@listman.util.phx.redhat.com>;
	Sat, 4 Dec 2021 09:16:49 -0500
Received: by smtp.corp.redhat.com (Postfix)
	id 321494010E70; Sat,  4 Dec 2021 14:16:49 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast03.extmail.prod.ext.rdu2.redhat.com [10.11.55.19])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 2CA1440CFD0B
	for <blinux-list@redhat.com>; Sat,  4 Dec 2021 14:16:49 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com
	[205.139.110.120])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 13B60811E76
	for <blinux-list@redhat.com>; Sat,  4 Dec 2021 14:16:49 +0000 (UTC)
Received: from mail-wr1-f54.google.com (mail-wr1-f54.google.com
	[209.85.221.54]) by relay.mimecast.com with ESMTP with STARTTLS
	(version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
	us-mta-240-E1CxPtinMcy0pcQvkDpoOg-1; Sat, 04 Dec 2021 09:16:47 -0500
X-MC-Unique: E1CxPtinMcy0pcQvkDpoOg-1
Received: by mail-wr1-f54.google.com with SMTP id d9so12120611wrw.4
	for <blinux-list@redhat.com>; Sat, 04 Dec 2021 06:16:47 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20210112;
	h=x-gm-message-state:subject:to:references:from:message-id
	:disposition-notification-to:date:user-agent:mime-version
	:in-reply-to:content-transfer-encoding;
	bh=dc8aW1JllWQMHeBiuXiIkzI/JCamy1f4NBi8YHVYutQ=;
	b=rq300Y+izBm9OGn4sVub2eHGksngi4F0Z+4opCEot0NDt1oIYVMwtCcCFBWUR3BeZK
	5YmJVZuSNPIUz81XMJ/vHwmuqot6UU3hbcAFRgI+0peoLMTZoLJoY9EwJa4417vPqo0N
	PkLJw1eoLT+xQYpnGxor793CLQiUlokFWeU4fSFhTnokcZTlSJuQ3MiMZILGjy7G3qIh
	LA0Ym+SSFEa8+U25WpROaWqizws3YwNMI5JRn2JnlFxMbzrqTtUhdy9KdlU4qAui+teI
	I8TjWKtr+j67xfdeBlshtJAzQCRiFO6ZitYCbZjF7pjulcYrCVN6hVw0F9ojA6nJ5Ezg
	N0gg==
X-Gm-Message-State: AOAM533WWREdiASg8Mo+q3HmrXVBzk+m5pGdXTNksSJIAM+VTM+rxX6h
	erRvnRbY/rmJnPBavMBgZ5GxhnAPlxQ=
X-Google-Smtp-Source: ABdhPJws93ona4a0h2yUNC77ALDjiPUH1qNELtHaRh7HFdDjdvQ+BiJngWORzdOTiH7OMOau1UsYmA==
X-Received: by 2002:a5d:6da1:: with SMTP id u1mr28790973wrs.263.1638627406318; 
	Sat, 04 Dec 2021 06:16:46 -0800 (PST)
Received: from [192.168.178.28]
	(dynamic-078-054-071-050.78.54.pool.telefonica.de. [78.54.71.50])
	by smtp.gmail.com with ESMTPSA id h7sm5429827wrt.64.2021.12.04.06.16.45
	for <blinux-list@redhat.com>
	(version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
	Sat, 04 Dec 2021 06:16:45 -0800 (PST)
Subject: Re: two questions for the experts
To: blinux-list@redhat.com
References: <1e931725-0939-4d63-41c9-00e509d0b25c@gmail.com>
Message-ID: <7a1a6f09-bdfe-d06a-f21a-a23d14b739fa@googlemail.com>
Date: Sat, 4 Dec 2021 15:16:45 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
	Firefox/68.0 SeaMonkey/2.53.10
MIME-Version: 1.0
In-Reply-To: <1e931725-0939-4d63-41c9-00e509d0b25c@gmail.com>
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection
	Definition; Similar Internal Domain=false;
	Similar Monitored External Domain=false;
	Custom External Domain=false; Mimecast External Domain=false;
	Newly Observed Domain=false; Internal User Name=false;
	Custom Display Name List=false; Reply-to Address Mismatch=false;
	Targeted Threat Dictionary=false;
	Mimecast Threat Dictionary=false; Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 2.84 on 10.11.54.1
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
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"

Hi Ibrahim,
yes, within the Keybindingsdialogue in the Orca-Settings. You have to 
define an own shortcut. The preset has not any shortcut at the certain 
position.
Greetings,
Wolfram

Am 03.12.21 um 00:16 schrieb Linux for blind general discussion:
> Hi Friends,
>
> I have two questions. I hope some of you who are well versed with 
> Linux and orca can help.
>
> First, Is it possible to make a keyboard shortcut to switch between 
> Screen reader profiles? I made a profile with the Arabic voice to read 
> Arabic Material, and another profile for English. I had to do that 
> because Voxin does not support automatic language switching, or at 
> least not yet.
>
> I know how to switch profiles by going to the orca settings, but it 
> will be great if there is a shortcut to switch profiles on the fly.
>
> My second question is: how can I change the speed rate of orca? The 
> Arabic voice I use reads slowly for my liking. Is there a way of 
> adjusting the speed? I looked at the sixty shortcuts of Orca but I saw 
> nothing that may answer any of my two questions.
>
> Cheers,
>
> Ibrahim
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

