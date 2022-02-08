Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.129.124])
	by mail.lfdr.de (Postfix) with ESMTPS id A89DD4AE4DC
	for <lists+blinux-list@lfdr.de>; Tue,  8 Feb 2022 23:44:34 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1644360273;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=6v3XCku+OE/DXxncFPuXyY/G0Cf4pfD0DxJ9bgF/TUk=;
	b=SKys4zT+DtSc4UFMA21hNoiAUh3Hq1PPWl8ViMojXqA6Xlg5/xq7xD7BMG7F5Pi74SZcSO
	7OevcWCLfdrxsDuaGzmpTVq/y67XXOMtvtP/M1u70IhnK5ii1HtvAmoQ7NJK7K5KEhQPcw
	MCtG64JgQ00/mh1K4XCKSXqmKUmVuZA=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-111-BdSTS7YXNBmuwJ5JRAEbOQ-1; Tue, 08 Feb 2022 17:44:29 -0500
X-MC-Unique: BdSTS7YXNBmuwJ5JRAEbOQ-1
Received: from smtp.corp.redhat.com (int-mx04.intmail.prod.int.phx2.redhat.com [10.5.11.14])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id CD7CF1926DA7;
	Tue,  8 Feb 2022 22:44:25 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id B6DE9519B3;
	Tue,  8 Feb 2022 22:44:25 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 94499473A0;
	Tue,  8 Feb 2022 22:44:25 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx03.intmail.prod.int.rdu2.redhat.com
	[10.11.54.3])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 218CE08N010783 for <blinux-list@listman.util.phx.redhat.com>;
	Tue, 8 Feb 2022 07:14:00 -0500
Received: by smtp.corp.redhat.com (Postfix)
	id E592F1121320; Tue,  8 Feb 2022 12:13:59 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast02.extmail.prod.ext.rdu2.redhat.com [10.11.55.18])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id E0F701121318
	for <blinux-list@redhat.com>; Tue,  8 Feb 2022 12:13:57 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com
	[205.139.110.120])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id EE140800B31
	for <blinux-list@redhat.com>; Tue,  8 Feb 2022 12:13:56 +0000 (UTC)
Received: from mail-wr1-f49.google.com (mail-wr1-f49.google.com
	[209.85.221.49]) by relay.mimecast.com with ESMTP with STARTTLS
	(version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
	us-mta-626-iZWQg19tObuV8roKd8LA4A-1; Tue, 08 Feb 2022 07:13:55 -0500
X-MC-Unique: iZWQg19tObuV8roKd8LA4A-1
Received: by mail-wr1-f49.google.com with SMTP id q7so2181677wrc.13
	for <blinux-list@redhat.com>; Tue, 08 Feb 2022 04:13:55 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20210112;
	h=x-gm-message-state:to:from:subject:message-id:date:user-agent
	:mime-version:content-transfer-encoding;
	bh=i6QnXpOmGoSWeRLi1sQlZKwAZ7jZw3O0jXQB3fAFmQo=;
	b=7pq/CJt3yahzGwDGukG4gjSaU7lHHbZB+fWwTOw7VZASDJ1NnUfYecKQ+MCoYpRN8F
	xLHxyCeLnzbLYTrhwAzw583xsCXIF3L/GprOgj+84X2Uas4YojnLeifMk8UC8R80eyMS
	gsQapNt6Bk1g1sdmucmgkm1ycJLKkpZK1JqZVaZyKHq+7+dJqLqS0dw4prMdcgR/vK+j
	NOXUWfZcsxb49R7sYlzZJRThXdO/l3Z6Q4prKjW+5iEnPWAy2WYG7Tt955KT6aJSSzsA
	eqygGtl1sMXH63nlD+pDfDZNfLxeBd6p5kAnConLkTwdHDoIvfUg41npChsXaujOB0vq
	3CmQ==
X-Gm-Message-State: AOAM532sHmPj2h+VakjhHYp4+UF66ZMGQXamiQcNhrmNA4V/8TzKq+lo
	HJ0cxUg5dLe2R49pN82fK2UaL428uJ8axg==
X-Google-Smtp-Source: ABdhPJxCOpMhTjp32+KBst24o2XyN7ANiuORCCW3qp20z0vVFj62V27aa2ZIu+fF/ykv6rLMEecXug==
X-Received: by 2002:adf:d1e2:: with SMTP id g2mr2516027wrd.69.1644322433723;
	Tue, 08 Feb 2022 04:13:53 -0800 (PST)
Received: from [192.168.1.130] ([87.74.163.68])
	by smtp.gmail.com with ESMTPSA id
	x7sm12426108wrt.77.2022.02.08.04.13.53 for <blinux-list@redhat.com>
	(version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
	Tue, 08 Feb 2022 04:13:53 -0800 (PST)
To: Linux for blind general discussion <blinux-list@redhat.com>
Subject: De-arrowing my system...how easy it is?
Message-ID: <7c4915b9-ca3a-9c1a-1132-b9896e94cbaa@gmail.com>
Date: Tue, 8 Feb 2022 12:14:06 +0000
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
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"

IMKgwqDCoCBTbywgdGhpcyBpcyBzb21ldGhpbmcgSSdtIHdvbmRlcmluZy4KCkdpdmVuIEknbSBv
biBteSBsYXB0b3AgY3VycmVudGx5LCBJJ20gd29uZGVyaW5nIGhvdyBlYXN5IGl0J2QgYmUgdG8g
CnNoaWZ0IHRoZSBhcnJvdyBrZXlzIGZ1bmN0aW9uIHRvLCBzYXksIGNvbnRyb2wrc2hpZnQgYW5k
IG1heWJlIHRoZSB2aW0gCmtleSBiaW5kaW5ncyBzbyBJIGRvbid0IGhhdmUgdG8gdGFrZSBteSBo
YW5kcyBlbnRpcmVseSBvZiB0aGUga2V5Ym9hcmQgCnRvIGRvIHRoaW5ncyB0aGF0IHRoZSBhcnJv
dyBrZXlzIGRvLCBsaWtlIG5lYXZpZ2F0aW5nIGEgd2ViIHBhZ2UsIApzZWxlY3RpbmcgdGV4dCwg
YW5kIHNvIG9uPwoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X18KQmxpbnV4LWxpc3QgbWFpbGluZyBsaXN0CkJsaW51eC1saXN0QHJlZGhhdC5jb20KaHR0cHM6
Ly9saXN0bWFuLnJlZGhhdC5jb20vbWFpbG1hbi9saXN0aW5mby9ibGludXgtbGlzdA==

