Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [216.205.24.124])
	by mail.lfdr.de (Postfix) with ESMTP id 1CEC1370277
	for <lists+blinux-list@lfdr.de>; Fri, 30 Apr 2021 22:53:53 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1619816032;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=fVp/O5/r8r0V8ZYlcDtJMO5fLlO8XdPSgfGlRIk4N7U=;
	b=O5t5urgg3Y1+Em5l2DuXkccaCVqxn0vCSn06aoiKdNzO/Ndn5A2+R5C8a1Semd1UIJe7b1
	llSAdAOueYnnkuRaP65Mjx+D/GHWNya+X8dqz4rPN6WnYbcNi+5NaEBse6GtMSSzjtN+Rg
	1b9rzwEGRdyiXRgDALWUprbAaVqEH/M=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-491-NPlfVM-zPjuEyp615NXR7w-1; Fri, 30 Apr 2021 16:53:50 -0400
X-MC-Unique: NPlfVM-zPjuEyp615NXR7w-1
Received: from smtp.corp.redhat.com (int-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.12])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id B5FABA40C0;
	Fri, 30 Apr 2021 20:53:45 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 17C0160C04;
	Fri, 30 Apr 2021 20:53:45 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 39F2B1800BB8;
	Fri, 30 Apr 2021 20:53:44 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx06.intmail.prod.int.rdu2.redhat.com
	[10.11.54.6])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 13UKrc69028205 for <blinux-list@listman.util.phx.redhat.com>;
	Fri, 30 Apr 2021 16:53:38 -0400
Received: by smtp.corp.redhat.com (Postfix)
	id 347682016675; Fri, 30 Apr 2021 20:53:38 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast04.extmail.prod.ext.rdu2.redhat.com [10.11.55.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 302F62016673
	for <blinux-list@redhat.com>; Fri, 30 Apr 2021 20:53:35 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com
	[205.139.110.120])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 52BC2101A54C
	for <blinux-list@redhat.com>; Fri, 30 Apr 2021 20:53:35 +0000 (UTC)
Received: from mail-oi1-f170.google.com (mail-oi1-f170.google.com
	[209.85.167.170]) (Using TLS) by relay.mimecast.com with ESMTP id
	us-mta-486-8Ptol5QgO1m031Jo3HTPqA-1; Fri, 30 Apr 2021 16:53:32 -0400
X-MC-Unique: 8Ptol5QgO1m031Jo3HTPqA-1
Received: by mail-oi1-f170.google.com with SMTP id l17so39955975oil.11
	for <blinux-list@redhat.com>; Fri, 30 Apr 2021 13:53:32 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:reply-to:subject:to:references:from:message-id
	:date:user-agent:mime-version:in-reply-to:content-transfer-encoding
	:content-language;
	bh=d2Q0sWIcvEGxhYqMVrLij9yv2/h1jt4ivoD71XVPbJo=;
	b=skNXqbSqE0ItJRr/h0AUUu3VKcCdYrCviZhHPAqUv4POkt37LSk1LR1WxFQc88dwOE
	WXE8D3Qd5vCIciojaMijaJTet407fdRGgIvGuQV9VycqzPWTMlXYv2my1+NnouuP+6hO
	UiyCGrCAAKePN5g7Lc1zgea1sDFCt/KJ0SYo2osbg9yy6db0kx3CbbDZkli7E9PyjgWn
	1iNeO5ApsY5XcltLGfzMI/LgmI7BOMtJZj4OtwFgl+imtJ7et5Y5922NPJx3L0le7+o+
	3KLxgWcK/AGM3un+Ctx4609ndTgBdfiiyPizCHoB/iWmZYnV1tkK7v0sh9O5pIEUy5S6
	rNWA==
X-Gm-Message-State: AOAM533xwxWawImoVuOIsXYzzQWE6k/Ui7y19sYIAhy2Qxvw4rBzC6VF
	WS8uqAf9CtHwmvOLyo8wa5Vjjmb5cG/Rpg==
X-Google-Smtp-Source: ABdhPJyS0dsFoMh5gKB1qWkdACIk652Dw72gUw63iaagLWBEawaxiR5jdupgkqCi6EA3F1/aCz+IAA==
X-Received: by 2002:a54:4492:: with SMTP id v18mr5379814oiv.7.1619816011786;
	Fri, 30 Apr 2021 13:53:31 -0700 (PDT)
Received: from ?IPv6:2600:1702:20f0:4420:512a:a0d3:7d4a:c958?
	([2600:1702:20f0:4420:512a:a0d3:7d4a:c958])
	by smtp.gmail.com with ESMTPSA id x36sm927111ott.66.2021.04.30.13.53.30
	for <blinux-list@redhat.com>
	(version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
	Fri, 30 Apr 2021 13:53:31 -0700 (PDT)
Subject: Re: Best Distro for Blind
To: Linux for blind general discussion <blinux-list@redhat.com>
References: <4a0283bb-6247-cba9-28b5-3562a4ebaf6b@gmail.com>
Message-ID: <83f266d2-b046-11a3-f738-3a537a26cc86@gmail.com>
Date: Fri, 30 Apr 2021 16:53:29 -0400
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:78.0) Gecko/20100101
	Thunderbird/78.10.0
MIME-Version: 1.0
In-Reply-To: <4a0283bb-6247-cba9-28b5-3562a4ebaf6b@gmail.com>
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
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.12
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Language: en-US
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"

TWF0dGhldwoKCgpBcmUgeW91IGxvb2tpbmcgZm9yIHNvbWV0aGluZyB3aXRoYSBHVUkgaW5zdGFs
bGVyPyBJZiBzbywgVWJ1bnR1IG1hdGUgCnNob3VsZCBiZSBnb29kLsKgIEFsc28sIEkgYW0gdXNp
bmcgZmVkb3JhIG1hdGUgc3BpbiBhbmQgaXMgdmVyeSAKYWNjZXNzaW5ibGUuwqAgVGhlcmUgaXMg
YWxzbyBhY2Nlc3NpYmxlIGFjY29jYW51dCB3aGljaCBpcyBiYXNlZCBvbiAKdWJ1bnR1IDIwLmpk
LsKgIEFsc28gaWYgeW91IHdhbnQgYSB0ZXh0IGluc3RhbGxlciwgc2xpbnQgaXMgYSB2ZXJ5IGdv
b2QgCmNob2ljZS7CoMKgIGFsc28gZGViaWFuIGlzIGFsc28gZ29vZC7CoCBTbywgYXMgeW91IGNh
biBzZWUgdGhlcmUgYXJlIGEgZmV3IApnb29kIGNob2ljZXMgYXZhbGlibGUuCgoKCkhpLAoKCgoK
T24gNC8zMC8yMDIxIDE6MjAgUE0sIExpbnV4IGZvciBibGluZCBnZW5lcmFsIGRpc2N1c3Npb24g
d3JvdGU6Cj4gSGVsbG8sCj4KPgo+IEkgYW0gYSB0b3RhbGx5IGJsaW5kIHBlcnNvbiBhbmQgYSBM
T05HIHRpbWUgV2luZG93cy9KYXdzL05WREEgdXNlci4gSSAKPiBhbSB3b25kZXJpbmcgd2hhdCB3
b3VsZCBiZSBhIHJlY29tbWVuZGF0aW9uIGZvciB0aGUgYmVzdCBkaXN0cm8vR1VJIAo+IGVudmly
b25tZW50IHRvIGJlZ2luIHVzaW5nP8KgIEkgd291bGQgbG92ZSB0byBiZSBhYmxlIHRvIG1vdmUg
YXdheSBmcm9tIAo+IFdpbmRvd3MgYW5kIHVzZSBMaW51eCBmdWxsIHRpbWUgZm9yIGJyb3dzaW5n
LCBlbWFpbCwgd29yZCBwcm9jZXNzaW5nIAo+IGFuZCBzcHJlYWRzaGVldHMuIEkgaGF2ZSBhIFRo
aW5rcGFkIFgyMjAgdGhhdCBJIGNhbiB1c2UgZm9yIExpbnV4LiAKPiBBYm91dCAxNSB5ZWFycyBh
Z28sIEkgcGxheWVkIGFyb3VuZCB3aXRoIFZlbnV4LCBidXQgdGhhdCBwcm9qZWN0IHNlZW1zIAo+
IHRvIGJlIGRvcm1hbnQgbm93LiBJIGhhdmUgYSBQaSAzQisgcnVubmluZyBzb21lIGhhbSByYWRp
byBzb2Z0d2FyZSBhbmQgCj4gSSBoYXZlIHRvIFNTSCBpbnRvIGl0IG9jY2FzaW9uYWxseSBhbmQg
cGVyZm9ybSBzb21lIGNvbW1hbmQgbGluZSAKPiBzdHVmZi4gRm9yIGRhaWx5IHVzYWdlLCBJIHdh
bnQgYSBmdWxsIEdVSSBlbnZpcm9ubWVudC4KPgo+Cj4gVGhhbmtzIGluIGFkdmFuY2UgZm9yIGFu
eSBzdWdnZXN0aW9ucy4KPgo+Cj4gSm9obgo+Cj4KPgo+IF9fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fCj4gQmxpbnV4LWxpc3QgbWFpbGluZyBsaXN0Cj4gQmxp
bnV4LWxpc3RAcmVkaGF0LmNvbQo+IGh0dHBzOi8vbGlzdG1hbi5yZWRoYXQuY29tL21haWxtYW4v
bGlzdGluZm8vYmxpbnV4LWxpc3QKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fCkJsaW51eC1saXN0IG1haWxpbmcgbGlzdApCbGludXgtbGlzdEByZWRoYXQu
Y29tCmh0dHBzOi8vbGlzdG1hbi5yZWRoYXQuY29tL21haWxtYW4vbGlzdGluZm8vYmxpbnV4LWxp
c3Q=

