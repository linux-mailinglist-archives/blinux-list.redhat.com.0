Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 8DFBE4A37E8
	for <lists+blinux-list@lfdr.de>; Sun, 30 Jan 2022 18:43:43 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1643564622;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=604GIY2fQ32DIqZA1oalwXuadBoE6pAAiMkxaqt5rYw=;
	b=P6tTbKWofYHJ+FCRtgLyeypbOjkyrX9g1OoLnAxMchBzGgRrcxO7FvJTxNL3DmhhBtl7v7
	UmMt5cSXy8xItly4r5OGdsiMF9s2J6ICVkLx9rukZOU1G0TMz21KYdoIBAucAJq1+HDBW6
	r3CABJj5ngz1/XTxhtXFL/wsCCT813M=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-556-emFva3WxMc6nQhAUIcqZBg-1; Sun, 30 Jan 2022 12:43:38 -0500
X-MC-Unique: emFva3WxMc6nQhAUIcqZBg-1
Received: from smtp.corp.redhat.com (int-mx03.intmail.prod.int.phx2.redhat.com [10.5.11.13])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 239801F2DA;
	Sun, 30 Jan 2022 17:43:34 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id CC2A984D1F;
	Sun, 30 Jan 2022 17:43:30 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 68E581809CB9;
	Sun, 30 Jan 2022 17:43:24 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx02.intmail.prod.int.rdu2.redhat.com
	[10.11.54.2])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 20UHhH9Z020545 for <blinux-list@listman.util.phx.redhat.com>;
	Sun, 30 Jan 2022 12:43:17 -0500
Received: by smtp.corp.redhat.com (Postfix)
	id F1A1240D1B9F; Sun, 30 Jan 2022 17:43:16 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast06.extmail.prod.ext.rdu2.redhat.com [10.11.55.22])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id ED9A540D1B9D
	for <blinux-list@redhat.com>; Sun, 30 Jan 2022 17:43:16 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com
	[207.211.31.120])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id BE199185A79C
	for <blinux-list@redhat.com>; Sun, 30 Jan 2022 17:43:16 +0000 (UTC)
Received: from mail-wm1-f44.google.com (mail-wm1-f44.google.com
	[209.85.128.44]) by relay.mimecast.com with ESMTP with STARTTLS
	(version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
	us-mta-31-r4UPpyWZP6qU0G57jgW9-g-1; Sun, 30 Jan 2022 12:43:14 -0500
X-MC-Unique: r4UPpyWZP6qU0G57jgW9-g-1
Received: by mail-wm1-f44.google.com with SMTP id
	d138-20020a1c1d90000000b0034e043aaac7so9509453wmd.5
	for <blinux-list@redhat.com>; Sun, 30 Jan 2022 09:43:14 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20210112;
	h=x-gm-message-state:message-id:date:mime-version:user-agent:to:from
	:subject:content-transfer-encoding;
	bh=XVfIGH57+uupqLbvkQg6wgOq/TjEXcItQKesYgF7d14=;
	b=XD9i2K34KZsfpv42o7eYi6rbC1b7/MVAgfsBsvCuN1TV6KKLYqcPgDUhJTeJgNUuw8
	iOJzc3jxC+0TWofnuCjlBP9Gr6OqJNYFL6L9ynPg0ZKHu+O4YA/ih1MtBDvhM+eSE3nA
	c0Eskp6QBGVaJbmCHejLq/zJlqOBGj25uSQPaaubLeXVIcB/eQrSgb2PffQkZ4VLUJKE
	8CsbZrAMt8CkkKkdD28709sUzwVkwEh6RM0o3NeblSyr22yBtaypBDuqUYYevu75d4ti
	2q3zZZuzMXsQ814lB7k0ZRtG76st2uGXNQRrKoELC9w+9fNyn6fdV0bk68m60fi2JmZA
	RjQA==
X-Gm-Message-State: AOAM531Nn0/axLmN6woT4oVZgkNV4zV13pQ9jXHMcpToRHEOQLjgW11x
	pu+wstcXoiDdy92aTdv0r22cNT/ZgmTeNw==
X-Google-Smtp-Source: ABdhPJyFldhey4QNxC/vgb7xzzSDiBRYArQkAATSA4Qu6ClmaGhLgCeep29EicSaq+2YIXieV2BstA==
X-Received: by 2002:a05:600c:2dd7:: with SMTP id
	e23mr15705545wmh.65.1643564593222; 
	Sun, 30 Jan 2022 09:43:13 -0800 (PST)
Received: from [192.168.1.2] ([78.80.191.29]) by smtp.gmail.com with ESMTPSA id
	j15sm7882149wmq.19.2022.01.30.09.43.12 for <blinux-list@redhat.com>
	(version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
	Sun, 30 Jan 2022 09:43:12 -0800 (PST)
Message-ID: <a755c608-c042-970f-493a-bcb1f70aa709@gmail.com>
Date: Sun, 30 Jan 2022 18:43:11 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:91.0) Gecko/20100101
	Thunderbird/91.5.1
To: blinux-list@redhat.com
Subject: Thunderbird -t command
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection
	Definition; Similar Internal Domain=false;
	Similar Monitored External Domain=false;
	Custom External Domain=false; Mimecast External Domain=false;
	Newly Observed Domain=false; Internal User Name=false;
	Custom Display Name List=false; Reply-to Address Mismatch=false;
	Targeted Threat Dictionary=false;
	Mimecast Threat Dictionary=false; Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 2.84 on 10.11.54.2
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
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.13
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"

Hi,

I lost an instruction email with how to move Thunderbird profiles, it 
was thunderbird -t and something. Can you help please?

Thanks,

Pavel


_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://listman.redhat.com/mailman/listinfo/blinux-list

