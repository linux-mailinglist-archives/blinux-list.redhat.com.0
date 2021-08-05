Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [216.205.24.124])
	by mail.lfdr.de (Postfix) with ESMTP id B73CE3E1DBB
	for <lists+blinux-list@lfdr.de>; Thu,  5 Aug 2021 23:11:35 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1628197894;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=canR9U7k9F7m9QEZFweH1ryx/MnBBauAmR2GmtORBTM=;
	b=GAfM4i84OU81/N6jxhiVLcaGG3LrXLTGgVOMjqmBf1oiheTUq22xCtF/IkLvXJDxyVBcK6
	AVKn8s0rF4pie2sN25fRl869/tq7cvNRMhpQGSs/F9orkPva/EsY/VICMfg1U0AF8lnvMu
	kNX8P0GPfjGTg7JESYrAqTySfZ2BToI=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-535-iSGAhqrHNfSwpPCCpVKiAw-1; Thu, 05 Aug 2021 17:11:33 -0400
X-MC-Unique: iSGAhqrHNfSwpPCCpVKiAw-1
Received: from smtp.corp.redhat.com (int-mx04.intmail.prod.int.phx2.redhat.com [10.5.11.14])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id E224A87504C;
	Thu,  5 Aug 2021 21:11:28 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 3FA165D9DD;
	Thu,  5 Aug 2021 21:11:28 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 36B024BB7C;
	Thu,  5 Aug 2021 21:11:27 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx03.intmail.prod.int.rdu2.redhat.com
	[10.11.54.3])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 175L8iTo030966 for <blinux-list@listman.util.phx.redhat.com>;
	Thu, 5 Aug 2021 17:08:44 -0400
Received: by smtp.corp.redhat.com (Postfix)
	id 23F6A10150DC; Thu,  5 Aug 2021 21:08:44 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast03.extmail.prod.ext.rdu2.redhat.com [10.11.55.19])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 1FB7D10BFD92
	for <blinux-list@redhat.com>; Thu,  5 Aug 2021 21:08:41 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com
	[205.139.110.120])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id AF0B48CA940
	for <blinux-list@redhat.com>; Thu,  5 Aug 2021 21:08:41 +0000 (UTC)
Received: from mail-qk1-f180.google.com (mail-qk1-f180.google.com
	[209.85.222.180]) (Using TLS) by relay.mimecast.com with ESMTP id
	us-mta-584-3WSqF763Ms-pn0tLAnhM3Q-1; Thu, 05 Aug 2021 17:08:39 -0400
X-MC-Unique: 3WSqF763Ms-pn0tLAnhM3Q-1
Received: by mail-qk1-f180.google.com with SMTP id a19so7773272qkg.2
	for <blinux-list@redhat.com>; Thu, 05 Aug 2021 14:08:39 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:subject:to:references:from:message-id:date
	:user-agent:mime-version:in-reply-to:content-transfer-encoding
	:content-language;
	bh=xSRr/WPZajt1ZpneoRr9UErslj8Vo/pk/XcJNgA9nto=;
	b=DXelpm5ZbFqwUArqe1aRcQVaI8xR4kQIXmxOhe8nRbobgFjR24dqHyvO7kueJm5nvv
	J3gSonGr5QjbyOd1qmDTCPqt9/7TNx9kcRkLj5O1Ov4jNDmQyXTs0gRJ7U101ZuVs5fD
	D0z1yIPyRzxwY4pvvpAaDK3I2XHx4+2+U7Oit0hPBbGgGMMmrEGu1Nps66/6BCSjh4Wk
	VKFd1eA8vI/uyo8vt4u5BcRPOH02PHo/YALsH7BaVGjBcIwfFMSh4v7QNG229f09gVu0
	B0FTGt2BOenupWrpHau39bU4Z9/NLuGije6mZJCeBaQxAuMEjtfEAcHPR6CcR4ZFdmII
	jKjA==
X-Gm-Message-State: AOAM532uPq33UjtvhPX5Hi+0/IIiNg6rQ+bl9R/BCgmVHYUOQsSn+2FG
	I4xNd0gChbWWdsBzJBIZuNvukGVkfEXIkw==
X-Google-Smtp-Source: ABdhPJyEKZmxtOkTAdGnPV21+J96578AIycChordAqK7cyGx8zRgy/EfnlTZQ04s1lY3eLt+rR2rzQ==
X-Received: by 2002:a37:491:: with SMTP id 139mr6977072qke.139.1628197718844; 
	Thu, 05 Aug 2021 14:08:38 -0700 (PDT)
Received: from thinkpad.example.slint ([2601:192:4c80:1420::cae5])
	by smtp.gmail.com with ESMTPSA id
	g11sm2607642qtk.91.2021.08.05.14.08.38 for <blinux-list@redhat.com>
	(version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
	Thu, 05 Aug 2021 14:08:38 -0700 (PDT)
Subject: Re: Solus DE observations
To: blinux-list@redhat.com
References: <3c0f9041-d6e9-5fb5-2e9c-a96dc59bd86c@gmail.com>
	<7b4a0e8e-f7b2-af91-975c-d3ca3a3cbdcf@gmail.com>
	<76FFA217-1F68-444A-8DB7-C465759CD123@gmail.com>
	<fd407fcb-4241-4fd6-49e8-bd25a69f3348@gmail.com>
	<DC07B063-C1B9-49B0-89BA-7F340746AB3D@gmail.com>
	<57bd933a-c517-2ec6-0f1e-716e4a81908b@gmail.com>
	<4020EC8C-BE9D-4ABC-A1B6-EFDCB9F261ED@gmail.com>
	<2a58e6d9-54c9-8d66-7433-aebc6fcf687c@gmail.com>
	<229F2558-87BD-4F2F-907D-218C2D542480@gmail.com>
	<09938f56-8ec8-a34b-65a3-9151aaab74b9@gmail.com>
	<EFCC025D-5C8B-4997-9BDC-D0243384A3D1@gmail.com>
	<alpine.NEB.2.23.451.2108041823280.8697@panix1.panix.com>
	<df6422c1-cf3e-2e3b-ffea-4afb43627a62@gmail.com>
	<229C49E8-4453-4759-A7DE-712BDD5AC3FD@gmail.com>
	<f1f450f1-b1ef-84d0-a4d1-c7515d21b8ef@gmail.com>
	<907EC549-F01A-4345-ABFE-67B06CF6949A@gmail.com>
	<6bc4e90a-ec7d-0d4d-596f-7bbe3811baa7@gmail.com>
	<7A65B8CB-0152-47EA-8FDA-7D532D7FC493@gmail.com>
Message-ID: <8a10903c-de36-a032-b85d-4ae6aa292b3e@gmail.com>
Date: Thu, 5 Aug 2021 17:08:37 -0400
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
	Thunderbird/78.12.0
MIME-Version: 1.0
In-Reply-To: <7A65B8CB-0152-47EA-8FDA-7D532D7FC493@gmail.com>
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
Content-Language: en-US
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"

RnJ1aWRlYW4gc2xpcD/CoCBMT0wuwqAgSSBkb24ndCBrbm93IGl0cyB0eXBpY2FsIHVwZGF0ZSBz
Y2hlZHVsZTsgVHJ5IHRoZSAKU29sdXMgaGVscCBjZW50ZXIsIG9yIHNvbWV0aGluZy4KCgoKLS1E
YXZlLS0KCgoKClNlbnQgZnJvbSBteSBMZW5vdm8gVGhpbmtwYWQsIHJ1bm5pbmcgU2xpbnQgR05V
L0xpbnV4LiAgaHR0cHM6Ly9zbGludC5mciBmb3IgaW5mbwoKT24gOC81LzIxIDM6MzggUE0sIExp
bnV4IGZvciBibGluZCBnZW5lcmFsIGRpc2N1c3Npb24gd3JvdGU6Cj4gICBJIGFtIHVzaW5nIGJ1
Z2d5IGRlc2t0b3AgYXQgdGhlIG1vbWVudC4KCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fCkJsaW51eC1saXN0IG1haWxpbmcgbGlzdApCbGludXgtbGlzdEBy
ZWRoYXQuY29tCmh0dHBzOi8vbGlzdG1hbi5yZWRoYXQuY29tL21haWxtYW4vbGlzdGluZm8vYmxp
bnV4LWxpc3Q=

