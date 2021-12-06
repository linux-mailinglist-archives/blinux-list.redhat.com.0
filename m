Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 5E97D46A124
	for <lists+blinux-list@lfdr.de>; Mon,  6 Dec 2021 17:21:03 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1638807662;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=XjxKkt9VirF3ysuqyIt81UI1b9On2XWSSnpDvCfQmA8=;
	b=YrNRB1g2/dtEp+HthM+eeIAvHk/ed2m1AeKRKnDlbv2J0OO+moBavVVdSv3aOtafafwfva
	Oyl9qCJYIhPjTCTX3EMsKxaMGbpRbB3x7bWR8ajU73ZAFPC8MuWApK0L21dzQxwTAh5Ufw
	Sa2IazTfOIA+tP09AAnSVw0Wy4qhvGI=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-334-zI6ZM-JgM7u06HNiunL-3A-1; Mon, 06 Dec 2021 11:20:59 -0500
X-MC-Unique: zI6ZM-JgM7u06HNiunL-3A-1
Received: from smtp.corp.redhat.com (int-mx04.intmail.prod.int.phx2.redhat.com [10.5.11.14])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id AD2E81B2C985;
	Mon,  6 Dec 2021 16:20:55 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id C580EADDC;
	Mon,  6 Dec 2021 16:20:54 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 44B984BB7C;
	Mon,  6 Dec 2021 16:20:50 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx08.intmail.prod.int.rdu2.redhat.com
	[10.11.54.8])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 1B6GKg8q001925 for <blinux-list@listman.util.phx.redhat.com>;
	Mon, 6 Dec 2021 11:20:42 -0500
Received: by smtp.corp.redhat.com (Postfix)
	id 7DECFC15E74; Mon,  6 Dec 2021 16:20:42 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast01.extmail.prod.ext.rdu2.redhat.com [10.11.55.17])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 79B32C15E72
	for <blinux-list@redhat.com>; Mon,  6 Dec 2021 16:20:42 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com
	[207.211.31.120])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 58A1485A5AA
	for <blinux-list@redhat.com>; Mon,  6 Dec 2021 16:20:42 +0000 (UTC)
Received: from mail-wm1-f46.google.com (mail-wm1-f46.google.com
	[209.85.128.46]) by relay.mimecast.com with ESMTP with STARTTLS
	(version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
	us-mta-273-OmxKgb_2OTuh2puFsb1GSg-1; Mon, 06 Dec 2021 11:20:40 -0500
X-MC-Unique: OmxKgb_2OTuh2puFsb1GSg-1
Received: by mail-wm1-f46.google.com with SMTP id
	i8-20020a7bc948000000b0030db7b70b6bso10823391wml.1
	for <blinux-list@redhat.com>; Mon, 06 Dec 2021 08:20:40 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20210112;
	h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
	:content-language:to:references:from:in-reply-to
	:content-transfer-encoding;
	bh=I/t5eIoJjfOkVyYPRARYoXMWJ6z2VopEiJJDMnNK0+Q=;
	b=evr8ahywsBApsh6sEmsnzgRPmzhmb6XTnIa2khjS4OMy9VHKDXozunzgOu7VTkuzx1
	w5cVGz+0mNkAVrmU6MoQ9t6OOnc3Fq/wvzujEeeNHAIKw3hUUWioa5JkN0ugsfNDkbRP
	z441BGeASaFf0SDHnl2yCfEA9lDGNQN/gdzT4gLH5Fgciw/bQ+nOpEOrlw1+5GX2edBg
	/0pHs/FLyE2xEz6PJF0FRhHbZu4AP5XfvD0G5yq4MYZsFKhueqGs8YbSLr7De9iK4s2P
	xjI2yiv1zMDkYp0w/CqOYpg4zttgPCc4KooF4RXWdbv9tPRQ9Oe0QWxwJd2TV83qtF0u
	/Dyg==
X-Gm-Message-State: AOAM531f4DtYK/3avwMa4GzrVh+dHFCW5WFW0d+KxD6ApNr/irKzYYVo
	T5HCmjVOVUBGwe8X4pRiGf+0BHCq9IVvDMqd
X-Google-Smtp-Source: ABdhPJze5UCIEDT58mCUHKsezWCjBb4d6u8R1gyU5unL9yNNBSyUstIso1bQrg1o6Oq2VA0cgvJesA==
X-Received: by 2002:a7b:c8d5:: with SMTP id f21mr40205279wml.146.1638807639163;
	Mon, 06 Dec 2021 08:20:39 -0800 (PST)
Received: from [192.168.1.221] ([90.251.25.70])
	by smtp.gmail.com with ESMTPSA id
	j40sm11699495wms.16.2021.12.06.08.20.38 for <blinux-list@redhat.com>
	(version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
	Mon, 06 Dec 2021 08:20:38 -0800 (PST)
Message-ID: <84bce9b3-9593-7bf3-9d43-f5b2b752c773@gmail.com>
Date: Mon, 6 Dec 2021 16:21:02 +0000
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
	Thunderbird/91.3.0
Subject: Re: Suggestions for Ratpoison-friendly apps?
To: blinux-list@redhat.com
References: <0818b814-95e3-f334-fb62-5a89bc96124e@gmail.com>
	<d6a364d7-7484-4b48-3700-1ba8f938d271@gmail.com>
	<00e07fa6-109f-b5c9-5680-ed8a56e959a9@slint.fr>
	<2b86a2b5-6e3d-08f6-6516-3a62a894ab62@gmail.com>
	<9468598d-1cb6-1c1f-4ddb-b1dbfeaf9740@gmail.com>
	<02e2f29d-b065-6591-d8ec-07d9b4a26e75@gmail.com>
	<b12ef7c4-e8f6-688c-706f-e97aef903c4a@gmail.com>
	<47dbd804-240f-b170-7f2c-6c96d189762c@gmail.com>
	<alpine.NEB.2.23.451.2112051228080.13531@panix1.panix.com>
	<88b763bc-c035-735f-0efe-dea5f26182d6@gmail.com>
	<459ce7d5-11e4-8707-77f8-0a4c46bb8899@gmail.com>
	<9098b35b-4f3d-0455-2a46-472e3d924cab@gmail.com>
	<CAPo=n--jv0xUAfGGYb3y16Rc4JkZphD7ySapij_dBZgWnY=ywQ@mail.gmail.com>
	<e9503aaa-86d5-e5fa-0abf-dc1a951ae425@gmail.com>
	<7f515825-d9ca-c954-924a-945902c4e68a@gmail.com>
	<98c96aae-9de1-69a4-5de0-98a1a022e654@gmail.com>
In-Reply-To: <98c96aae-9de1-69a4-5de0-98a1a022e654@gmail.com>
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection
	Definition; Similar Internal Domain=false;
	Similar Monitored External Domain=false;
	Custom External Domain=false; Mimecast External Domain=false;
	Newly Observed Domain=false; Internal User Name=false;
	Custom Display Name List=false; Reply-to Address Mismatch=false;
	Targeted Threat Dictionary=false;
	Mimecast Threat Dictionary=false; Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 2.85 on 10.11.54.8
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

One minor thing you missed was to set the second box to Oauth 2.0 else 
it'll try logging in with a plain password. For some reason on Arch it 
auto sets the outgoing to Oauth 2.0 but not the incoming server though 
which may be a distribution specific thing, I can't get Seamonkey on my 
Solus box because it's not important enough or something to be in the 
repos (same for espeakup and such too...)

On 12/6/21 15:31, Linux for blind general discussion wrote:
> The best way I found to set up gmail in Seamonkey is as follows.
>
> You will first need to be sure IMAP is enabled in gmail. Then you set 
> the server type to IMAP in Seamonkey mail. The server name is 
> imap.gmail.com, leave the port alone for now, then set the username to 
> your full email address. The smtp server is smtp.gmail.com, same 
> username. Once you set up the email account, select "mail and news 
> group account settings" from the edit menu. First change the security 
> to SSL/TLS. Then under the outgoing server settings in the tree, 
> activate the edit button and make the same change to the security 
> setting. You may need to close Seamonkey mail at this point, but the 
> next time you open it, you will be prompted for your password. If all 
> went well, you should have access to your gmail mailbox. I do agree 
> it's a bit of a hassle, but it is lighter and faster than Thunderbird.
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

