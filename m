Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.129.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 81BEB4B8E8F
	for <lists+blinux-list@lfdr.de>; Wed, 16 Feb 2022 17:52:16 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1645030335;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=GrbgAGTW8cYrJL6JgWKy6VUyrprgodL8v3ZCZ3Yu5oI=;
	b=brOadx9X5zrQWSPIwGM+TkrZKHKoPTAHZ8p5qcQ3+qxnyVnpt/ESY2ALOgNs4qSU7H9zj3
	fnOfKGW/ovDf96OB2ctLCyz0IeJkVnMpY0c0xvKIX/lvnY9FmbXhO+ssHcaow84fM1BgBe
	3r1SHJtBmYH31MCqdpyzap0ZFbKI7r0=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-303-2MSJRGi9PNmVlMZX34oA2w-1; Wed, 16 Feb 2022 11:52:13 -0500
X-MC-Unique: 2MSJRGi9PNmVlMZX34oA2w-1
Received: from smtp.corp.redhat.com (int-mx05.intmail.prod.int.phx2.redhat.com [10.5.11.15])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 41B6D802924;
	Wed, 16 Feb 2022 16:52:09 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id F3A1E74EBE;
	Wed, 16 Feb 2022 16:52:04 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 4BB034CA93;
	Wed, 16 Feb 2022 16:51:54 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx08.intmail.prod.int.rdu2.redhat.com
	[10.11.54.8])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 21GGplaV028410 for <blinux-list@listman.util.phx.redhat.com>;
	Wed, 16 Feb 2022 11:51:47 -0500
Received: by smtp.corp.redhat.com (Postfix)
	id 165D9C080AF; Wed, 16 Feb 2022 16:51:47 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast09.extmail.prod.ext.rdu2.redhat.com [10.11.55.25])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 0FA43C15E73
	for <blinux-list@redhat.com>; Wed, 16 Feb 2022 16:51:46 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-2.mimecast.com [205.139.110.61])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id DAEB12A2AD54
	for <blinux-list@redhat.com>; Wed, 16 Feb 2022 16:51:42 +0000 (UTC)
Received: from mail-wr1-f46.google.com (mail-wr1-f46.google.com
	[209.85.221.46]) by relay.mimecast.com with ESMTP with STARTTLS
	(version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
	us-mta-658-nyqvWUoYPcua5w9k26uKEQ-1; Wed, 16 Feb 2022 11:51:37 -0500
X-MC-Unique: nyqvWUoYPcua5w9k26uKEQ-1
Received: by mail-wr1-f46.google.com with SMTP id v12so4521754wrv.2
	for <blinux-list@redhat.com>; Wed, 16 Feb 2022 08:51:37 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20210112;
	h=x-gm-message-state:to:from:subject:message-id:date:user-agent
	:mime-version:content-transfer-encoding;
	bh=G48uAOz5152a6TQv/H3zBrFG+BihqqHSRiF1wc7fGrU=;
	b=EGnVzefmUDtQSoU1LRL6vWHdoK3qrGZNTIzs42NjSpSOUwsE61YXg0jgEGFrcig0IG
	SeKgqTFvD60kNUPi4aUwYvkTOz8ilu9Tza1WGfykEtka7TlPh9NHCet8xX///uvgsvAI
	P825EZFfoZ41+HD1yw29s9Bc0/jjshMxHuJ4I9aj+TVXm3O0CeCNae2xJACqWYOk2BIv
	2VPQu/+pw8y32SlmP6T+CSVGCmqrRT3TpH4TeVxZ4XeWkuuVRn7ueRQ5XoMU6Wt/StA1
	1Io7Ezpd5XmHX8/GrGm28dyJFxtW9Oh7kqgd1WMlj2ud5KmnfQyGA+nd0gtovaWg/hft
	JkjA==
X-Gm-Message-State: AOAM53185qqrZWZ1riHgHjdYqUFSjW2DqZDog3wAp14dEmXthQF93VIg
	XYu+nrjW3d4QuaKUtWVnOZM/4nDrEG/TJA==
X-Google-Smtp-Source: ABdhPJx2Idy6h4jqXfmSXvHAS/VeQmST78kOTAt+7a0HknhS/BwRwgwl1RAZd7er6eiGMrcZ7N1nfQ==
X-Received: by 2002:a5d:4583:0:b0:1e3:4f7:8da0 with SMTP id
	p3-20020a5d4583000000b001e304f78da0mr2946368wrq.588.1645030296199;
	Wed, 16 Feb 2022 08:51:36 -0800 (PST)
Received: from [192.168.1.221] ([90.251.28.150])
	by smtp.gmail.com with ESMTPSA id
	l12sm32815954wrs.11.2022.02.16.08.51.35 for <blinux-list@redhat.com>
	(version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
	Wed, 16 Feb 2022 08:51:35 -0800 (PST)
To: Linux for blind general discussion <blinux-list@redhat.com>
Subject: Any luck with Vivaldi Mail?
Message-ID: <460470ce-e256-bb85-4e41-c1f38d9a0d41@gmail.com>
Date: Wed, 16 Feb 2022 16:51:34 +0000
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
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.15
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"

So Vivaldi now has a built in mail system a la Seamonkey
Anyone tried it and had any luck with it? Vivaldi's always a browser 
that's intrigued me so curious how useful the mail client they got built 
in is...

And aside from Seamonkey/Vivaldi, any other browsers with built in email 
that play nice with screenreaders?i

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://listman.redhat.com/mailman/listinfo/blinux-list

