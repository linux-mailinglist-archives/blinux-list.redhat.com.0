Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.129.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 391DC48F9CA
	for <lists+blinux-list@lfdr.de>; Sun, 16 Jan 2022 00:16:03 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1642288562;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=Mw2nZYwqkjffsiMI75xmeEh9sywzkgH7fzA3+KsIh4Q=;
	b=RlaA2vqOwOIlkVbyEX72Zv0TWJHuCBMqhA/QWwFbaxIwtQNshEnOSUIabdXILqOQ5yHLhs
	H0UpxozZ+/VKJX2LQbyYWXEOio3ddzMTGusRheRVK2ZvbMvQpqa59n6hAUYleiNdc1Y4HI
	nNzPi5WrcTsl9K/zBa1/yrb7VDWikdo=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-491-5zFfSLJ9MSGwdZL8pWk6-Q-1; Sat, 15 Jan 2022 18:15:58 -0500
X-MC-Unique: 5zFfSLJ9MSGwdZL8pWk6-Q-1
Received: from smtp.corp.redhat.com (int-mx07.intmail.prod.int.phx2.redhat.com [10.5.11.22])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 8DE8F1006AA4;
	Sat, 15 Jan 2022 23:15:54 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 8310E104A9F4;
	Sat, 15 Jan 2022 23:15:53 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id B64091809C87;
	Sat, 15 Jan 2022 23:15:50 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx09.intmail.prod.int.rdu2.redhat.com
	[10.11.54.9])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 20FNFgn8029870 for <blinux-list@listman.util.phx.redhat.com>;
	Sat, 15 Jan 2022 18:15:42 -0500
Received: by smtp.corp.redhat.com (Postfix)
	id 882A4492CA7; Sat, 15 Jan 2022 23:15:42 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast09.extmail.prod.ext.rdu2.redhat.com [10.11.55.25])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 8356C492CA5
	for <blinux-list@redhat.com>; Sat, 15 Jan 2022 23:15:42 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com
	[205.139.110.120])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 6930128F03B3
	for <blinux-list@redhat.com>; Sat, 15 Jan 2022 23:15:42 +0000 (UTC)
Received: from mail-oi1-f172.google.com (mail-oi1-f172.google.com
	[209.85.167.172]) by relay.mimecast.com with ESMTP with STARTTLS
	(version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
	us-mta-332-9z8K6y5sPMWYMf09Q4_Dxw-1; Sat, 15 Jan 2022 18:15:40 -0500
X-MC-Unique: 9z8K6y5sPMWYMf09Q4_Dxw-1
Received: by mail-oi1-f172.google.com with SMTP id i9so17894132oih.4
	for <blinux-list@redhat.com>; Sat, 15 Jan 2022 15:15:40 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20210112;
	h=x-gm-message-state:reply-to:to:from:subject:message-id:date
	:user-agent:mime-version:content-transfer-encoding:content-language;
	bh=+AaS5Fie5XddNdxEsubjlRIGfJDJg6V2XWbq3mZykRY=;
	b=3N7uK1XrrFHYDUlMVzmGScIBQmJl8rjCQg4Yt9i8yhGLdOjNlbxXBLUZ7o2nm8cXOK
	nLwQeG9JtTyASBIjV9o/uN+UHv+ErOJVXleSG6ToYJPf82g3nsTOOhTfOCxmMLna1tpx
	Xq7AZ5QKrn2dCdJPPcBn/uiVyfTHO5MtgTH4wtQ3bGL1kCyg4gVoV5YJwDOlu4k0NCoq
	eXXLrnEWntzZje8bAp7Knf4U/dfrxiUJk8/mwERqjypwgIqkKq7JQN3WIKfyDhwTXUTk
	AOf4oSAe4aAid4xFD3xCZWF07wOYTeXVFee+HF6NhpQkSje+kpbl8/9xKDsidHNKdRg+
	dhVQ==
X-Gm-Message-State: AOAM530qV85qUVDVM1QPNNq0i1UnlFRcw6jgmFxxCQvRKP2hXrMVWfsT
	BVkAbo9AlW4bHWA1tPAzSU8b01FRIQJsGA==
X-Google-Smtp-Source: ABdhPJzc4gKyCr+Ae+o9023oVC0NopGZDhNDktILIhPBFM3TZbBW3pE9Bvd6h+ng2n3OMED0EltFWA==
X-Received: by 2002:a05:6808:2097:: with SMTP id
	s23mr8164701oiw.132.1642288539818; 
	Sat, 15 Jan 2022 15:15:39 -0800 (PST)
Received: from ?IPv6:2600:1700:9434:2a00:a8e2:c16b:aa8f:3e9?
	([2600:1700:9434:2a00:a8e2:c16b:aa8f:3e9])
	by smtp.gmail.com with ESMTPSA id
	r30sm2854279ooi.33.2022.01.15.15.15.38 for <blinux-list@redhat.com>
	(version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
	Sat, 15 Jan 2022 15:15:38 -0800 (PST)
To: Linux for blind general discussion <blinux-list@redhat.com>
Subject: possability of linux install question
Message-ID: <7d95c4a2-beae-efc3-9998-792c3a9cbdef@gmail.com>
Date: Sat, 15 Jan 2022 17:15:37 -0600
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:78.0) Gecko/20100101
	Thunderbird/78.14.0
MIME-Version: 1.0
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection
	Definition; Similar Internal Domain=false;
	Similar Monitored External Domain=false;
	Custom External Domain=false; Mimecast External Domain=false;
	Newly Observed Domain=false; Internal User Name=false;
	Custom Display Name List=false; Reply-to Address Mismatch=false;
	Targeted Threat Dictionary=false;
	Mimecast Threat Dictionary=false; Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 2.85 on 10.11.54.9
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
X-Scanned-By: MIMEDefang 2.84 on 10.5.11.22
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Language: en-US
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"

SGVsbG8gYWxsLAoKSSd2ZSBiZWVuIHdhbnRpbmcgdG8gdHJ5IG91dCBsaW51eCBidXQgaGF2ZW4n
dCB3YW50ZWQgdG8gZ2l2ZSB1cCBvciBtZXNzIAp1cCBhbnkgb2YgbXkgd29ya2luZyB3aW5kb3dz
IHN5c3RlbXMuwqAgV291bGQgaXQgYmUgcG9zc2libGUgdG8gaW5zdGFsbCAKc29tZSB2ZXJzaW9u
IG9mIGxpbnV4IG9uIGEgQ0Qgb3IgYSBEVkQ7IHRoZW4ganVzdCBib290IGEgY29tcHV0ZXIgZnJv
bSAKdGhhdCBkaXNrIGJ5cGFzc2luZyB3aW5kb3dzIGFsdG9nZXRoZXI/wqAgSWYgc28sIEknZCBo
YXZlIHRvIG1ha2UgaXQgCmVpdGhlciB0YWxrIG9yIGRyaXZlIGEgQnJhaWxsZSBkaXNwbGF5LgoK
V29uZGVyIGlmIGFueW9uZSB3b3VsZCBoYXZlIGFueSBzdWdnZXN0aW9ucz/CoCBUaGFuayB5b3Uu
CgpIb3dhcmQKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
CkJsaW51eC1saXN0IG1haWxpbmcgbGlzdApCbGludXgtbGlzdEByZWRoYXQuY29tCmh0dHBzOi8v
bGlzdG1hbi5yZWRoYXQuY29tL21haWxtYW4vbGlzdGluZm8vYmxpbnV4LWxpc3Q=

