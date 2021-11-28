Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 8EF5D46090A
	for <lists+blinux-list@lfdr.de>; Sun, 28 Nov 2021 19:43:13 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1638124992;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=TfrbWrajc4Q1VYVanubV+82qfzxAHSoFgc74EC5OU4o=;
	b=dmVG34fprazY9jI1IIrc29odztkux3VovPE0BjFpDKDS5SO6KaCLzNhJnzF8oZyG3Ijx11
	nCqQWaY5jjayQ/RXtpk5wfAXrrjOO0U78s5EUbbQtz94oVPWLHBvfFZPX66eI5HsR/myVY
	lUKpN3MVmOHSuRBHq1IMIUCx32Onlbo=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-440-6b8L9vFhNa-bE3shWXrpVQ-1; Sun, 28 Nov 2021 13:43:08 -0500
X-MC-Unique: 6b8L9vFhNa-bE3shWXrpVQ-1
Received: from smtp.corp.redhat.com (int-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.12])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 1876A19253C0;
	Sun, 28 Nov 2021 18:43:04 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 326B060BF1;
	Sun, 28 Nov 2021 18:42:58 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 3E4B51809C87;
	Sun, 28 Nov 2021 18:42:38 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx03.intmail.prod.int.rdu2.redhat.com
	[10.11.54.3])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 1ASIgSgk013496 for <blinux-list@listman.util.phx.redhat.com>;
	Sun, 28 Nov 2021 13:42:28 -0500
Received: by smtp.corp.redhat.com (Postfix)
	id 5E2A21121319; Sun, 28 Nov 2021 18:42:28 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast05.extmail.prod.ext.rdu2.redhat.com [10.11.55.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 598481121315
	for <blinux-list@redhat.com>; Sun, 28 Nov 2021 18:42:25 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com
	[205.139.110.120])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 809D1801E6E
	for <blinux-list@redhat.com>; Sun, 28 Nov 2021 18:42:25 +0000 (UTC)
Received: from mail-qt1-f172.google.com (mail-qt1-f172.google.com
	[209.85.160.172]) by relay.mimecast.com with ESMTP with STARTTLS
	(version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
	us-mta-156-aftlkQslMNurhEY5xkxobg-1; Sun, 28 Nov 2021 13:42:23 -0500
X-MC-Unique: aftlkQslMNurhEY5xkxobg-1
Received: by mail-qt1-f172.google.com with SMTP id v22so14145826qtx.8
	for <blinux-list@redhat.com>; Sun, 28 Nov 2021 10:42:23 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20210112;
	h=x-gm-message-state:to:from:subject:message-id:date:user-agent
	:mime-version:content-transfer-encoding:content-language;
	bh=6o4x516Ol1k2aeTvlDim+XfsLRTMYKueB2uGzYEcDTQ=;
	b=sI86qOck2tQ7GBQtTkvrUYgj2fZ7ANg7DAlrtEsG5JWw2L4gfK45/X8ididFaBDTif
	Ntfy9MX2HVknXOcHR/yIEjvMB3ncHeH1PdZWgxM358PHqpiSJCWLlyYw305BrMCSr4n/
	js7H4Z0SmqaQmlPx0OdLbaFuQezZkaYZHPqGkqcQmF0S0zgWYc8gMerCQ5gNQUwg2JhF
	OXeDC6/d96WzFpePRMSamckP0hJHJloqpjiFtkFgkqeM8KOYfVsVQurgrwS+VyaBzHC8
	a7PkpBUtq0CqtQF7PW57ErhS00R5VabN12LTcvN5jf7BLgp8khNxn2xivYVFU9bd9N25
	dgQQ==
X-Gm-Message-State: AOAM532yAwuHwJWUDlVWYjM6lkvENKEH/5HennhYVFVNeFtNV4KE4vNN
	xY7arotzxnSBmrVYjAij7itauCYMVyJSFxJc
X-Google-Smtp-Source: ABdhPJx/DOwCIDgMgG3diQiOn0n3+kvKisxVVu2ZxqCcQ3C+b4rlqBy3PHTgXpBbvfOupZlxl0W9Fw==
X-Received: by 2002:a05:622a:5ca:: with SMTP id
	d10mr29092868qtb.603.1638124942904; 
	Sun, 28 Nov 2021 10:42:22 -0800 (PST)
Received: from darkstar.example.slint ([2601:152:4000:330::16])
	by smtp.gmail.com with ESMTPSA id
	k8sm6876691qko.130.2021.11.28.10.42.22 for <blinux-list@redhat.com>
	(version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
	Sun, 28 Nov 2021 10:42:22 -0800 (PST)
To: Linux for blind general discussion <blinux-list@redhat.com>
Subject: WEBM, is it the default option of yt-dlp downloads?
Message-ID: <8e070d49-f0ee-f2b8-9086-c38fbd232003@gmail.com>
Date: Sun, 28 Nov 2021 13:42:21 -0500
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
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.12
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Language: en-US
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"

SGVsbG8gZnJpZW5kcywKCkkgbm90aWNlZCB0aGF0IGFsbCBvZiBteSBkb3dubG9hZHMgZnJvbSB5
b3V0dWJlIGFuZCBmYWNlYm9vayB1c2luZyAKeXQtZGxwIGNvbWUgaW4gYSBXRUJNIGZvcm1hdC7C
oCBJcyBXRUJNIHRoZSBkZWZhdWx0IG9wdGlvbiBvZiB5dC1kbHAgb3IgCmlzIGl0IHRoZSBvbmx5
IG9wdGlvbj8KCkhvdyBjYW4gSSBjaGFuZ2UgdGhlIHNldHRpbmcgdG8gbWFrZSBzdXJlIHRoYXQg
bXkgZG93bmxvYWRzIG1haW50YWluIAp0aGVpciBvcmlnaW5hbCBmb3JtYXRzIHdpdGhvdXQgY2hh
bmdlcy4gSSB3YW50IG15IGRvd25sb2FkcyB0byBiZSBtcDMgaWYgCnRoZSBvcmlnaW5hbCBpcyBt
cDMsIG9yIG1wNCBpZiB0aGUgb3JpZ2luYWwgaXMgbXA0Li4uZXRjLiBJcyB0aGlzIHBvc3NpYmxl
PwoKQ2hlZXJzLAoKSWJyYWhpbQoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX18KQmxpbnV4LWxpc3QgbWFpbGluZyBsaXN0CkJsaW51eC1saXN0QHJlZGhhdC5j
b20KaHR0cHM6Ly9saXN0bWFuLnJlZGhhdC5jb20vbWFpbG1hbi9saXN0aW5mby9ibGludXgtbGlz
dA==

