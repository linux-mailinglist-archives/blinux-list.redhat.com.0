Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	by mail.lfdr.de (Postfix) with ESMTPS id BB27945D15E
	for <lists+blinux-list@lfdr.de>; Thu, 25 Nov 2021 00:47:00 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1637797619;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=daTb9fETf2QjbKzGinw1ukiONfmFs+8p8dD2v3pkG/U=;
	b=XhRyb9VOlx5XKnmNIs5S1gQsPxlDzEhFM3D3aeFKhAWQYJlVI0FxwgH8ul5eDuks0ZFMf+
	blp7oYrQaWejJwmotBBKxg0/8bMqn1lSofIULpcm69DHNeDsXyOf5PtRb4mPk18OWlrSon
	KSfn134XOOK1/m+9eOdsF56FVpjw2GY=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-554-U_GBmqvaPSekL7ecId_MCA-1; Wed, 24 Nov 2021 18:46:56 -0500
X-MC-Unique: U_GBmqvaPSekL7ecId_MCA-1
Received: from smtp.corp.redhat.com (int-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.11])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 65E6083DD20;
	Wed, 24 Nov 2021 23:46:52 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id BD0A667851;
	Wed, 24 Nov 2021 23:46:46 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 395A01809C89;
	Wed, 24 Nov 2021 23:46:34 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx01.intmail.prod.int.rdu2.redhat.com
	[10.11.54.1])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 1AONkOu7000512 for <blinux-list@listman.util.phx.redhat.com>;
	Wed, 24 Nov 2021 18:46:24 -0500
Received: by smtp.corp.redhat.com (Postfix)
	id 472C840CFD0E; Wed, 24 Nov 2021 23:46:24 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast03.extmail.prod.ext.rdu2.redhat.com [10.11.55.19])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 420F140CFD02
	for <blinux-list@redhat.com>; Wed, 24 Nov 2021 23:46:24 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-2.mimecast.com [207.211.31.81])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
	bits)) (No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 27245811E76
	for <blinux-list@redhat.com>; Wed, 24 Nov 2021 23:46:24 +0000 (UTC)
Received: from mail-qt1-f177.google.com (mail-qt1-f177.google.com
	[209.85.160.177]) by relay.mimecast.com with ESMTP with STARTTLS
	(version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
	us-mta-411-OzxvsR5iNCGBez44EmyiBA-1; Wed, 24 Nov 2021 18:46:22 -0500
X-MC-Unique: OzxvsR5iNCGBez44EmyiBA-1
Received: by mail-qt1-f177.google.com with SMTP id t34so4423467qtc.7
	for <blinux-list@redhat.com>; Wed, 24 Nov 2021 15:46:22 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20210112;
	h=x-gm-message-state:subject:to:references:from:message-id:date
	:user-agent:mime-version:in-reply-to:content-transfer-encoding;
	bh=YKLE/1aOGA1E52tkCQlyPkOD9iSOdkbEcUU6LrwCB3A=;
	b=XkhcecbFj809K0T0V4xtObPkGVIftfSSbm1IwMpLd3VfWk8LHcZ2FbypdUUeJuwGGd
	HsgTR6TqMYbBpLfcjDL6kqyw/caRHar96bxJ0TkYTossg0pKZwBl9qm4j1X2G2BHNfsC
	xEzv2FCrHoKHSMRNUn6gPwehBXwIz6wHqQrvxUgmx/D88zZZyNjTcb7pEyrTUggXoqFR
	G9qQAvWQIRTtFZ71GnImtHbs3CA2zWN0AnMlA4ruK1t2NBECSTnBx/0xHy9weQdneutx
	tgpia1XAHiz72+PDWBBinsZnWZ1+99/UROSng1h/zlkNMSvOf8FQndU130M6RyGKAFwz
	ljHg==
X-Gm-Message-State: AOAM533R7XVaFoKcQJpbaZdfcjgp2kj/5ZwB2mWo8ct1TEG+rF4KVSUt
	stGMeS17bMBeVqajiu+RVM/2+FUt1dI=
X-Google-Smtp-Source: ABdhPJzHIYhRyxnqDOyIC55rPbrfrU7IfAjnW2vFOXZlLNSaLhJQNPsLACLkTdU9LbYEJi39FUmg3g==
X-Received: by 2002:a05:622a:8d:: with SMTP id
	o13mr3230402qtw.574.1637797582030; 
	Wed, 24 Nov 2021 15:46:22 -0800 (PST)
Received: from ?IPv6:2603:6080:6304:450a::960?
	(2603-6080-6304-450a-0000-0000-0000-0960.res6.spectrum.com.
	[2603:6080:6304:450a::960])
	by smtp.gmail.com with ESMTPSA id m9sm583884qkn.59.2021.11.24.15.46.21
	for <blinux-list@redhat.com>
	(version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
	Wed, 24 Nov 2021 15:46:21 -0800 (PST)
Subject: Re: Fedora and virtual machines not starting
To: Linux for blind general discussion <blinux-list@redhat.com>
References: <5c81b0ff-aff6-4a36-c51d-5d158ef96b69@gmail.com>
	<7e0f2665-fa77-42db-62bc-bc92ecd199d9@gmail.com>
	<521d7813-65f3-ed3b-6a0d-9377ef379904@gmail.com>
	<2a4351fc-b90c-b662-1fce-7999a721bad6@gmail.com>
	<d8052d3c-e817-2800-8039-d93f30b02803@gmail.com>
Message-ID: <bde9c567-412b-7d13-9726-fe7a1fff0994@gmail.com>
Date: Wed, 24 Nov 2021 18:46:20 -0500
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
	Thunderbird/60.0
MIME-Version: 1.0
In-Reply-To: <d8052d3c-e817-2800-8039-d93f30b02803@gmail.com>
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
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.11
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"

I just tried running a qemu script with the Fedora Rawhide iso that I used in 
gnome-boxes. Tried es1370 and sb16 to use as the virtual sound device, and I get 
the same silence. Is it possible that the Pipewire sound system that Fedora uses 
doesn't work in the virtual environment for some reason? I'm grasping at straws 
I know, but I can think of nothing that stops this from working. I have used 
this specific Rawhide iso on bare metal without any trouble, and I have loaded 
other distros' isos into qemu and gnome-boxes, and although loading into 
gnome-boxes did give me very laggy performance, especially with audio, it did work.
~Kyle

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://listman.redhat.com/mailman/listinfo/blinux-list

