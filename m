Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [63.128.21.124])
	by mail.lfdr.de (Postfix) with ESMTP id 607E92A50AF
	for <lists+blinux-list@lfdr.de>; Tue,  3 Nov 2020 21:05:47 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1604433946;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=/EQOkJevv5dGRP3KbDoD0fAUl9hJDX2SjhDZIAoO9r4=;
	b=Dq7EQE7easHv+M3Rl0F2fgqNgH7PBlAwwX9xTHj4voVE0T86xgYnw71nYhUmTe/sEuAYhB
	SNP0/shUNrD9cHY4VwadM6p5XnqkV/J+bll9vR4E0mL941Kp5AHqv1cpzFyl961t+CsQ4E
	GeTGzdTm1r1i48r895Iqeq+P8v78aXA=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-428-_26tNofPMGyusJuISY8rdA-1; Tue, 03 Nov 2020 15:05:44 -0500
X-MC-Unique: _26tNofPMGyusJuISY8rdA-1
Received: from smtp.corp.redhat.com (int-mx06.intmail.prod.int.phx2.redhat.com [10.5.11.16])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 92C838049E7;
	Tue,  3 Nov 2020 20:05:40 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 77DC45C1D0;
	Tue,  3 Nov 2020 20:05:40 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id E13EB85CD;
	Tue,  3 Nov 2020 20:05:39 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx04.intmail.prod.int.rdu2.redhat.com
	[10.11.54.4])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 0A3K5bH6008054 for <blinux-list@listman.util.phx.redhat.com>;
	Tue, 3 Nov 2020 15:05:37 -0500
Received: by smtp.corp.redhat.com (Postfix)
	id 67E03205F387; Tue,  3 Nov 2020 20:05:37 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast06.extmail.prod.ext.rdu2.redhat.com [10.11.55.22])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 63126208BDD5
	for <blinux-list@redhat.com>; Tue,  3 Nov 2020 20:05:35 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-1.mimecast.com [205.139.110.61])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id EB9AB185A78B
	for <blinux-list@redhat.com>; Tue,  3 Nov 2020 20:05:34 +0000 (UTC)
Received: from mail-oi1-f169.google.com (mail-oi1-f169.google.com
	[209.85.167.169]) (Using TLS) by relay.mimecast.com with ESMTP id
	us-mta-160-CidkjkvsMEuVuv7XQcYEHw-1; Tue, 03 Nov 2020 15:05:32 -0500
X-MC-Unique: CidkjkvsMEuVuv7XQcYEHw-1
Received: by mail-oi1-f169.google.com with SMTP id m13so10596781oih.8
	for <blinux-list@redhat.com>; Tue, 03 Nov 2020 12:05:32 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:from:content-transfer-encoding:mime-version
	:subject:date:references:to:in-reply-to:message-id;
	bh=QFbqaG1kfaQ5T1G7UX47bazYgDYk/DQN/EdxbZgur30=;
	b=DnELDwxoyrw/a/cVCpAE5Ub9e2gGby813c+CMla0mvkAXXALULrYbisljzTeueocpP
	mfBdGjHNAXjxgkgrJBiIK8pmAasVkVjJEFdssqXLh98WH6uccKSjLLZ0Hx+dhMYDpt8Q
	+gPGaT8dC8l/83kHHH51gRYhbOV6l9g080B7xbkBniKVdY29S6vB/EDgLsRF3+H7G2Ue
	S8FxZr+ouEAIgCqcgUy53+LWfUOXRZBe9Us3/Fdx1Isqqe0R8i6F0a58cjTwJw2Z1iH8
	SRa5KVyYTcMSqW0iphp9Cp3Il693eCzrQiOPZ2xFDIOAUh8dbXl+bfcDyEzBcJwjPa2H
	UnKg==
X-Gm-Message-State: AOAM533yX5M0NOQq0qK2l2E1+fVq2RwzklYZD5Lzw7wn5KS20Xbhi+Kh
	/itJ5Gr7c/WFbi2BmPNOLjHUF0vQ+c5D1w==
X-Google-Smtp-Source: ABdhPJzJ4MID4UrdAtlpZRpqIF4L1/r6lGhXVkzAA200l6HAteabfzWM1prWPGISof86upacpwVz+g==
X-Received: by 2002:aca:383:: with SMTP id 125mr486377oid.171.1604433931553;
	Tue, 03 Nov 2020 12:05:31 -0800 (PST)
Received: from ?IPv6:2601:3c2:8200:9360:8c7f:b214:116c:ac94?
	([2601:3c2:8200:9360:8c7f:b214:116c:ac94])
	by smtp.gmail.com with ESMTPSA id
	x13sm4535635otg.66.2020.11.03.12.05.30 for <blinux-list@redhat.com>
	(version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
	Tue, 03 Nov 2020 12:05:30 -0800 (PST)
Mime-Version: 1.0 (Mac OS X Mail 11.5 \(3445.9.5\))
Subject: Re: arch linux and broadcom
Date: Tue, 3 Nov 2020 14:05:30 -0600
References: <00B86B11-5D22-4EAA-A7DC-FF8194FBD424@gmail.com>
	<cfc665bf-d6f8-3866-2ccb-94c3ee2a52db@gmail.com>
To: blinux-list@redhat.com
In-Reply-To: <cfc665bf-d6f8-3866-2ccb-94c3ee2a52db@gmail.com>
Message-Id: <81EA0C39-FAB8-4D0A-AE23-20128A853C36@gmail.com>
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection
	Definition; Similar Internal Domain=false;
	Similar Monitored External Domain=false;
	Custom External Domain=false; Mimecast External Domain=false;
	Newly Observed Domain=false; Internal User Name=false;
	Custom Display Name List=false; Reply-to Address Mismatch=false;
	Targeted Threat Dictionary=false;
	Mimecast Threat Dictionary=false; Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 2.78 on 10.11.54.4
X-MIME-Autoconverted: from quoted-printable to 8bit by
	lists01.pubmisc.prod.ext.phx2.redhat.com id 0A3K5bH6008054
X-loop: blinux-list@redhat.com
From: Linux for blind general discussion <blinux-list@redhat.com>
X-BeenThere: blinux-list@redhat.com
X-Mailman-Version: 2.1.12
Precedence: junk
Reply-To: blinux-list@redhat.com
List-Id: Linux for blind general discussion <blinux-list.redhat.com>
List-Unsubscribe: <https://www.redhat.com/mailman/options/blinux-list>,
	<mailto:blinux-list-request@redhat.com?subject=unsubscribe>
List-Archive: <https://www.redhat.com/archives/blinux-list>
List-Post: <mailto:blinux-list@redhat.com>
List-Help: <mailto:blinux-list-request@redhat.com?subject=help>
List-Subscribe: <https://www.redhat.com/mailman/listinfo/blinux-list>,
	<mailto:blinux-list-request@redhat.com?subject=subscribe>
Sender: blinux-list-bounces@redhat.com
Errors-To: blinux-list-bounces@redhat.com
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.16
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

TGlrZWx5IEkgd2lsbCBnbyByZWFkIHRoZSBob3cgdG8gYWdhaW4uCgo+IE9uIE5vdiAzLCAyMDIw
LCBhdCAyOjAyIFBNLCBMaW51eCBmb3IgYmxpbmQgZ2VuZXJhbCBkaXNjdXNzaW9uIDxibGludXgt
bGlzdEByZWRoYXQuY29tPiB3cm90ZToKPiAKPiBoZWxsbyBjYW4geW91IHByb3ZpZGUgbHMtcGNp
IG91dHB1dC4KPiBkaWQgeW91IGxvb2sgb24gdGhlIGFyY2h3aWtpPwo+IAo+IDAzLjExLjIwMjAg
MjI6NTMsIExpbnV4IGZvciBibGluZCBnZW5lcmFsIGRpc2N1c3Npb24g0L/QuNGI0LXRgjoKPj4g
SSBnb3QgYXJjaCBvbiBhIHVzYiBzdGljay4KPj4gQWZ0ZXIgYm9vdGluZyBhbmQgdXNpbmcgYXJy
b3cgZG93biwgdGhlbiBlbnRlciwgYXJjaCBjYW1lIHVwIHRhbGtpbmcuCj4+IEJ1dCBldmVuIHRo
b3VnaCB0aGVyZSBpcyBhbiBldGhlcm5ldCBjYWJsZSwgSSBjYW5ub3QgZ2V0IG9uIHRoZSBuZXQu
Cj4+IE5ldmVyIGlzIHRoaXMgYSBwcm9ibGVtIHdpdGggdWJ1bnR1IG9yIHBvcCBvcyBvciB3aXRo
IGZlZG9yYS4KPj4gQW55b25lIGF3YXJlIG9mIGEgd2F5IG9mIGdldHRpbmcgb24gdGhlIG5ldD8K
Pj4gSSBhbHNvIGhhdmUgYSB1IHMgYiB3aXJlbGVzcyB3aWZpIGFkYXB0b3IsIGJ1dCB3aXRoIGFy
Y2gsIG5vdCBzdXJlIHdoYXQgdG8gZG8uCj4+IAo+PiAKPj4gX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX18KPj4gQmxpbnV4LWxpc3QgbWFpbGluZyBsaXN0Cj4+
IEJsaW51eC1saXN0QHJlZGhhdC5jb20KPj4gaHR0cHM6Ly93d3cucmVkaGF0LmNvbS9tYWlsbWFu
L2xpc3RpbmZvL2JsaW51eC1saXN0Cj4+IAo+IC0tIAo+IFNpbmNlcmVseSwgQWxleGFuZGVyLgo+
IAo+IF9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCj4gQmxp
bnV4LWxpc3QgbWFpbGluZyBsaXN0Cj4gQmxpbnV4LWxpc3RAcmVkaGF0LmNvbQo+IGh0dHBzOi8v
d3d3LnJlZGhhdC5jb20vbWFpbG1hbi9saXN0aW5mby9ibGludXgtbGlzdAoKCl9fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkJsaW51eC1saXN0IG1haWxpbmcg
bGlzdApCbGludXgtbGlzdEByZWRoYXQuY29tCmh0dHBzOi8vd3d3LnJlZGhhdC5jb20vbWFpbG1h
bi9saXN0aW5mby9ibGludXgtbGlzdA==

