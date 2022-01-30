Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.129.124])
	by mail.lfdr.de (Postfix) with ESMTPS id BAD8B4A33A4
	for <lists+blinux-list@lfdr.de>; Sun, 30 Jan 2022 05:08:47 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1643515726;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=RJ4J0oEBpW+YF8cgO/OiPmbjWYEm5xUR26Rl1ixTtlk=;
	b=L29kg0GbjAGFPao3UB9VKERyVcXQoRl+oVLADM+Jh9gcfBJqJEej1dJ98m5749TPwxVxNo
	xBYvyJW9MEaoEGL+wXYQ9Ft4nM4rGP5zwxbhBFJlseeVjjgHidkoHd+/cI8Kj+qPE/R3FX
	7VfQMkznM7mVZyZSCMz1oWLiiQH1k3s=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-627-6PAsz5TDP3KJpkVyFHZtvw-1; Sat, 29 Jan 2022 23:08:43 -0500
X-MC-Unique: 6PAsz5TDP3KJpkVyFHZtvw-1
Received: from smtp.corp.redhat.com (int-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.11])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id A74D7801B0B;
	Sun, 30 Jan 2022 04:08:39 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 6364F5DB85;
	Sun, 30 Jan 2022 04:08:38 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id DE1CE1809CB8;
	Sun, 30 Jan 2022 04:08:37 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx06.intmail.prod.int.rdu2.redhat.com
	[10.11.54.6])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 20U48XYA000567 for <blinux-list@listman.util.phx.redhat.com>;
	Sat, 29 Jan 2022 23:08:34 -0500
Received: by smtp.corp.redhat.com (Postfix)
	id E0AEF2144B24; Sun, 30 Jan 2022 04:08:33 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast03.extmail.prod.ext.rdu2.redhat.com [10.11.55.19])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id DBCA42144B21
	for <blinux-list@redhat.com>; Sun, 30 Jan 2022 04:08:29 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com
	[207.211.31.120])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id C4F30811E76
	for <blinux-list@redhat.com>; Sun, 30 Jan 2022 04:08:29 +0000 (UTC)
Received: from mail-qt1-f181.google.com (mail-qt1-f181.google.com
	[209.85.160.181]) by relay.mimecast.com with ESMTP with STARTTLS
	(version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
	us-mta-363-HLDzQtyPPLGxtG5yhehiGw-1; Sat, 29 Jan 2022 23:08:27 -0500
X-MC-Unique: HLDzQtyPPLGxtG5yhehiGw-1
Received: by mail-qt1-f181.google.com with SMTP id v5so8624203qto.7
	for <blinux-list@redhat.com>; Sat, 29 Jan 2022 20:08:27 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20210112;
	h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
	:content-language:to:references:from:in-reply-to
	:content-transfer-encoding;
	bh=PbC8Gf4QgT9uhesExVZVl2in1UxkaqiYrqVTN4Nlayk=;
	b=RYgZWfOYuywGDouFIUJCZlBVPbo9gaUw331aHHxlDGU2IOPLOwT1QXmliLoEORpT07
	fFxyo8RXk/GflCF8YpR/A/9QDBJ+KuIeg47fkbdxxJYYT7a62GIPtQgM2Qax6icLfwa9
	SC1vKcYDlcx6g/njB5jyd10EB9vGXTZP1JAdKsOLcl7tO9BThK+NvIlq9Ir5iWtDWCkj
	dHJTr2Dn4fZ+vkNHsplQuj8Csd6HVvGPFv6LO/sYucp13p56qPUKJuEWmI3xPmwqmwkE
	KAvYU+16eqxrs9xP2tkJ67xdMq+195zOEedqaHU+KRTz90mCEZ9RZ8g4NCrktey5HHCv
	KOiw==
X-Gm-Message-State: AOAM533qkLLCaNsywRd8RBkV2LydgmY5IdAQwrq52Q4a9DGaAjhdaBeU
	DQkSo2dBW1fmFL6YevhXFrHzixDA9aBU8Q==
X-Google-Smtp-Source: ABdhPJz14hL6X7ZtkQL6e8ztE6EEWM5pbmfgoNyjbd8o6YzfrTyyri+QausXBhltzewhEDz4DhGU1Q==
X-Received: by 2002:a05:622a:90:: with SMTP id
	o16mr2689302qtw.91.1643515707300; 
	Sat, 29 Jan 2022 20:08:27 -0800 (PST)
Received: from ?IPV6:2603:6080:6302:e002:e826:5227:4681:6e2d?
	(2603-6080-6302-e002-e826-5227-4681-6e2d.res6.spectrum.com.
	[2603:6080:6302:e002:e826:5227:4681:6e2d])
	by smtp.gmail.com with ESMTPSA id s6sm6391510qko.93.2022.01.29.20.08.26
	for <blinux-list@redhat.com>
	(version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
	Sat, 29 Jan 2022 20:08:27 -0800 (PST)
Message-ID: <fb33c316-a8f2-a123-2169-257d635a9ade@gmail.com>
Date: Sat, 29 Jan 2022 23:08:26 -0500
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
	Thunderbird/91.5.0
Subject: Re: Looking for good radio software
To: Linux for blind general discussion <blinux-list@redhat.com>
References: <76ca400a-9d22-df23-7de2-82c3e3a16967@gmail.com>
In-Reply-To: <76ca400a-9d22-df23-7de2-82c3e3a16967@gmail.com>
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
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.11
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"

One of the best ways I've found to listen to music is with a desktop 
application called Pithos. It's a Pandora client, so you will need an 
account, but although I already had one, I believe it allows you to set 
it up from within the app. The added benefit of Pithos over the Pandora 
website is that it eliminates the ads, so you get what could be 
considered the Pandora Plus experience at no cost right from within 
Pithos. Just the music, and everyone and everything you wanna mix 
together, completely free and uninterrupted.

~Kyle

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://listman.redhat.com/mailman/listinfo/blinux-list

