Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.129.124])
	by mail.lfdr.de (Postfix) with ESMTPS id B394A4A37B4
	for <lists+blinux-list@lfdr.de>; Sun, 30 Jan 2022 17:32:44 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1643560361;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=cojfX5VwHcEazT3BNMMXBibQWk2AEK6fNnPzgLpz7K0=;
	b=EDGTlitK2u9zcLSlsWWBExD66twK9wNfg48+l6vIlNvbftwXw64lNlkTushErtquk9pRU4
	AQWVbOYJQn1TgnNJhchtGf1V1jlE6zN2u/dKfKJCilOmgY4EVKtoLTQ+fYCWrL6tZ+zRsz
	41INiwMk0TLQjnjs/CUN7v2KrtT8itk=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-113-xqw0TuADMhem0qUk7q92Hw-1; Sun, 30 Jan 2022 11:32:36 -0500
X-MC-Unique: xqw0TuADMhem0qUk7q92Hw-1
Received: from smtp.corp.redhat.com (int-mx05.intmail.prod.int.phx2.redhat.com [10.5.11.15])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 0E5DE1006AA3;
	Sun, 30 Jan 2022 16:32:32 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id CD65A74E9E;
	Sun, 30 Jan 2022 16:32:29 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 2002F1809CB8;
	Sun, 30 Jan 2022 16:32:23 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx09.intmail.prod.int.rdu2.redhat.com
	[10.11.54.9])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 20UGWFis016146 for <blinux-list@listman.util.phx.redhat.com>;
	Sun, 30 Jan 2022 11:32:15 -0500
Received: by smtp.corp.redhat.com (Postfix)
	id 04043492CA4; Sun, 30 Jan 2022 16:32:15 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast01.extmail.prod.ext.rdu2.redhat.com [10.11.55.17])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id F4084492CA3
	for <blinux-list@redhat.com>; Sun, 30 Jan 2022 16:32:14 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-2.mimecast.com [205.139.110.61])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id DAAA085A5A8
	for <blinux-list@redhat.com>; Sun, 30 Jan 2022 16:32:14 +0000 (UTC)
Received: from mail-ed1-f52.google.com (mail-ed1-f52.google.com
	[209.85.208.52]) by relay.mimecast.com with ESMTP with STARTTLS
	(version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
	us-mta-644-bq6Tb4lAN4m8WfdQ_O22GQ-1; Sun, 30 Jan 2022 11:32:13 -0500
X-MC-Unique: bq6Tb4lAN4m8WfdQ_O22GQ-1
Received: by mail-ed1-f52.google.com with SMTP id p7so22088671edc.12
	for <blinux-list@redhat.com>; Sun, 30 Jan 2022 08:32:12 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20210112;
	h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
	:content-language:to:references:from:in-reply-to
	:content-transfer-encoding;
	bh=H6L36gRUtwM91kAAgXTbzLtIT38xb+XBIKHv1YA8XnI=;
	b=EE/PGz1V2KvrMmQl6+0fpeuRuBmK+k9WOPCfk6168GPya5HObZ63GTYgnbQOe8wHBA
	PZlIMFt+8QcXBnQLqlPeHJ2pqZdxPePORozo3HO07r6gDW4KtFn5qqPut0xXI62GL3Rl
	AX5/o9vwGW0C3xYX97yQzheZLqwAJBddJbPQLS0bdGu+xN43+8ecHOMMRyxqR5BmhZo1
	uFyQQEWxWvY/fM0IeXOdDNfZXxiHN9Npin6zCeuXUxicxM9CNS/5t/phaId3bM+kTMDj
	4DMYKZgQoJwuNCP+YXeA4wLSX4Zn3UA3gL4ghepLhHYzLYTlDWuKzpIe657wzNE8vuXI
	TARw==
X-Gm-Message-State: AOAM531PNkejGB3puO5GJiNd/TBysSKYUqjcXfjB870gEtY5tinqzsND
	EdezjRFzVBZ+qeha9gprY+9JQsbZrJI=
X-Google-Smtp-Source: ABdhPJwPB9YQ0O8vxNj7sHUkOFt7EGK9LJmEVVaE0F3a19N3tUz7dhgIEHzuOLZDXPGKaU43aXKUkg==
X-Received: by 2002:a05:6402:51d1:: with SMTP id
	r17mr16894555edd.22.1643560331511; 
	Sun, 30 Jan 2022 08:32:11 -0800 (PST)
Received: from [192.168.8.130] ([197.184.177.61])
	by smtp.gmail.com with ESMTPSA id
	gr24sm12187973ejb.185.2022.01.30.08.32.10
	for <blinux-list@redhat.com>
	(version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
	Sun, 30 Jan 2022 08:32:11 -0800 (PST)
Message-ID: <28fbe160-383e-388e-213e-907d29a19ade@gmail.com>
Date: Sun, 30 Jan 2022 18:32:07 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
	Thunderbird/91.5.1
Subject: Re: Looking for good radio software
To: Linux for blind general discussion <blinux-list@redhat.com>
References: <76ca400a-9d22-df23-7de2-82c3e3a16967@gmail.com>
	<fb33c316-a8f2-a123-2169-257d635a9ade@gmail.com>
In-Reply-To: <fb33c316-a8f2-a123-2169-257d635a9ade@gmail.com>
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection
	Definition; Similar Internal Domain=false;
	Similar Monitored External Domain=false;
	Custom External Domain=false; Mimecast External Domain=false;
	Newly Observed Domain=false; Internal User Name=false;
	Custom Display Name List=false; Reply-to Address Mismatch=false;
	Targeted Threat Dictionary=false;
	Mimecast Threat Dictionary=false; Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 2.85 on 10.11.54.9
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

Hi Kyle,


For listening to uninterupted music, I use the Spotify client, since I'm 
paying for the service anyway.


I'm looking specifically for radio software, for radio, not necessarily 
music as such.


Warm regards,

Brandt Steenkamp

Sent from the Slint machine using Thunderbird

On 2022/01/30 06:08, Linux for blind general discussion wrote:
> One of the best ways I've found to listen to music is with a desktop 
> application called Pithos. It's a Pandora client, so you will need an 
> account, but although I already had one, I believe it allows you to 
> set it up from within the app. The added benefit of Pithos over the 
> Pandora website is that it eliminates the ads, so you get what could 
> be considered the Pandora Plus experience at no cost right from within 
> Pithos. Just the music, and everyone and everything you wanna mix 
> together, completely free and uninterrupted.
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

