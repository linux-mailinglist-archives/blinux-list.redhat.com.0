Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.129.124])
	by mail.lfdr.de (Postfix) with ESMTPS id ADF674A3F1C
	for <lists+blinux-list@lfdr.de>; Mon, 31 Jan 2022 10:16:55 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1643620614;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=MnhsZAxq/WTgpIItS923x2HvoSRKXx0B2fcGXgOsPYo=;
	b=c1Hs5o0tT0zCsIFO4aIlClnsdacpDQRVuHy1MIj+DQbGhIdCJGVeIAXhe56GQT7XvOUyqx
	s+UrqnV5ODonNawPHDBLaqRuERKlF8ltzuHGv2jsc5ycIJmE2BFpeCDAjGUTdisfmiXE6l
	aO5xa+N5QtWRNQHg68ArFYWIkHg28sk=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-47-i6WD6dqWMqyPd2iwC9hAuQ-1; Mon, 31 Jan 2022 04:16:45 -0500
X-MC-Unique: i6WD6dqWMqyPd2iwC9hAuQ-1
Received: from smtp.corp.redhat.com (int-mx04.intmail.prod.int.phx2.redhat.com [10.5.11.14])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id C9F278144E4;
	Mon, 31 Jan 2022 09:16:39 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 2186360C4F;
	Mon, 31 Jan 2022 09:16:37 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 2665B4BB7C;
	Mon, 31 Jan 2022 09:16:20 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx01.intmail.prod.int.rdu2.redhat.com
	[10.11.54.1])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 20V9G9Va012774 for <blinux-list@listman.util.phx.redhat.com>;
	Mon, 31 Jan 2022 04:16:09 -0500
Received: by smtp.corp.redhat.com (Postfix)
	id 06C4840CFD18; Mon, 31 Jan 2022 09:16:09 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast04.extmail.prod.ext.rdu2.redhat.com [10.11.55.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 0295540CFD0F
	for <blinux-list@redhat.com>; Mon, 31 Jan 2022 09:16:08 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com
	[207.211.31.120])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id DD205108C0A0
	for <blinux-list@redhat.com>; Mon, 31 Jan 2022 09:16:08 +0000 (UTC)
Received: from mail-wr1-f43.google.com (mail-wr1-f43.google.com
	[209.85.221.43]) by relay.mimecast.com with ESMTP with STARTTLS
	(version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
	us-mta-383-eBpbxNksOfy_xApJ7e-JhQ-1; Mon, 31 Jan 2022 04:16:06 -0500
X-MC-Unique: eBpbxNksOfy_xApJ7e-JhQ-1
Received: by mail-wr1-f43.google.com with SMTP id e2so24097213wra.2
	for <blinux-list@redhat.com>; Mon, 31 Jan 2022 01:16:06 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20210112;
	h=x-gm-message-state:to:from:subject:message-id:date:user-agent
	:mime-version:content-transfer-encoding;
	bh=xB+RvdBlHuWAWjfuTAEfL/BIfeOedz2iDBO0hnRJBjA=;
	b=scxM6qDNYfeDTT63YaEOAfbwvIOV7BgQV5nMvrRsTTJbhxYzUk19Nqtob0Al9tT6ss
	Bwp96WhmZ204vSktRnt4HjBetufECSxQcNY/O+vadFfs6UAZcR/VUmFoSoUr0+br2Sx4
	5gU2F7co0pehQDu+9MckbfwIrDiRxOw5846jjyyKRjtGVSaV9BGd5FvqJBPHERSlv0Vk
	CpeRgDr6V5HwRKCku+kRFl/ohx/P4h5qlCYjZQQmduwaQZC9bazf85h46nzp/4yRkvOy
	4t9obOyscY64aTEFJVJCt1nKum1VxUYdqP0rJX1Z1C2sjXesAmJBbmiX4wFpeQbISD5L
	jHbw==
X-Gm-Message-State: AOAM532S86v1HQvYScpdzJnV2BYHmwsBd4QjVIZKrYR1zfjuE27JXwcO
	6OF1wnYD+nPsCHDj7IeoKXqNEnk74BYnzg==
X-Google-Smtp-Source: ABdhPJznyswIsIfDoVcPvQMNgwWoYodQfT5oCYF2IPTvE5ZXPSU3v/nPmEcO6I/a2HLCf34gY8t09Q==
X-Received: by 2002:adf:fb4a:: with SMTP id c10mr16078254wrs.243.1643620565344;
	Mon, 31 Jan 2022 01:16:05 -0800 (PST)
Received: from [192.168.1.130] ([87.74.163.68])
	by smtp.gmail.com with ESMTPSA id
	a14sm13511250wri.25.2022.01.31.01.16.04 for <blinux-list@redhat.com>
	(version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
	Mon, 31 Jan 2022 01:16:04 -0800 (PST)
To: Linux for blind general discussion <blinux-list@redhat.com>
Subject: Anyone have the Linux A11y wiki backed up?
Message-ID: <295e5d47-cdec-48c1-ae9b-73f13c80043f@gmail.com>
Date: Mon, 31 Jan 2022 09:16:16 +0000
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
	Firefox/68.0 SeaMonkey/2.53.10.2
MIME-Version: 1.0
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
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"

As it says...anyone have it or individual pages?

Wayback Machine hasn't archived it and it seems down, and also the sole 
source for things like Fenrir's manual

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://listman.redhat.com/mailman/listinfo/blinux-list

