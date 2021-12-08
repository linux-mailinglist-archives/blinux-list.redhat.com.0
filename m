Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.129.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 14D2C46DBC4
	for <lists+blinux-list@lfdr.de>; Wed,  8 Dec 2021 20:04:49 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1638990289;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=Gx6cuwMj3zvynFKeNYh+dw+6P4bhTuB7ZwET19CmgMA=;
	b=Te7Nb0V/GWZrNgqtkn66QLocWr0xiuLOyXspHesXwK4M0ch1GgfxYa6wHAP5ktuH9OY0Yr
	yLVDo8roPc08xuROkqoH5FbK9rLz5yNiz1f7UIXvfBCPaL2nwuNLNKqJcEe5ePdAGvxl6Z
	yfLKxp5+iNEQZPXmwanhd/Fq0z9zAn8=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-77-cROWNRvpP52SGjF-hUQ6Kw-1; Wed, 08 Dec 2021 14:04:45 -0500
X-MC-Unique: cROWNRvpP52SGjF-hUQ6Kw-1
Received: from smtp.corp.redhat.com (int-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.12])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id D06C51023F4E;
	Wed,  8 Dec 2021 19:04:39 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id F1E2160BF1;
	Wed,  8 Dec 2021 19:04:36 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id A6B271809CB8;
	Wed,  8 Dec 2021 19:04:32 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx08.intmail.prod.int.rdu2.redhat.com
	[10.11.54.8])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 1B8J4PG5018874 for <blinux-list@listman.util.phx.redhat.com>;
	Wed, 8 Dec 2021 14:04:25 -0500
Received: by smtp.corp.redhat.com (Postfix)
	id 21966C08095; Wed,  8 Dec 2021 19:04:25 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast08.extmail.prod.ext.rdu2.redhat.com [10.11.55.24])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 1D292C08094
	for <blinux-list@redhat.com>; Wed,  8 Dec 2021 19:04:25 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-2.mimecast.com [205.139.110.61])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 02DB43932D31
	for <blinux-list@redhat.com>; Wed,  8 Dec 2021 19:04:25 +0000 (UTC)
Received: from mail-qt1-f171.google.com (mail-qt1-f171.google.com
	[209.85.160.171]) by relay.mimecast.com with ESMTP with STARTTLS
	(version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
	us-mta-58-Db_WCfMwNyiRQsVtSftLdg-1; Wed, 08 Dec 2021 14:04:23 -0500
X-MC-Unique: Db_WCfMwNyiRQsVtSftLdg-1
Received: by mail-qt1-f171.google.com with SMTP id v22so3123463qtx.8
	for <blinux-list@redhat.com>; Wed, 08 Dec 2021 11:04:23 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20210112;
	h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
	:content-language:to:references:from:in-reply-to
	:content-transfer-encoding;
	bh=ojUdgFIEYm/N+dx4AtohFk0rZiLX/DPP+00/IGVRi2o=;
	b=UbV+VvnJryU+znAdSNvgONyOGVsHsk2iw76M3qSu1ONpa/f+NE16T10oTkv98Sjapa
	DDUYgLpa9G8usFCW0oCEE+lVGFUVn3DL2DIIWHSaLuplxTIJlPrwrvGqzyhMBwstk0Q7
	kZt4Oa8O9mJuT6W3DQWyVH/mrOvdyNZSH0TQqxndppn+aJQp/ctzq1sJMXdMqXO+MGip
	6ZPMQfmmEGDsg5wa2+ZhC8TwD2iEPSNf1k+Rb/NgB6fF4BTd67E2LLKhax/hxwIcb9CE
	AigvgRh8c0BFt8O+lyGDtOEqnP7rKMJIk3qXlAJOtcH4LQp41Nc3cL+GfWi+eVzmZYU/
	1MwQ==
X-Gm-Message-State: AOAM532mVU2Gor4f8KSsFMr298ixkcxLqEwNLbAGQqRfvTWi5lNL49Zc
	6bSOQHRRhLtJqDqqamSSlLnMPANYK1E=
X-Google-Smtp-Source: ABdhPJzBk8aJjhEMnHOJZ1G73XKm+8bszw9ExIOw+2nAEqba7o4auIlJJUnpSTTYyLxYxnDlcpYCBQ==
X-Received: by 2002:a05:622a:1004:: with SMTP id
	d4mr10511589qte.95.1638990262816; 
	Wed, 08 Dec 2021 11:04:22 -0800 (PST)
Received: from ?IPV6:2603:6080:6302:e002:7991:cc1c:439:b8f5?
	(2603-6080-6302-e002-7991-cc1c-0439-b8f5.res6.spectrum.com.
	[2603:6080:6302:e002:7991:cc1c:439:b8f5])
	by smtp.gmail.com with ESMTPSA id
	v12sm1892907qkl.50.2021.12.08.11.04.22 for <blinux-list@redhat.com>
	(version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
	Wed, 08 Dec 2021 11:04:22 -0800 (PST)
Message-ID: <737bb29b-6c63-deba-9d54-43052c183b00@gmail.com>
Date: Wed, 8 Dec 2021 14:04:21 -0500
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
	Thunderbird/91.3.0
Subject: Re: Other lightweight WM?
To: Linux for blind general discussion <blinux-list@redhat.com>
References: <58c49814-4eb5-b4dc-85da-c6fb7d110d82@gmail.com>
	<CAO2sX30eL2BGnmLU2JqWS8epCwW+gTP2cG5nZ2YHM=0zJCXSkQ@mail.gmail.com>
	<e6a251f6-5a33-b88c-6bc4-b26dabcc4d9d@gmail.com>
	<CAO2sX32V3Qw88EgrBFWTTr7WaVkusPC6bfgYTqyfwk-jbw0ioQ@mail.gmail.com>
	<5235dc4b-a473-d903-4cf4-d849d8b1aab3@gmail.com>
	<2c3a935e-00dc-598c-062d-d478fd26b54f@gmail.com>
	<c4c57a82-3fa1-71f3-ac32-6d5dfdc02887@gmail.com>
In-Reply-To: <c4c57a82-3fa1-71f3-ac32-6d5dfdc02887@gmail.com>
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
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.12
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"

I think Brisk needs to be installed into a panel, which explains why it 
doesn't work in plain window managers. I think the advanced MATE menu 
also works the same way. It does appear to have an executable, but I 
can't get it to run unless its applet is on a panel. In fact, the 
executable only shows --help and --clean|--clear|--reset options. 
Nothing to display it without a panel.


I haven't yet found a menu application that speaks. Neither xde-menu nor 
dmenu nor jgmenu are speaking here. I think there were a couple of 
others that I tried, but I had to remove them all, as none are speaking.

~Kyle

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://listman.redhat.com/mailman/listinfo/blinux-list

