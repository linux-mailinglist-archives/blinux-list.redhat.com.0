Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 30E544A2C28
	for <lists+blinux-list@lfdr.de>; Sat, 29 Jan 2022 07:37:09 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1643438228;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=8pgoU+LzMr4ulhKzCLItwc1Ckyrn+P6vQ8Gx8+u2P1w=;
	b=HfkzUh0SPbsq6pUGYHbKjUdWizN69VeTSkh9MYSiTkIGeEU2GtTrR1ADsOsWdzfY4L0ZR3
	9m/n3B7NhJRr9kLXACZBEgn/EP34CaxyeiVldurEoiHBfXgNiz/FSIcO/TW9msv5Ngg1R0
	mE6uz0EDouTfjYaKLPYrkPcKT/L1rIk=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-314-bCZ9XpXmNKO2lUOZ3cgIQg-1; Sat, 29 Jan 2022 01:37:04 -0500
X-MC-Unique: bCZ9XpXmNKO2lUOZ3cgIQg-1
Received: from smtp.corp.redhat.com (int-mx05.intmail.prod.int.phx2.redhat.com [10.5.11.15])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 84AA2814246;
	Sat, 29 Jan 2022 06:37:00 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id D5B414EC62;
	Sat, 29 Jan 2022 06:36:57 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id E7ACD1809CB9;
	Sat, 29 Jan 2022 06:36:51 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx06.intmail.prod.int.rdu2.redhat.com
	[10.11.54.6])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 20T6ahwn021451 for <blinux-list@listman.util.phx.redhat.com>;
	Sat, 29 Jan 2022 01:36:44 -0500
Received: by smtp.corp.redhat.com (Postfix)
	id CA0CF2166B44; Sat, 29 Jan 2022 06:36:43 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast10.extmail.prod.ext.rdu2.redhat.com [10.11.55.26])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id C5B7A2166B2F
	for <blinux-list@redhat.com>; Sat, 29 Jan 2022 06:36:40 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com
	[207.211.31.120])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id EBF951C0135B
	for <blinux-list@redhat.com>; Sat, 29 Jan 2022 06:36:39 +0000 (UTC)
Received: from mail-pg1-f179.google.com (mail-pg1-f179.google.com
	[209.85.215.179]) by relay.mimecast.com with ESMTP with STARTTLS
	(version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
	us-mta-653-p5BqDlT2Pn2sB5kdtdZulg-1; Sat, 29 Jan 2022 01:36:37 -0500
X-MC-Unique: p5BqDlT2Pn2sB5kdtdZulg-1
Received: by mail-pg1-f179.google.com with SMTP id 133so7239907pgb.0
	for <blinux-list@redhat.com>; Fri, 28 Jan 2022 22:36:37 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20210112;
	h=x-gm-message-state:message-id:date:mime-version:user-agent:to
	:content-language:from:subject:content-transfer-encoding;
	bh=H2UdDqQs7fO3V+5dojR90+7RkwsCNCay2c5JoDUHWbQ=;
	b=xux1ZyO40t4TU7Tn5Rx7Jxwz47tvgfe6dCSRJ02tfeDD8f2d1uEj+lx2R0OsB6AqI0
	J6nVmHJEm9NWObQ0AsYrM+2Z6F38JFVuxNuLL7QOFsYAL5nhnVPvj1qEWNKFSfd3T0o1
	ltiS6ut7SJtuiYtWDhR/H7C8IuAPskXRWlnb4L5GwpuFTsLsPp9ei+QrJL6yDsCsQUGc
	aeOmMovYTZQGuqM2SdTSezfySr9DEXxCbwYNHdaFVMD22LlknnWiGxbgfVTQd+4uw/TS
	AefAF4iJeeKjkOZy33+KB4/yHmtWBU9tRfbsMwGXvdQRQ66FQrxuCohyw/Ee6LFq2dIx
	fnvg==
X-Gm-Message-State: AOAM5301Uao5Hm85XJsVU3976mWJPBEAWpIKCgw2X25HIub+ZqlUn/xn
	vZZJ9CImSxJuyuqzmchRacjxSoq5p+EK7w==
X-Google-Smtp-Source: ABdhPJykcwt8x3TAJIVcEoVt8yZxElECTaflg1jHPTTveVbaSVlY7CY44WVH1G8NbSgYVLP32uuTMA==
X-Received: by 2002:aa7:928a:: with SMTP id j10mr11414376pfa.36.1643438195781; 
	Fri, 28 Jan 2022 22:36:35 -0800 (PST)
Received: from [192.168.2.243] (bb115-66-42-206.singnet.com.sg.
	[115.66.42.206]) by smtp.gmail.com with ESMTPSA id
	c26sm22335361pgb.53.2022.01.28.22.36.34 for <blinux-list@redhat.com>
	(version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
	Fri, 28 Jan 2022 22:36:35 -0800 (PST)
Message-ID: <d42db8eb-ee15-5d82-6965-8f7430cb8fb6@gmail.com>
Date: Sat, 29 Jan 2022 14:36:34 +0800
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:91.0) Gecko/20100101
	Thunderbird/91.5.1
To: blinux-list@redhat.com
Subject: Accessibility of out of band management interfaces for servers,
	Proxmox or TrueNas Scale?
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
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.15
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"

Hey everyone,

I've been thinking of building a server for virtualization and to serve 
as a NAS at home. I'm wondering if anyone else has had experience with 
any of the following?

1. I'm thinking of using either TrueNas Scale or Proxmox as the base OS. 
Does anyone know how accessible their web UIs are with a screen 
reader?would
2. One advantage of server-grade hardware is the ability to manage it 
remotely via management software like iLo by HP and iDRAC by Dell. Does 
anyone know if those options are accessible at all?

Thanks

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://listman.redhat.com/mailman/listinfo/blinux-list

