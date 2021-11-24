Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.129.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 498BD45D145
	for <lists+blinux-list@lfdr.de>; Thu, 25 Nov 2021 00:31:28 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1637796687;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=uvPKt/r/P9YIWFK6yhdrv8BP4ZuqIWZLO4wH4z3uEoE=;
	b=XxVg/knJKiFPknZLPqPXcF9omQoVa4lMwAarDcJ6PMBbuZNI+Vp6acbB6EzId2boStgSJ3
	ugY/zNrshCWPZYwURmfX/jc+n7iDm5UYs/USAy7e+0GzSUaCkr4t78XuEWwQ6neFZA1VYF
	eEqcFiDHrXjK2vhcVhYuDhTorH8/oCs=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-37-J0m_ghSuN8SmvcX7B_KqoQ-1; Wed, 24 Nov 2021 18:31:23 -0500
X-MC-Unique: J0m_ghSuN8SmvcX7B_KqoQ-1
Received: from smtp.corp.redhat.com (int-mx04.intmail.prod.int.phx2.redhat.com [10.5.11.14])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id B7B7B83DD20;
	Wed, 24 Nov 2021 23:31:17 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 721945D9CA;
	Wed, 24 Nov 2021 23:31:12 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id EC0941809C89;
	Wed, 24 Nov 2021 23:31:03 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx01.intmail.prod.int.rdu2.redhat.com
	[10.11.54.1])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 1AONUtPI030962 for <blinux-list@listman.util.phx.redhat.com>;
	Wed, 24 Nov 2021 18:30:55 -0500
Received: by smtp.corp.redhat.com (Postfix)
	id 8025B4010FF8; Wed, 24 Nov 2021 23:30:55 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast05.extmail.prod.ext.rdu2.redhat.com [10.11.55.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 7A68940CFD02
	for <blinux-list@redhat.com>; Wed, 24 Nov 2021 23:30:55 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-2.mimecast.com [205.139.110.61])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 60910800C00
	for <blinux-list@redhat.com>; Wed, 24 Nov 2021 23:30:55 +0000 (UTC)
Received: from mail-wm1-f52.google.com (mail-wm1-f52.google.com
	[209.85.128.52]) by relay.mimecast.com with ESMTP with STARTTLS
	(version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
	us-mta-544-owuIh8DcPTmWecWXDjVxlg-1; Wed, 24 Nov 2021 18:30:53 -0500
X-MC-Unique: owuIh8DcPTmWecWXDjVxlg-1
Received: by mail-wm1-f52.google.com with SMTP id
	o19-20020a1c7513000000b0033a93202467so3382760wmc.2
	for <blinux-list@redhat.com>; Wed, 24 Nov 2021 15:30:53 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20210112;
	h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
	:content-language:to:references:from:in-reply-to
	:content-transfer-encoding;
	bh=5N1BPRMkSBV4QWztqKa4cgBotCCe1ze+CLicy+yS3eQ=;
	b=yTMRQFNJdAWtp7EvsYQD+H8Fd9iJtvvRtdKqp6x8E80gtCHEpKj20yJnWQn+I/OEFY
	2ORIe+yfNYbOwY009/BEfV70cLHOlnf4Yg/oPI5AX2BeyhyXqzprilAYmoLdc1Yuu8EF
	ic3nCOuHBw13hpKIYD2Y3Mh8ntAfXuuetSCa2AiAVNLBJDZVsOO1VGzyh5hk1BVGR0Qz
	ya0KTZ/eY6/q/TrCKmevHfcqbTIw5++XLAAmGtC6sWH4LcrUaDLneWe5LNbbpIIv3v47
	yhF+Ch3ElaYvHtA1Zkh0gDMmNwQZetgG/zZjBsjPFUSY1/WKoU7YeUmTsoJEAcQEZoyv
	l3pg==
X-Gm-Message-State: AOAM532i94Rc0OoXMQwbdoewJ/ylH90iHFwzejTbzyP6I0ZQhJGGofsJ
	sGuD7t/DO+svHTACbQ0Q7+BmU7WT0a50rw==
X-Google-Smtp-Source: ABdhPJxzEmJX5RY1vP2vYk64NxOYAqzqe3Pv3mkz0CXu/L3XMIMo7JvDCkVe4XYpBbbQl1BSw+xxLA==
X-Received: by 2002:a05:600c:a45:: with SMTP id
	c5mr1160420wmq.79.1637796652082; 
	Wed, 24 Nov 2021 15:30:52 -0800 (PST)
Received: from [192.168.1.130] ([90.251.213.111])
	by smtp.gmail.com with ESMTPSA id t8sm1234586wmq.32.2021.11.24.15.30.51
	for <blinux-list@redhat.com>
	(version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
	Wed, 24 Nov 2021 15:30:51 -0800 (PST)
Message-ID: <d8052d3c-e817-2800-8039-d93f30b02803@gmail.com>
Date: Wed, 24 Nov 2021 23:30:59 +0000
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
	Thunderbird/91.3.0
Subject: Re: Fedora and virtual machines not starting
To: blinux-list@redhat.com
References: <5c81b0ff-aff6-4a36-c51d-5d158ef96b69@gmail.com>
	<7e0f2665-fa77-42db-62bc-bc92ecd199d9@gmail.com>
	<521d7813-65f3-ed3b-6a0d-9377ef379904@gmail.com>
	<2a4351fc-b90c-b662-1fce-7999a721bad6@gmail.com>
In-Reply-To: <2a4351fc-b90c-b662-1fce-7999a721bad6@gmail.com>
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
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.14
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"

As an aside, I tried grabbing a Rawhide .iso from the official site and 
running it in virtualbox.

Same deal. No sound at all that I could tell, and increasing the volume 
did nothing, nor did twaking the virtualbox audio settings.

Currently grabbing Fedora 34 with quickemu that's pulling it, by the 
lookss of it from the official DL site. Hopefully Fedora didn't give us 
a silent ISO. That's not what I want by silent install thanks, Red Hat 
people...I'm just confused why it's not giving any sound output with a 
Rawhide ISO on both our tests with two different virtualization systems

On 11/24/21 22:53, Linux for blind general discussion wrote:
> Interesting ...
> I just tried running a Fedora Rawhide iso in gnome-boxes and I get no 
> sound. I can see the desktop come up, but no sound is heard. I thought 
> it was starting muted somehow, but I can't increase the volume either. 
> I need to try it with a qemu startup script and hopefully I can make 
> it work.
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

