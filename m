Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.129.124])
	by mail.lfdr.de (Postfix) with ESMTPS id D9E1A4B74DA
	for <lists+blinux-list@lfdr.de>; Tue, 15 Feb 2022 20:54:18 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1644954857;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=R5lDNhCCtAisik6jD/BcXjf+UIJXHrj0cexzLWBf4Mg=;
	b=aAcOiOK4nGmdmXRVRCz1qlENCMeiJ28b27+F1w9T952N6kMJyzakU4VotwbwUzofF11N/1
	z5B+Hfg2x0SdIJhN5cmLoLy0kDolX97cW2OVjJjtHl4bd3HtNN0ieyF3oNhVj6aw7Nk2h/
	zJC/SXhJaxG8Bbl9blfKbsEzxvsh/7s=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-341-MGF9mACKN5GRyltIuHD2MQ-1; Tue, 15 Feb 2022 14:54:14 -0500
X-MC-Unique: MGF9mACKN5GRyltIuHD2MQ-1
Received: from smtp.corp.redhat.com (int-mx04.intmail.prod.int.phx2.redhat.com [10.5.11.14])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 5541B801B30;
	Tue, 15 Feb 2022 19:54:10 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 36E2E5DF2E;
	Tue, 15 Feb 2022 19:54:10 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 81E821809CB9;
	Tue, 15 Feb 2022 19:54:09 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx08.intmail.prod.int.rdu2.redhat.com
	[10.11.54.8])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 21FJs6mw002849 for <blinux-list@listman.util.phx.redhat.com>;
	Tue, 15 Feb 2022 14:54:06 -0500
Received: by smtp.corp.redhat.com (Postfix)
	id 51099C080A9; Tue, 15 Feb 2022 19:54:06 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast03.extmail.prod.ext.rdu2.redhat.com [10.11.55.19])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 4D26CC080A7
	for <blinux-list@redhat.com>; Tue, 15 Feb 2022 19:54:06 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com
	[207.211.31.120])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 34612801005
	for <blinux-list@redhat.com>; Tue, 15 Feb 2022 19:54:06 +0000 (UTC)
Received: from mail-qt1-f174.google.com (mail-qt1-f174.google.com
	[209.85.160.174]) by relay.mimecast.com with ESMTP with STARTTLS
	(version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
	us-mta-161-v4LbIXQ3PEuIZQilYNu4yA-1; Tue, 15 Feb 2022 14:54:04 -0500
X-MC-Unique: v4LbIXQ3PEuIZQilYNu4yA-1
Received: by mail-qt1-f174.google.com with SMTP id ca12so1967514qtb.4
	for <blinux-list@redhat.com>; Tue, 15 Feb 2022 11:54:04 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20210112;
	h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
	:content-language:to:references:from:in-reply-to
	:content-transfer-encoding;
	bh=yeUzq3rdxnzyXwckaAwy+1ZVePeQHapWWNPjQoXBspc=;
	b=ZKKQnSvNUBuJd4B0I1aKG3MFnPXorYe8n/KfNc9GfQ3mfRcv4pBRxt+Y33Et5EGBNz
	O2YbFl/ahi/idoDmAhSrRc8OToo+EhEVlem2qG76TglVgMPzckbVs2u5IViTgVkSLg4O
	CaNZoV4yLBiT8E3us/6sBRRcsLsUqBZQK6VFe/ulnho4iADLl+DorE/hGtpEhF6tCAEW
	C619lox7XHEcnoVJ2KJ8gR7mXIv4NzLcpzlX8O99ArslzQjKcw5QFVTOXjLcNepEtkM8
	R0MzeO75fCf1epl7kD5GvnzvWqBUpq+5t/LORLDtMHigLinBHDSbHbshHSuJRbK/SGUz
	ujgQ==
X-Gm-Message-State: AOAM532yzZ0IUdUFVEpB6/NzSw6v/NoTtkN6y2sba+Sq9FtcjZM7NPI9
	vG3i6bAbA+b+KL/QqdjTBsX3QNJLKvJtCQ==
X-Google-Smtp-Source: ABdhPJz8MV9Un0ZonBhVhPIOejws4y8Tvb4zz51EEBLTYo1kUYRwQTkkRswpuaX1A8auVqg3B53n/Q==
X-Received: by 2002:a05:622a:1981:: with SMTP id
	u1mr557453qtc.175.1644954843469; 
	Tue, 15 Feb 2022 11:54:03 -0800 (PST)
Received: from ?IPV6:2601:192:4c80:1420:7467:d1fd:59b:2e92?
	([2601:192:4c80:1420:7467:d1fd:59b:2e92])
	by smtp.gmail.com with ESMTPSA id 5sm20267942qtp.81.2022.02.15.11.54.02
	for <blinux-list@redhat.com>
	(version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
	Tue, 15 Feb 2022 11:54:03 -0800 (PST)
Message-ID: <bac75179-5e55-1893-4303-f56f3e04d148@gmail.com>
Date: Tue, 15 Feb 2022 14:54:02 -0500
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
	Thunderbird/91.5.1
Subject: Re: Accessibility of installing Distros?
To: blinux-list@redhat.com
References: <4ced451-6f9c-3d8c-3a80-ce15147d9f2b@brandt-slint.local>
In-Reply-To: <4ced451-6f9c-3d8c-3a80-ce15147d9f2b@brandt-slint.local>
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

I forgot Devuan, or, would you just consider that a Debian spin?



On 2/15/22 14:47, Linux for blind general discussion wrote:
> What other options do we, the Blind Linux users have? And, no, I 
> really don't count Ubuntu spins, (Mint, Trisquel, PopOS, Accessible 
> Coconut, etc.)

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://listman.redhat.com/mailman/listinfo/blinux-list

