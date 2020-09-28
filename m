Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [216.205.24.124])
	by mail.lfdr.de (Postfix) with ESMTP id 8FE4727B35D
	for <lists+blinux-list@lfdr.de>; Mon, 28 Sep 2020 19:35:51 +0200 (CEST)
Dkim-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1601314550;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=shZCqgJDYbwnaOki16jWm5cjFKUBsCznYxMeY3SCnHw=;
	b=gS+F9e791t757ZLApzoVHgbfQTAwJeMlJwx3gFpCBHxsuXHr7yRgPlvNEBfTy1zBBNCRSw
	KoHpzdms0UhPrylZZ0MDyW/EBDsS1yqn8WJvwpUqczGEiBoidqcy5Vc6gh7xlVpOfHDRDe
	4h1JBcLOPxgXcAUTlaJCJl/3sbdE9r4=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-305-iIE_V1bKMp6ROLfEzEXfqg-1; Mon, 28 Sep 2020 13:35:48 -0400
X-MC-Unique: iIE_V1bKMp6ROLfEzEXfqg-1
Received: from smtp.corp.redhat.com (int-mx06.intmail.prod.int.phx2.redhat.com [10.5.11.16])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id DFEE28014D8;
	Mon, 28 Sep 2020 17:35:43 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id E64605C1BD;
	Mon, 28 Sep 2020 17:35:42 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 8B22544A4A;
	Mon, 28 Sep 2020 17:35:41 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx04.intmail.prod.int.rdu2.redhat.com
	[10.11.54.4])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 08SHZZw5030611 for <blinux-list@listman.util.phx.redhat.com>;
	Mon, 28 Sep 2020 13:35:35 -0400
Received: by smtp.corp.redhat.com (Postfix)
	id 23B4A2028DC0; Mon, 28 Sep 2020 17:35:35 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast04.extmail.prod.ext.rdu2.redhat.com [10.11.55.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 1E2C62023499
	for <blinux-list@redhat.com>; Mon, 28 Sep 2020 17:35:32 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com
	[205.139.110.120])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id A030C102F1E5
	for <blinux-list@redhat.com>; Mon, 28 Sep 2020 17:35:32 +0000 (UTC)
Received: from mail-qv1-f49.google.com (mail-qv1-f49.google.com
	[209.85.219.49]) (Using TLS) by relay.mimecast.com with ESMTP id
	us-mta-466-UjGS64XwMVmRP0W4zhx5Jg-1; Mon, 28 Sep 2020 13:35:24 -0400
X-MC-Unique: UjGS64XwMVmRP0W4zhx5Jg-1
Received: by mail-qv1-f49.google.com with SMTP id j3so867286qvi.7
	for <blinux-list@redhat.com>; Mon, 28 Sep 2020 10:35:24 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:subject:to:references:from:message-id:date
	:user-agent:mime-version:in-reply-to:content-transfer-encoding
	:content-language;
	bh=m0fXct0BmmlYvwDIgZBrYE7YQE6hRWPqYhIC/TkABlU=;
	b=LrlLoyPblNJ6MMHxrkk+IdNhUl4AZT3aLe+SPzy3S15fYvjPS8LwfJcQ5gZggEg7+f
	/6k60eISG30Te9AAgBQszVxH9UK/IbkaiD4OiJtBcAmHpMwSN61A/oJumYPoVeT3Y2pD
	vZtCSbmCd8HE7wgcuvnfNgoT2IF+yf1dVQlKogZOUEDwWbr7pgMB8RLdFYQ2/jKe6jiS
	6UaEXV3i99DGgdV4wUyFvwloYk4Wr197Jgcd2NbwTbWKq6GmXh+znF/qq0VYvtGRiGRI
	cMienmw6ccF27EI37uWEC7bTmIS5Pb4HXdpt5dxIARWRDc4J9KLe1o/3kaM/Weab/3dx
	oeYQ==
X-Gm-Message-State: AOAM533GvIxBv74a7BYaNWd8bsmqm+2pGwENgg9BWu0dkF8el8wuk21N
	ofoD9TtOJeOIq1A93BHK8rQziMV+2bqFhQ==
X-Google-Smtp-Source: ABdhPJxc6+sCe1J078VJLKp1EGJWpVomRwPhYyGAJVIzGbSLciwQDOjw1ak9HFpM/bZwH07jNlS/nw==
X-Received: by 2002:a0c:a504:: with SMTP id y4mr562367qvy.52.1601314523531;
	Mon, 28 Sep 2020 10:35:23 -0700 (PDT)
Received: from ?IPv6:2606:a000:111a:8d0a::5d7?
	(2606-a000-111a-8d0a-0000-0000-0000-05d7.inf6.spectrum.com.
	[2606:a000:111a:8d0a::5d7]) by smtp.gmail.com with ESMTPSA id
	e26sm1671252qka.24.2020.09.28.10.35.22 for <blinux-list@redhat.com>
	(version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
	Mon, 28 Sep 2020 10:35:23 -0700 (PDT)
Subject: Re: gentoo!
To: Linux for blind general discussion <blinux-list@redhat.com>
References: <alpine.NEB.2.23.451.2009281038260.10367@panix1.panix.com>
	<5545aa4f-68da-b49a-6456-23387aca2caf@gmail.com>
	<alpine.NEB.2.23.451.2009281046441.11282@panix1.panix.com>
	<dd3eb5a7-8e1f-b37f-5f75-bb8f56557a7d@gmail.com>
	<alpine.NEB.2.23.451.2009281242500.13904@panix1.panix.com>
Message-ID: <7b288cc3-a29e-46f0-4400-bd6a79f95110@gmail.com>
Date: Mon, 28 Sep 2020 13:35:20 -0400
User-Agent: Mozilla/5.0 (X11; Linux aarch64; rv:68.0) Gecko/20100101
	Thunderbird/68.12.0
MIME-Version: 1.0
In-Reply-To: <alpine.NEB.2.23.451.2009281242500.13904@panix1.panix.com>
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection
	Definition; Similar Internal Domain=false;
	Similar Monitored External Domain=false;
	Custom External Domain=false; Mimecast External Domain=false;
	Newly Observed Domain=false; Internal User Name=false;
	Custom Display Name List=false; Reply-to Address Mismatch=false;
	Targeted Threat Dictionary=false;
	Mimecast Threat Dictionary=false; Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 2.78 on 10.11.54.4
X-loop: blinux-list@redhat.com
From: Linux for blind general discussion <blinux-list@redhat.com>
X-BeenThere: blinux-list@redhat.com
X-Mailman-Version: 2.1.12
Precedence: junk
Reply-To: blinux-list@redhat.com
List-Id: Linux for blind general discussion <blinux-list.redhat.com>
List-Unsubscribe: <https://www.redhat.com/mailman/options/blinux-list>,
	<mailto:blinux-list-request@redhat.com?subject=unsubscribe>
List-Archive: <https://www.redhat.com/archives/blinux-list>
List-Post: <mailto:blinux-list@redhat.com>
List-Help: <mailto:blinux-list-request@redhat.com?subject=help>
List-Subscribe: <https://www.redhat.com/mailman/listinfo/blinux-list>,
	<mailto:blinux-list-request@redhat.com?subject=subscribe>
Sender: blinux-list-bounces@redhat.com
Errors-To: blinux-list-bounces@redhat.com
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.16
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"

Unfortunately I may have to throw that ball to someone else. Tar is 
pretty basic stuff, but I haven't delved deeply enough into Gentoo to be 
able to help with this problem. The Portage stuff with emerge and 
friends seems simple enough, but sometimes things are not as they seem. 
My only suggestion is to remove the variable and see what happens, but 
then again, it just doesn't seem that straightforward. It's possible the 
variable name changed or something, which would certainly cause 
problems, and simply removing it usually doesn't fix them.

~Kyle

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://www.redhat.com/mailman/listinfo/blinux-list

