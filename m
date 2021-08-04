Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [216.205.24.124])
	by mail.lfdr.de (Postfix) with ESMTP id D0A863E0A3F
	for <lists+blinux-list@lfdr.de>; Thu,  5 Aug 2021 00:10:12 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1628115011;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=edOJhFPuvUMWmovF2DSjpzQbgcUAlDGNPAR9pNxJtq8=;
	b=QJIJpAET6dSjgiFRXVbMV7rFycAUhY62WGjDwUcvfuPfSEDMTdrCQ4Dz9cni65RHVUygpy
	SD9STtVFBHJfqAbA5Npwz9/xHoSmco3gD6pOuZpCvwfnHXNEAR7G48GIiKzNWfP31GFsI7
	/+qGkSqyakXiof7qz5fwwEdxtU+ach0=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-193-2ZutGAc0P9G2Nd1mWQ8UXA-1; Wed, 04 Aug 2021 18:10:10 -0400
X-MC-Unique: 2ZutGAc0P9G2Nd1mWQ8UXA-1
Received: from smtp.corp.redhat.com (int-mx07.intmail.prod.int.phx2.redhat.com [10.5.11.22])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 39117363A5;
	Wed,  4 Aug 2021 22:10:06 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id B5DB81057F5C;
	Wed,  4 Aug 2021 22:10:04 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id E39064BB7C;
	Wed,  4 Aug 2021 22:10:02 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx06.intmail.prod.int.rdu2.redhat.com
	[10.11.54.6])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 174M3fcj008090 for <blinux-list@listman.util.phx.redhat.com>;
	Wed, 4 Aug 2021 18:03:41 -0400
Received: by smtp.corp.redhat.com (Postfix)
	id 174E2215CDCF; Wed,  4 Aug 2021 22:03:41 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast05.extmail.prod.ext.rdu2.redhat.com [10.11.55.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 12D8F216239D
	for <blinux-list@redhat.com>; Wed,  4 Aug 2021 22:03:36 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com
	[207.211.31.120])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id D5161801E80
	for <blinux-list@redhat.com>; Wed,  4 Aug 2021 22:03:36 +0000 (UTC)
Received: from mail-qt1-f171.google.com (mail-qt1-f171.google.com
	[209.85.160.171]) (Using TLS) by relay.mimecast.com with ESMTP id
	us-mta-213-vlw02AeBOVWR_FplfLr68Q-1; Wed, 04 Aug 2021 18:03:35 -0400
X-MC-Unique: vlw02AeBOVWR_FplfLr68Q-1
Received: by mail-qt1-f171.google.com with SMTP id h27so2459337qtu.9
	for <blinux-list@redhat.com>; Wed, 04 Aug 2021 15:03:35 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:subject:to:references:from:message-id:date
	:user-agent:mime-version:in-reply-to:content-transfer-encoding
	:content-language;
	bh=2ZP+c7AyxDSNzHBctI7odO5DDVjDmV2RVd5IrnlfyAY=;
	b=atjNq5rRu/17Ma9UfUpasr/TNV/M+TxetQYKOWIaJ3qAzhwxmkaxWVBRjUSJBcVsfI
	v0Cpr+94cL0ctwPUWsbnwegopk207/yiPgzOtNnRx/BwKoILhZ7niyMa3h7w3cyBgDzU
	tRePbD4cLzI7BvXDNWrjBQXcvcDnhU1uKkCE7DyXGihTv/ZjTS7Pt3aouS/pDpFb1Fua
	1He/8SHQHopWo2WORWg3kwbjLvoegM9cjqe8qqHaIfBY4ftIUOmSjAgJZ9WlZxZVA05+
	hJWXF4W/+FMIhpQkaChMt9TnH4OwJddD+IvNZP8kqKnJtNFogpEzwt/i7t5KsR3/Bm3e
	jEyw==
X-Gm-Message-State: AOAM531Kf6ThQ9Zj40SlIT40r6Ebj1Xj74kTOBNripwBOvfydj1j3O07
	953WQ3Kk4WIZu2oJVWVD2CW0mNXI9ZFnmw==
X-Google-Smtp-Source: ABdhPJzXYgDl7DPX+mu9yMngku1fvrXTHtybbJcpKag+OpsiqZBYzeNDmMt0VQ7phT8J0Hcy6eOAKA==
X-Received: by 2002:ac8:7f01:: with SMTP id f1mr1634954qtk.362.1628114614379; 
	Wed, 04 Aug 2021 15:03:34 -0700 (PDT)
Received: from thinkpad.example.slint ([2601:192:4c80:1420::cae5])
	by smtp.gmail.com with ESMTPSA id y9sm1402004qtw.51.2021.08.04.15.03.33
	for <blinux-list@redhat.com>
	(version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
	Wed, 04 Aug 2021 15:03:33 -0700 (PDT)
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
	<507fd0d3-4aa0-dabf-c080-90bb0775dfa5@gmail.com>
	<924A2902-6BA1-4033-94AC-B8A5B1AA40BE@gmail.com>
Message-ID: <8fc3ab17-efb7-9d38-98da-bb62da6f990c@gmail.com>
Date: Wed, 4 Aug 2021 18:03:32 -0400
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
	Thunderbird/78.12.0
MIME-Version: 1.0
In-Reply-To: <924A2902-6BA1-4033-94AC-B8A5B1AA40BE@gmail.com>
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
X-Scanned-By: MIMEDefang 2.84 on 10.5.11.22
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Language: en-US
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"

J2N0cmwrYWx0K3RhYicgc2VlbXMgdG8gY3ljbGUgYmV0d2VlbiB0aGUgZGVza3RvcCBhbmQgYSBi
dW5jaCBvZiAKbGF1bmNoZXJzOyBvcmNhIHNlZXMgdGhlbSBhcyB0b2dnbGUgYnV0dG9ucy7CoCBJ
IHRoaW5rLCB3aGVuIG9uZSBvZiB0aGVzZSAKYnV0dG9ucyBpcyBhbm5vdW5jZWQgYXMgJ3ByZXNz
ZWQnLCB0aGUgcHJvZ3JhbSBpcyBhbHJlYWR5IHJ1bm5pbmc/wqAgCkd1ZXNzIEkgc2hvdWxkIHB1
dCBCdWRnaWUgb24gdGhlIFNvbHVzIG1hY2hpbmUgYW5kIHBsYXkgbW9yZS4KCgpDaGVlcnMsCgoK
RGF2ZcKgIEguCgoKClNlbnQgZnJvbSBteSBMZW5vdm8gVGhpbmtwYWQsIHJ1bm5pbmcgU2xpbnQg
R05VL0xpbnV4LiAgaHR0cHM6Ly9zbGludC5mciBmb3IgaW5mbwoKT24gOC80LzIxIDU6MzEgUE0s
IExpbnV4IGZvciBibGluZCBnZW5lcmFsIGRpc2N1c3Npb24gd3JvdGU6Cj4gSSB0cmllZCBidWRn
aWUsIGJ1dCBndWVzcyBJIHNob3VsZCBsb29rIGZvciBhIGd1aWRlIGZvciBrZXlib2FyZCBjb21t
YW5kcyBhcyB0byBob3cgdG8gZ2V0IHRvIHByb2dyYW1zLCBhbmQgaG93IHRvIGdldCB0byBkaWZm
ZXJlbnQgZHJpdmVzLgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX18KQmxpbnV4LWxpc3QgbWFpbGluZyBsaXN0CkJsaW51eC1saXN0QHJlZGhhdC5jb20KaHR0
cHM6Ly9saXN0bWFuLnJlZGhhdC5jb20vbWFpbG1hbi9saXN0aW5mby9ibGludXgtbGlzdA==

