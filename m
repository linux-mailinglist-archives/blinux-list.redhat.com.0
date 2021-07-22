Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [216.205.24.124])
	by mail.lfdr.de (Postfix) with ESMTP id 911323D24F0
	for <lists+blinux-list@lfdr.de>; Thu, 22 Jul 2021 15:57:40 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1626962259;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=ddxl4HxGq84gx5kWYLCO9hrKnFZiNDI4cp7fq4LYobw=;
	b=BN0xdzzkECT+eX6YOOU1Y6dkld1Q3k8to6NnHEJ4qOtq8RtI7iCjgieoSdksTcqsOLLcFz
	Fbyt+imSk3s7NndGzeT6OJTy4DL0nmBcpMuq2zYlG6o5/84Rmx+bsGCwM326wJ67R9MLMU
	qgxfrDSsslQEKVMfEHMQxXHR0yu8bNY=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-439-zMsMpXqkO2KVsBW4umC7iQ-1; Thu, 22 Jul 2021 09:57:37 -0400
X-MC-Unique: zMsMpXqkO2KVsBW4umC7iQ-1
Received: from smtp.corp.redhat.com (int-mx04.intmail.prod.int.phx2.redhat.com [10.5.11.14])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id A8CC51084F61;
	Thu, 22 Jul 2021 13:57:32 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 3EC7A5DA2D;
	Thu, 22 Jul 2021 13:57:32 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 6E422180BAB2;
	Thu, 22 Jul 2021 13:57:30 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx03.intmail.prod.int.rdu2.redhat.com
	[10.11.54.3])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 16MDvOJj010717 for <blinux-list@listman.util.phx.redhat.com>;
	Thu, 22 Jul 2021 09:57:24 -0400
Received: by smtp.corp.redhat.com (Postfix)
	id 78AE910CB275; Thu, 22 Jul 2021 13:57:24 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast04.extmail.prod.ext.rdu2.redhat.com [10.11.55.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 74C0A10CB276
	for <blinux-list@redhat.com>; Thu, 22 Jul 2021 13:57:21 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-2.mimecast.com [205.139.110.61])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id AC9691078467
	for <blinux-list@redhat.com>; Thu, 22 Jul 2021 13:57:21 +0000 (UTC)
Received: from mail-wm1-f47.google.com (mail-wm1-f47.google.com
	[209.85.128.47]) (Using TLS) by relay.mimecast.com with ESMTP id
	us-mta-560-v8WoDTRJMS6ZxY7sutrZTw-1; Thu, 22 Jul 2021 09:57:19 -0400
X-MC-Unique: v8WoDTRJMS6ZxY7sutrZTw-1
Received: by mail-wm1-f47.google.com with SMTP id
	p15-20020a05600c358fb0290245467f26a4so3036469wmq.0
	for <blinux-list@redhat.com>; Thu, 22 Jul 2021 06:57:19 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:date:from:to:subject:message-id:references
	:mime-version:content-disposition:in-reply-to:user-agent;
	bh=B7aXkzXI4F1sUiA3ABZtnunP7PKJraypSYkHr2WAh0U=;
	b=qWFv8XV0sulKnqj974zAunuTB+/iKINzZP0W/ujz3oTX/h85idNGUPKE3dT8WZQGxA
	EnBJrshCnbkEAhLE1EQ7JcXYXQh9Im3sS2pcZr7VBUd7ys98rxRXFb4D3GEOIZWE7Sco
	lTiS2M+s4AbB1IO8feaP1OmDu/nKjNhhrVCd7fm2hW2zSF8+4QcTp73dV+1u4qiFa+2r
	3O/EQOnob1qT23JB20GOKFbErwqE9IVCtYtI/H7C618mjkmzHab3VSKPG8IHdWvBIPVZ
	6qu2Adkj9uBGKGLoLF22nF75SPRcKfliNknnQEK8FnH5C402+hKxW90vZP8kxnRVm/lW
	zntw==
X-Gm-Message-State: AOAM532tLUqqzObqbP/UJn0rpVfC4Snkhd3YhYwxgUhk6Z9d6+Urkb5j
	yxasnExkej8ELi+yYt9qW4Z9aHfr5Iu79w==
X-Google-Smtp-Source: ABdhPJyYxngmpE/LQEZ9E/vHsD6ZDemRSS2A3Xd2X87dLJZV7jPQGLwxni7EVY2wguI0QVLYAP8PTg==
X-Received: by 2002:a7b:c30f:: with SMTP id k15mr9360623wmj.128.1626962238108; 
	Thu, 22 Jul 2021 06:57:18 -0700 (PDT)
Received: from localhost ([91.77.167.245]) by smtp.gmail.com with ESMTPSA id
	y19sm2616510wma.21.2021.07.22.06.57.17 for <blinux-list@redhat.com>
	(version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
	Thu, 22 Jul 2021 06:57:17 -0700 (PDT)
Date: Thu, 22 Jul 2021 16:57:16 +0300
To: Linux for blind general discussion <blinux-list@redhat.com>
Subject: Re: Adjusting lightdm screenreader volume (How do I...)
Message-ID: <20210722135716.2tzxrhf6kamasv4k@alex-pc>
References: <b03aafa4-daf7-d333-f8dc-80aa029225c9@gmail.com>
MIME-Version: 1.0
In-Reply-To: <b03aafa4-daf7-d333-f8dc-80aa029225c9@gmail.com>
User-Agent: NeoMutt/20210205
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection
	Definition; Similar Internal Domain=false;
	Similar Monitored External Domain=false;
	Custom External Domain=false; Mimecast External Domain=false;
	Newly Observed Domain=false; Internal User Name=false;
	Custom Display Name List=false; Reply-to Address Mismatch=false;
	Targeted Threat Dictionary=false;
	Mimecast Threat Dictionary=false; Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 2.78 on 10.11.54.3
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
Content-Disposition: inline
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

On Thu, Jul 22, 2021 at 09:57:12AM +0100, Linux for blind general discussion wrote:
> So...quick question.
>
>
> On my former Ubuntu instal, lightdm was nice and quiet. Solus, on the other
> hand decided to crank the volume for the speech in lightdm up to 11. I can
> quite literally be in another room and hear when my computer's started if I
> don't have headphones plugged in.
>
>
> So....would that be adjusted in speech-d.conf or do I need to go hunting in
> the lightdm folders?
>
I think you can modify orca's settings to lower SD volume.

--
Sincerely, Alexander

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://listman.redhat.com/mailman/listinfo/blinux-list

