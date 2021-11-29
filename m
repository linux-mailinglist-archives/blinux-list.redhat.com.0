Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.129.124])
	by mail.lfdr.de (Postfix) with ESMTPS id C06BF46207A
	for <lists+blinux-list@lfdr.de>; Mon, 29 Nov 2021 20:29:23 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1638214162;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=4be/pB8p/fvAG64qhTGbHuBAQPabQhscY6bFJkMj0RY=;
	b=Ss6bGxWts6vCHxbsMG6yLBvqJTMJcaffRtK7qjWI05QHLsw9aOR7DzNhR6yLVOuPtTpgso
	3HTsH0KvvaKLoCcICdoeoZhbmwGIhWdCmxuNA9H/XBanU9HGj+DU6wbWY4cm8Mzsfaficl
	8MURcSbORaVX72dud01yqnvDXC2TbjA=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-391-ASHemuaEOXCZUW8fKibIRA-1; Mon, 29 Nov 2021 14:29:21 -0500
X-MC-Unique: ASHemuaEOXCZUW8fKibIRA-1
Received: from smtp.corp.redhat.com (int-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.12])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 05EF292500;
	Mon, 29 Nov 2021 19:29:17 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 90B5160BF1;
	Mon, 29 Nov 2021 19:29:15 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 497514BB7C;
	Mon, 29 Nov 2021 19:29:09 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx05.intmail.prod.int.rdu2.redhat.com
	[10.11.54.5])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 1ATJT36O030854 for <blinux-list@listman.util.phx.redhat.com>;
	Mon, 29 Nov 2021 14:29:04 -0500
Received: by smtp.corp.redhat.com (Postfix)
	id BCDB851E1; Mon, 29 Nov 2021 19:29:03 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast05.extmail.prod.ext.rdu2.redhat.com [10.11.55.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id B7D7051DC
	for <blinux-list@redhat.com>; Mon, 29 Nov 2021 19:29:00 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-1.mimecast.com [205.139.110.61])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id C1AE1805C2F
	for <blinux-list@redhat.com>; Mon, 29 Nov 2021 19:29:00 +0000 (UTC)
Received: from mail-qv1-f44.google.com (mail-qv1-f44.google.com
	[209.85.219.44]) by relay.mimecast.com with ESMTP with STARTTLS
	(version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
	us-mta-372-Xoa1nMhZMG-YwDyhEMS3pQ-1; Mon, 29 Nov 2021 14:28:59 -0500
X-MC-Unique: Xoa1nMhZMG-YwDyhEMS3pQ-1
Received: by mail-qv1-f44.google.com with SMTP id g9so13689660qvd.2
	for <blinux-list@redhat.com>; Mon, 29 Nov 2021 11:28:58 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20210112;
	h=x-gm-message-state:to:from:subject:message-id:date:user-agent
	:mime-version:content-transfer-encoding:content-language;
	bh=eviOHY7d09nP3wmXdvLstqvbL4wo/dbrFeMKFYpKoRI=;
	b=EDdsQP7ytjtEuhcPRaxOOixG6Fq/8wPC0dkiKonHQM14imc2ZtVlnsScVjuiog5kRa
	lC/fuX5BXsUhcaZINKINfUm6/T2w5FkoJqUi/+jSe2vQ5RKMcYrqlaNvU6ILyRl55Ttp
	iu9dIBWVFXsPeOkzJpcvAd7QufCO6FQC34wDWuR0oNV2eEv4oUZ+8IGLN1H0cZFdUuwK
	i0WtfwSzlRM+ZjvdwP/OAsfZW4/pR1Lgm1v808x5ZLF213JgqsYQ2o29FcebbHB76T2U
	7caw1MuiGRivc6YJVitOrwWCZo/Zc9ecWYPQ6vfa8vu6wewWBHKjKzAqKN16Ha8CSxxI
	f48Q==
X-Gm-Message-State: AOAM530m+LiPUZsjnZkGE16YLHBW1DEyLsSL9UuGcDSPmsXMZFm7/9Kr
	SwLqbmJg9UpM+Ql3A4H4hCrxmHFH4f6dcWX0
X-Google-Smtp-Source: ABdhPJw2cvF84YtjLSmq8fij0PDiLR8SCvdJ16uxs+0uKbAQ9PvBE+lSs9/sY9T98VHiudFLWfQJTw==
X-Received: by 2002:a05:6214:c42:: with SMTP id
	r2mr33713836qvj.69.1638214138165; 
	Mon, 29 Nov 2021 11:28:58 -0800 (PST)
Received: from darkstar.example.slint ([2601:152:4000:330:6a07:15ff:fe1b:961c])
	by smtp.gmail.com with ESMTPSA id
	j20sm9506819qtj.43.2021.11.29.11.28.57 for <blinux-list@redhat.com>
	(version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
	Mon, 29 Nov 2021 11:28:57 -0800 (PST)
To: Linux for blind general discussion <blinux-list@redhat.com>
Subject: What is the easiest and most accessible editor?
Message-ID: <a3ea6f04-d8a4-2ef4-35cc-8e91d7582ab8@gmail.com>
Date: Mon, 29 Nov 2021 14:28:56 -0500
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
	Thunderbird/68.12.0
MIME-Version: 1.0
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection
	Definition; Similar Internal Domain=false;
	Similar Monitored External Domain=false;
	Custom External Domain=false; Mimecast External Domain=false;
	Newly Observed Domain=false; Internal User Name=false;
	Custom Display Name List=false; Reply-to Address Mismatch=false;
	Targeted Threat Dictionary=false;
	Mimecast Threat Dictionary=false; Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 2.79 on 10.11.54.5
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

Hi Friends,

Since you have been lately discussing configurations and editing them, 
changing them, or adding scripts, What is the most accessible and 
easiest editor to use in Slint for editing configurations? My 
understanding is that Vi, Nano, and Pico all come preinstalled. Are 
there other text editors preinstalled? or, Do you recommend one that I 
can install if the abovementioned ones are not recommended?

Cheers,

Ibrahim

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://listman.redhat.com/mailman/listinfo/blinux-list

